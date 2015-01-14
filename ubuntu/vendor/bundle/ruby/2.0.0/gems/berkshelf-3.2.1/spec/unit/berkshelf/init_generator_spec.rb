require 'spec_helper'

describe Berkshelf::InitGenerator do
  let(:target) { tmp_path.join("some_cookbook") }
  let(:resolver) { double('resolver') }
  let(:kitchen_generator) { double('kitchen-generator', invoke_all: nil) }

  before do
    allow(Kitchen::Generator::Init).to receive(:new).with(any_args()).and_return(kitchen_generator)
    FileUtils.mkdir_p(target)
    File.open(File.join(target, 'metadata.rb'), 'w') do |f|
      f.write("name 'some_cookbook'")
    end
  end

  context 'with default options' do
    before do
      capture(:stdout) {
        Berkshelf::InitGenerator.new([target]).invoke_all
      }
    end

    specify do
      expect(target).to have_structure {
        file '.gitignore'
        file 'Berksfile'
        file 'Gemfile' do
          contains %(gem 'berkshelf')
        end
        file 'Vagrantfile' do
          contains %(recipe[some_cookbook::default])
          contains %(config.omnibus.chef_version = 'latest')
          contains %(config.vm.box = 'chef/ubuntu-14.04')
        end
        file 'chefignore'
      }
    end
  end

  context 'with a chefignore' do
    before(:each) do
      capture(:stdout) {
        Berkshelf::InitGenerator.new([target], chefignore: true).invoke_all
      }
    end

    specify do
      expect(target).to have_structure {
        file 'Berksfile'
        file 'chefignore'
      }
    end
  end

  context 'with no metadata' do
    before do
      FileUtils.rm(File.join(target, 'metadata.rb'))
      expect {
        Berkshelf::InitGenerator.new([target]).invoke_all
        }.to raise_error(Berkshelf::NotACookbook)
    end
  end

  context 'with a metadata entry in the Berksfile' do
    before(:each) do
      capture(:stdout) {
        Berkshelf::InitGenerator.new([target], metadata_entry: true).invoke_all
      }
    end

    specify do
      expect(target).to have_structure {
        file 'Berksfile' do
          contains 'metadata'
        end
      }
    end
  end

  context 'with the foodcritic option true' do
    before(:each) do
      capture(:stdout) {
        Berkshelf::InitGenerator.new([target], foodcritic: true).invoke_all
      }
    end

    specify do
      expect(target).to have_structure {
        file 'Thorfile' do
          contains "require 'thor/foodcritic'"
        end
        file 'Gemfile' do
          contains "gem 'thor-foodcritic'"
        end
      }
    end
  end

  context 'with the scmversion option true' do
    before(:each) do
      capture(:stdout) {
        Berkshelf::InitGenerator.new([target], scmversion: true).invoke_all
      }
    end

    specify do
      expect(target).to have_structure {
        file 'Thorfile' do
          contains "require 'thor/scmversion'"
        end
        file 'Gemfile' do
          contains "gem 'thor-scmversion'"
        end
      }
    end
  end

  context 'with the bundler option true' do
    before(:each) do
      capture(:stdout) {
        Berkshelf::InitGenerator.new([target], no_bundler: true).invoke_all
      }
    end

    specify do
      expect(target).to have_structure {
        no_file 'Gemfile'
      }
    end
  end

  context 'given a value for the cookbook_name option' do
    it 'sets the value of cookbook_name attribute to the specified option' do
      generator = Berkshelf::InitGenerator.new([target], cookbook_name: 'nautilus')
      cookbook = generator.send(:cookbook_name)

      expect(cookbook).to eq('nautilus')
    end
  end

  context 'when no value for cookbook_name option is specified' do
    it 'infers the name of the cookbook from the directory name' do
      generator = Berkshelf::InitGenerator.new([target])
      cookbook = generator.send(:cookbook_name)

      expect(cookbook).to eq('some_cookbook')
    end
  end

  context 'when skipping git' do
    before(:each) do
      generator = Berkshelf::InitGenerator.new([target], skip_git: true)
      capture(:stdout) { generator.invoke_all }
    end

    it 'does not have a .git directory' do
      expect(target).to_not have_structure {
        directory '.git'
      }
    end
  end

  context 'when skipping vagrant' do
    before(:each) do
      capture(:stdout) {
        Berkshelf::InitGenerator.new([target], skip_vagrant: true).invoke_all
      }
    end

    it 'does not have a Vagrantfile' do
      expect(target).to have_structure {
        no_file 'Vagrantfile'
      }
    end
  end

  context "given the 'vagrant.omnibus.version' option set" do
    before do
      Berkshelf::Config.instance.vagrant.omnibus.version = "11.4.4"
      capture(:stdout) {
        Berkshelf::InitGenerator.new([target]).invoke_all
      }
    end

    it "generates a Vagrantfile with the 'config.omnibus.chef_version' value set" do
      expect(target).to have_structure {
        file 'Vagrantfile' do
          contains "config.omnibus.chef_version = '11.4.4'"
        end
      }
    end
  end

  context "given the 'vagrant.omnibus.version' option set to 'latest'" do
    before do
      Berkshelf::Config.instance.vagrant.omnibus.version = "latest"
      capture(:stdout) {
        Berkshelf::InitGenerator.new([target]).invoke_all
      }
    end

    it "generates a Vagrantfile with the 'config.omnibus.chef_version' value set to :latest" do
      expect(target).to have_structure {
        file 'Vagrantfile' do
          contains " config.omnibus.chef_version = 'latest'"
        end
      }
    end
  end

  context "given the 'vagrant.vm.box_url' option set" do
    before do
      Berkshelf::Config.instance.vagrant.vm.box_url = "https://vagrantcloud.com/chef/ubuntu-14.04/version/1/provider/virtualbox.box"
      capture(:stdout) {
        Berkshelf::InitGenerator.new([target]).invoke_all
      }
    end

    it "generates a Vagrantfile with the 'config.vm.box_url' value set" do
      expect(target).to have_structure {
        file 'Vagrantfile' do
          contains "config.vm.box_url = 'https://vagrantcloud.com/chef/ubuntu-14.04/version/1/provider/virtualbox.box'"
        end
      }
    end
  end

  context 'with the chef_minitest option true' do
    before(:each) do
        allow(Berkshelf::Resolver).to receive(:resolve) { resolver }
        skip 'Runs fine with no mock for the HTTP call on the first pass, subsequent passes throw errors'
        capture(:stdout) {
          Berkshelf::InitGenerator.new([target], chef_minitest: true).invoke_all
        }
    end

    specify do
      expect(target).to have_structure {
        file 'Berksfile' do
          contains "cookbook 'minitest-handler'"
        end
        file 'Vagrantfile' do
          contains "'recipe[minitest-handler::default]'"
        end
       directory 'files' do
         directory 'default' do
           directory 'tests' do
             directory 'minitest' do
               file 'default_test.rb' do
                 contains "describe 'some_cookbook::default' do"
                 contains 'include Helpers::Some_cookbook'
               end
               directory 'support' do
                 file 'helpers.rb' do
                   contains 'module Some_cookbook'
                 end
               end
             end
           end
         end
       end
      }
    end
  end
end

Buff Ignore
===========
[![Gem Version](https://badge.fury.io/rb/buff-ignore.png)](http://badge.fury.io/rb/buff-ignore)
[![Build Status](https://travis-ci.org/sethvargo/buff-ignore.png)](https://travis-ci.org/sethvargo/buff-ignore)
[![Dependency Status](https://gemnasium.com/sethvargo/buff-ignore.png)](https://gemnasium.com/sethvargo/buff-ignore)
[![Code Climate](https://codeclimate.com/github/sethvargo/buff-ignore.png)](https://codeclimate.com/github/sethvargo/buff-ignore)

Buff::Ignore is a Ruby helper library for parsing and managing an ignore file (such as a `.gitignore` or `chefignore`). It uses [`File#fnmatch`](http://www.ruby-doc.org/core-2.0/File.html#method-c-fnmatch). It includes helpful methods for apply ignores to a file list.


Installation
------------
Add buff-ignore to your `Gemfile`:

```Gemfile
gem 'buff-ignore'
```

And then execute the `bundle` command to install:

    $ bundle

Or install buff-ignore directly:

    $ gem install buff-ignore


Usage
-----
Buff::Ignore is designed to be used as a library. First, you must require it:

```ruby
require 'buff/ignore'
```

Next, create an instance of an ignore file:

```ruby
ignore = Buff::Ignore::IgnoreFile.new('/path/to/ignore/file')
```

*(If the file does not exist, an exception will be raised)*

Finally, apply the `ignore` to a list of files:

```ruby
list = Dir['**/*']
result = ignore.apply(list)
```

You can also destructively apply changes. This will modify the receiving argument `list`:

```ruby
ignore.apply!(list)
```

Contributing
------------
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


License & Authors
-----------------
- Author: Seth Vargo (sethvargo@gmail.com)

```text
Copyright 2013 Seth Vargo <sethvargo@gmail.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

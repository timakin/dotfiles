FROM centos
MAINTAINER timakin

ENV CHEFHOME /chef-repo
ADD chef-repo /chef-repo
 
RUN curl -L http://www.opscode.com/chef/install.sh | bash
RUN cd ${CHEFHOME} && chef-solo -c ${CHEFHOME}/solo.rb -j ${CHEFHOME}/nodes/docker.json
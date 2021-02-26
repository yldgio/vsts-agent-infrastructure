FROM centos:centos7.5.1804

# Build-time metadata as defined at http://label-schema.org

LABEL org.label-schema.name="VSTS Agent with Infrastrucure Tools" \
    org.label-schema.url="https://github.com/yldgio/" \
    org.label-schema.vcs-url="https://github.com/yldgio/vsts-agent-infrastructure" \
    org.label-schema.schema-version="1.0"
                


RUN /bin/bash -c "yum update -y"
RUN /bin/bash -c "yum install wget unzip -y"
RUN /bin/bash -c "yum -y install epel-release"
RUN /bin/bash -c "yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm"
RUN /bin/bash -c "yum install yum-utils -y"
RUN /bin/bash -c "yum-config-manager --enable remi-php72"

RUN /bin/bash -c "yum install make gcc libpng-devel -y"




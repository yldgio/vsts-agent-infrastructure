#!/bin/bash
docker build -t vsts-agent:centos-7 --build-arg VCS_REF="git rev-parse --short HEAD" .
docker tag vsts-agent:centos-7 yldgio/vsts-agent:centos-7 
docker push yldgio/vsts-agent:centos-7 
#!/bin/bash

yum -y update

yum -y install tmux

tmux new-session -d -s install-odk-3.11-centos7

chmod +x /root/run.sh

tmux send -t install-odk-3.11-centos7 /root/run.sh ENTER
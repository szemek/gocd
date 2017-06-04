FROM phusion/baseimage:0.9.22

ENV TERM xterm

RUN apt-get update -qq && apt-get install -y build-essential

RUN echo "deb https://download.gocd.io /" > /etc/apt/sources.list.d/gocd.list
RUN curl https://download.gocd.io/GOCD-GPG-KEY.asc | apt-key add -
RUN apt-get update
RUN apt-get install -y openjdk-8-jre-headless
RUN apt-get install -y go-server
RUN apt-get install -y git
RUN su - go -c 'mkdir -p /var/go/.ssh'
RUN su - go -c 'ssh-keyscan github.com > /var/go/.ssh/known_hosts'

ADD files/etc/my_init.d/01_gocd_server.sh /etc/my_init.d/01_gocd_server.sh
RUN chmod 0755 /etc/my_init.d/01_gocd_server.sh

ADD files/etc/my_init.d/02_ssh_key.sh /etc/my_init.d/02_ssh_key.sh
RUN chmod 0755 /etc/my_init.d/02_ssh_key.sh

# Python
RUN apt-get install -y python-minimal

CMD ["/sbin/my_init"]

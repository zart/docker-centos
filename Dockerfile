FROM       centos:7
ENV        container docker
STOPSIGNAL SIGRTMIN+3
LABEL      name="Centos Base Image"
CMD        [ "/sbin/init" ]

RUN        /usr/bin/systemctl unmask --no-reload systemd-logind.service getty.target console-getty.service ;\
           /bin/rm /etc/fstab ;\
           /usr/sbin/useradd user ;\
           echo -e "root:\nuser:" | /usr/sbin/chpasswd -e

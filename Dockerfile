FROM centos

RUN yum update -y && \
    yum install -y mesa-libGL mesa-dri-drivers pulseaudio && \
    yum clean all

RUN dbus-uuidgen > /etc/machine-id

COPY gog_darkest_dungeon_2.4.0.4.sh /opt/dd/
RUN chmod +x /opt/dd/gog_darkest_dungeon_2.4.0.4.sh

COPY Darkest/ /opt/dd/Darkest/

WORKDIR /opt/dd


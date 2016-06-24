FROM fedora:23
MAINTAINER "jorge.luizchaves@yahoo.com.br"
LABEL Description="This image is a jekyll image."
WORKDIR /home/jekyll
RUN dnf install ruby ruby-devel rpm-build make gcc -y && gem install jekyll && dnf clean all --enablerepo=\*
RUN groupadd -r jekyll && useradd -r -g jekyll jekyll && chown jekyll:jekyll -R /home/jekyll
USER jekyll
EXPOSE 4000

FROM fedora
RUN dnf upgrade -y
RUN dnf install -y info
COPY myfile.txt /
COPY scruot.sh /
USER sync
ENTRYPOINT ["./script.sh"]

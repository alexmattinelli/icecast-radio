FROM moul/icecast

COPY icecast.xml /etc/icecast2/icecast.xml

CMD sed -i "s/<port>8000<\/port>/<port>$PORT<\/port>/" /etc/icecast2/icecast.xml && icecast -c /etc/icecast2/icecast.xml

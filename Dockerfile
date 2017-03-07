FROM ruby:2.4

RUN URL='https://www.princexml.com/download/prince_11.1-1_debian8.0_amd64.deb' && FILE=`mktemp` && wget "$URL" -qO $FILE && dpkg -i $FILE; apt-get update && apt-get install -y -f && dpkg -i $FILE && rm $FILE


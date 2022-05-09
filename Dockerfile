FROM node:12.18.1
WORKDIR /home/manmohan_rawat13911/notejam/express/notejam
CMD npm install
COPY notejam /nodejam
WORKDIR /nodejam
RUN node db.js
RUN DEBUG=* ./bin/www

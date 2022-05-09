FROM node:12.18.1
WORKDIR /home/manmohan_rawat13911/notejam/express/
CMD npm install
COPY notejam /nodejam
WORKDIR /nodejam
CMD node db.js
CMD DEBUG=* ./bin/www

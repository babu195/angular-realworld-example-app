FROM node:16-slim
LABEL authore="rohitsingh"
LABEL project="devopslearning"
ADD . /angular-realworld-example-app
RUN cd angular-realworld-example-app && npm install -g @angular/cli && npm install
EXPOSE 4200
WORKDIR /angular-realworld-example-app
CMD [ "ng", "serve", "--host", "0.0.0.0" ] 

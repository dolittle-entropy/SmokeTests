FROM dolittlebuild/core

RUN apt-get update &\
    curl -sL https://deb.nodesource.com/setup_8.x | bash - &\
    apt-get install -y nodejs npm
    
RUN npm i -g yarn

RUN yarn global add webpack &\
    yarn global add webpack-cli 

WORKDIR /test

ADD ./*.sh ./

CMD ["/bin/sh", "./run.sh"]


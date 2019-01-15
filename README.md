# mongodb
create the mongodb docker image for loongson loongnix mips64el

the way to create mongodb docker image:
     step1 get the source : git clone https://github.com/jiangxinshang/mongodb.git 
     step2 cd mongodb 
     step3 docker build -t loongnix/mongodb  .
     step4 docker run -itd --name mongodb loongnix/mongodb:latest
     step5 docker exec -it mongodb /bin/bash


#!/usr/bin/env bash
rm -rf _build
rm ./ahnenforschung.tar.gz
make html
cd _build/html
sed -i 's/max-width: 800px;/max-width: 65%;/' _static/basic.css
tar -czvf ../../ahnenforschung.tar.gz  ./*
cd ../..
sshpass -pkk0457 scp ./ahnenforschung.tar.gz kurt@23.254.165.183:~/
sshpass -pkk0457 ssh kurt@23.254.165.183 

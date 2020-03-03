#!/usr/bin/env bash
rm -rf _build
rm ./ahnenforschung.tar.gz
make html
cd _build/html
sed -i 's/max-width: 875;/max-width: 65%;/' _static/basic.css
tar -czvf ../../ahnenforschung.tar.gz  ./*
cd ../..
ls -al ./ahnenforschung.tar.gz

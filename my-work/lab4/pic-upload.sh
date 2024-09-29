#!/bin/bash

#upload a file to bucket
curl https://i.redd.it/e8xqotzkdpc11.jpg > dogonaboat.png

aws s3 cp dogonaboat.png s3://ds2022-fbv2sc/


#presign url w/ expiration of 604800 (7 days) 
aws s3 presign --expires-in 604800 s3://ds2022-fbv2sc/dogonaboat.png

#presigned url generatede by my code:
# https://ds2022-fbv2sc.s3.amazonaws.com/dogonaboat.png?AWSAccessKeyId=AKIA3FRRI2YYVVVRXV7G&Signature=5oLcZCrnvMavMnJGwz9Pa9%2FR88k%3D&Expires=1728233887



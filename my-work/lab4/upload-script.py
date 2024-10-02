#!/usr/bin/python3

import boto3
import requests


def download_file(url):
    #downloading
    response = requests.get(url)
    return response.content

def upload(file, bucket, object):
    #uploading
    s3 = boto3.client('s3')
    s3.put_object(Body = file, Bucket = bucket, Key = object)

def generate_presigned_url(bucket, object, expires_in):
    #generating presigned url
    s3 = boto3.client('s3')
    return s3.generate_presigned_url(
        'get_object',
        Params={'Bucket': bucket, 'Key': object},
        ExpiresIn=expires_in
    )

file_url = 'https://images.boats.com/resize/wp/2/files/2016/04/Sailing2012_M0829.jpg'  # Replace with a valid GIF URL
local_filename = 'racing-boats.jpg'
    
bucket = 'ds2022-fbv2sc'
object = 'project/racing-boats.jpg'  
expires_in = 604800  

file = download_file(file_url)

upload(file, bucket, object)

presigned_url = generate_presigned_url(bucket, object, expires_in)
print(f"Presigned URL: {presigned_url}")

# presigned url =  https://ds2022-fbv2sc.s3.amazonaws.com/project/racing-boats.jpg?AWSAccessKeyId=AKIA3FRRI2YYVVVRXV7G&Signature=FKqHtO7pBPUL9izsraBs9LLE6xE%3D&Expires=1728481257 


#!/usr/bin/python3
import requests
import json

def add_these(x, y):
  try:
    sum = x + y
    print(sum)
    return sum
  except Exception as e:
    print("An error has occurred:", e)

add_these(5, "forks")

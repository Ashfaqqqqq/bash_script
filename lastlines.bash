#!/bin/bash
#purpose=to delete last 3 lines

tail -n 3 "/root/test.txt" | wc -c | xargs -I {} truncate "/root/test.txt" -s -{}





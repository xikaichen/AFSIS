#!/bin/sh

ps -e|grep python|awk '{print $1}'|xargs kill -9 

### The role of social media mentions and music sales/streams
## A retrospective analysis on hip hop artists that have achieved a number one in 2018

## OBJECTIVES
# 1. Analyze and determine if twitter mentions is a significant leading indicator of album sales/streams
# 1b. Does the role of "major" influencers affect twitter buzz or is it more organic
# 2.  Are artists more likely to succeed if they cross-promote/speak on other artists 
# 3. Does engaging with non-artists (direct reply or retweet) affect sales/buzz
# 4. 
##

##  DATA SOURCES
# 1. Twitter API for all tweet information
# 2. Google Trend API 
# 3. SALES/STREAM FIGURES (hopefully granular but we can live with weekly/monthly sales data
# 4. Possibly SoundScan, Billboard, Spotify, Apple Musi etc Maybe RIAA
##


## Motivation - We are in a digital era, let's see if it really matters

#Required Packagess

if(!require(rtweet)) install.packages("rtweet")  else library(rtweet) 
if(!require(tidytext)) install.packages("tidytext") else library(tidytext)
if(!require(reshape2)) install.packages("reshape2") else library(reshape2)
if(!require(tidyverse)) install.packages("tidyverse") else library(tidyverse)
if(!require(httpuv)) install.packages("httpuv") else library(httpuv)


# Creating twitter token
source("twitterinfo.R")

twitter_token <- create_token(
  app = app.token,
  consumer_key = key.token,
  consumer_secret = secret.token)

## check to see if the token is loaded

identical(twitter_token, get_token())
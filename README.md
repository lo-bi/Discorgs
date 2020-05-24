# Discorgs

This script allow you to go through a Discorgs Wantlist and check for each records how many are they in the marketplace.
It can help you to prioritize which vinyl you should buy first (the ones which are less in the marketplace)

# Install

`bundle install`

# Configuration

You need edit the script with your username and user token
```
user_token = TOKEN
user = USERNAME
```

# Usage 

```
ruby discorgs.rb
```
They are a rate limite of 60 req per 60 min on discorgs, that's why the script sleep 60 sec between each request.
The output will be csv like `RECORD_ID,TITLE,NUMBER_FOR_SALE`

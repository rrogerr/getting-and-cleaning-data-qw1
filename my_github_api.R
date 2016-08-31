library(httr)

oauth_endpoints("github")

myapp <- oauth_app("github",
                   key = "c960ae2aab21f644df9f",
                   secret = "9241dc1485322c02a56f4e73d9e8a9266e484149")

# github_token <- oauth2.0_token(oauth_endpoints("github"), myapp, cache = FALSE)

gtoken <- config(token = oauth2.0_token(oauth_endpoints("github"), myapp, cache = FALSE))
req <- GET("https://api.github.com/datasharing.json", gtoken)
stop_for_status(req)
content(req)


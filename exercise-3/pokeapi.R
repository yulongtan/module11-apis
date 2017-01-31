library(jsonlite)
library(httr)

# Make a variable base.url that has the same base url from the poke api documentation.
# (Hint: visit http://pokeapi.co/ to find the base url)
base.url <- "http://pokeapi.co/api/v2/"

# Make a variable called movie that has the names of your favorite pokemon
# be aware of casing! 
# There are multiple ways to call the pokemon. What are the 2 ways you can call 
# it with the Poke API? 
pokemon <- "dragonite"

# Make a variable called pokemon url that holds your favorite pokemon's url 
pokemon.url <- paste(base.url,"pokemon/", pokemon, "/", sep = "")

# Use the GET function to call the url, store it in a variable called response
response <- GET(pokemon.url)

# Use the names function to learn more response. Print it out. It will return a list of ten 
# names within the response object. You can think of the list names as column names. 
print(names(response))

# Within the printed list the most important values we are looking at is 
# 'status_code'. It will tell us if our API worked with the network. 
# Be sure that the code is working by checking it with this page. 
# https://en.wikipedia.org/wiki/List_of_HTTP_status_codes
# hint: remeber you can call this similar to how you would call a column!
print(response$status_code)

# Now that you have confirmed your URL is working, let's read in the JSON file
# create a variable body that stores the data from the URL
# what function did we use to extract the data from response?
body <- content(response, "text")

# create a variable parsed.data that will convert the JSON string into a list
parsed.data <- fromJSON(body)

# Print out the keys from the parsed.data by using the names function
print(names(parsed.data))




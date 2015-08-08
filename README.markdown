# What is this? #

This is a Rails application that echos back to the client the data sent.
The response is a JSON object with the request params and the request body.

# Why did I write that? #

I wrote that in order to demonstrate how Rails puts inside params hash
the data that you sent with your HTTP request, even if that request is
a POST or GET, or even if that request has data in the request body.

# Try that out #

Try the following `curl` examples to understand what I mean

```curl
curl "https://echo-data.herokuapp.com/echo?foo=bar" -v --header "Accept: application/json"
```

```curl
curl "https://echo-data.herokuapp.com/echo" -v --data foo=bar --header "Accept: application/json"
```

```curl
curl "https://echo-data.herokuapp.com/echo" -v --header "Accept: application/json" --header "Content-Type: application/json" -d "{\"foo\":\"data\"}"
```

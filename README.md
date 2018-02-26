# TermiNetworkBackend

This is sample backend application made to the TermiNetwork swift library

## API Calls

### /test_params

#### Methods: GET, POST, DELETE

> Used to test params with the given method.

Example call
```
/test_params?foo=bar&my_bool=true
```

Response
```json
{
  "foo": "bar",
  "my_bool": "true"
}
```

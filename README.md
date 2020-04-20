# TermiNetworkBackend

A sample backend application made to test the TermiNetwork swift library

## Installation

Clone the project from GitHub and run the following commands to run the server

```
$ git clone https://github.com/billp/TermiNetworkBackend
$ cd TermiNetworkBackend
$ bundle
$ rails s
```

## API Calls

### /test_params

#### Methods: GET, POST, DELETE

> Used to test get/post parametetrs with the given method.

Example call
```
http://localhost:3000/test_params?foo=bar&my_bool=true
```

Response
```json
{
  "foo": "bar",
  "my_bool": "true"
}
```

### /test_status_code
> Used to test http status code. It returns the given status code in JSON as well as actual HTTP STATUS CODE.

#### Methods: GET

Example call
```
http://localhost:3000/test_status_code?status_code=404
```

Response
```json
{
  "status_code": "404"
}
```

### /test_headers
> It returns all the request headers

#### Methods: GET

Example call
```
http://localhost:3000/test_headers
```

Response
```json
{
  "status_code": "404"
}
```
### /upload_file
> Uploads a file to server and returns a success status. Useful to test the upload progress of big files.

#### Methods: POST

Example call
```
upload a file with POST as a form-data param with name file["attachment"] at
http://localhost:3000/upload_file
```

Response
```json
{
    "success": true
}
```

### /test_empty_response
> A simple call that returns an empty body.

#### Methods: GET|POST

Example call
```
http://localhost:3000/test_empty_response
```

Response: **nothing**

Response
```json
{
    "success": true
}
```

### /test_encrypt_params
> Returns the params passed encrypted with AES256 CBC. The key is aaaaaaaaaaaaaaaaaaaaaaabcdefg123

#### Methods: GET|POST

Example call
```
http://localhost:3000/test_encrypt_params?test=abc
```

Response
```json
{
  "data": "/d0/tEv1pAoZaijl1quH2xdR5mP1yKSP8OXL0QGILydGSi7c98spSdqFft00I5UW0oqR9401gRAS40QyleoNqC+ZxFpVnixkrUFlo1OOJPGkzZDp2gCR/2K3CpHZ620c"
}
```

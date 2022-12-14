gdrive
======


## Overview
gdrive is a command line utility for interacting with Google Drive.

## Important

1. Enable https://console.cloud.google.com/marketplace/product/google/drive.googleapis.com
2. In "OAuth consent screen"; User type to External and publish (or add a test Google account)
3. https://console.cloud.google.com/apis/credentials and application type to be Desktop App give some name
4. Get the values for `clientId` and `clientSecret`
5. For Go-preinstalled linux VM use: https://console.cloud.google.com/home/dashboard?cloudshell=true
   or install `go version go1.19.1 linux/amd64` from  https://go.dev/doc/install

## Download and compile

1. `git clone --depth=1 https://github.com/wangke0809/gdrive`
2. `cd gdrive`
3. `cd ~/.config && mkdir gdrive && cd gdrive && vim oauth_client.json`
   ```json
    {
	    "client_id": "ididididid.apps.googleusercontent.com",
	    "client_secret": "ssssssssss"
    }
    ```
4. `sh _release/build-linux-amd64.sh`
5. The binaries are located inside `gdrive/bin` folder
6. `./gdrive_linux_amd64 about`

```
./bin/gdrive_linux_amd64 about
Authentication needed
Go to the following url in your browser:
http://127.0.0.1:8080/authorize

Waiting for authentication response
```

7. Open a browser at the URL
8. For remote linux boxes just do the authentication locally and copy the `linux binary` and `~/.config/gdrive/token_v2.json` to the remote box.

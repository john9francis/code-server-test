# Code-server test
[code-server](https://github.com/coder/code-server) is an open source version of [vscode](https://code.visualstudio.com/) that can be accessed via the browser

## Building and running with docker
This sets up a clean debian-based linux container for development. Simply start this and access the vscode frontend from localhost:8080. Don't forget to specify a password.
```sh
docker build -t code-server .
docker run -e PASSWORD='mypassword' -d -v ./workspace/src:/src -p 8080:8080 code-server
```
After your container is down, the files you have been working on should be saved in your local workspace/src/ folder.
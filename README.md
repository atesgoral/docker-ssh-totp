Docker image for experimenting with TOTP-based SSH.

```
docker build .
docker run -it <image ID from previous step>
```

Once on container, grab generated secret key or just scan the QR code into your token generator app.

Then, just try SSHing into the container itself:

```
ssh localhost
```

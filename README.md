Docker image for experimenting with SSH via TOTP.

* Ubuntu 16.10 (Yakkety Yak) - to use latest libpam-google-authenticator
* ntp - to synch time
* augeas-tools - for configuring stuff

```
docker build .
docker run -it <image ID from previous step>
```

Once on the container, grab the generated secret key or just scan the QR code into your token generator app:

```
  █▀▀▀▀▀█  ▄▀▄ ▄▀▀█ █▀█ █▀   ▄▀█  ▀ █▀▀▀▀▀█
  █ ███ █ █  ▄ ▄ ▄▄ ▄ ▀▄▄   ▀▄▀▀▀▀▀ █ ███ █
  █ ▀▀▀ █ █▀  ▄▀▀▄▀ ▄ ██▄▀█ ▀███▀▀█ █ ▀▀▀ █
  ▀▀▀▀▀▀▀ █ █▄▀▄█▄▀ ▀ ▀▄▀▄▀ ▀▄█ ▀ █ ▀▀▀▀▀▀▀
  ▀ █▀▀█▀▄ ▀▄█▄ █ ▀▀▀█▄█▀▄ ▀  █▀█▄  █▀███ ▄
  █ ▀▀▀ ▀█▄█   ▄▄  ▀▀ ███▄  ██▄▀▀▄ ▄▄█▄█▀▀▄
  ▀▄ ▀▀█▀██    ▀ ▀  ▄ ▄██▀▄█▄█▄█ ▀▀▀▄▀▄▀▀
  ▀█ █ ▄▀█▄█▄█▄ ██▄ ▀█▄▄  ▄ ▄ ▄ █ ▀  ▄▄▄▀
    ▀ █ ▀███  ▀ ▄▄██▀█▄▄▄▄▀██   ▄▄▀ ▄█▄ ▀ ▄
  ▄▄▀▄▄▄▀▀▄ ▄▀█▀▀▀ █▄▄ █▄  █▀█▄ ▀▄█  ▀██ ▀▄
  █ █▄ ▀▀  █ ▀▄▀▀ ▀ ▄ ██▄▄▄▄▀▀▀▄▀█▄▀▄▀▄  ▄▄
   ▄█ ▄█▀▄▄▀ ▀▄  ▄▄▀ ▄ █  ▄▀██▄▀ ▄▀█▄▀▄▄▀▄▄
   ▀▄▀█ ▀ ▀▄ ▄▄██ ██▀▄▄▄▄█▀▀█▀█▀ ▄▀  ▄█▄▀ ▄

  ▀▀ ▄ ▀▀▀▀ ▄▀▄▀ █ ▀█▄ █▀▄ ▀▄▀█▀█    █▀▄ █▄
  ▄▀ ▀▄▄▀█▀ ▄▄ ▄█▀█ ▄ ▀▀▀▀▀ ▀▄▀█▄▀▄█ ▀▄▀▀▄
  █  ▀▀▀▀▄▄██ █▀ ▀▄▀  ▀███▀▀▄█▀ ▀█▄▄ ▀▄▀▀ ▄
  ▀ ▀▀▀ ▀ ▄▄ ▀██▀▄▄▀▀▄▄ ▄█ ▀█▀▀▄▄▀█▀▀▀██▀ █
  █▀▀▀▀▀█ ▄ █  ▀ ▀  ▀▄▀ ▀▄▄ ▄███▄▄█ ▀ █▄▀█▄
  █ ███ █ █▀▄▀ ▀▀ ▀ ▀▄▀█▀ ▀ ▄▀█ ▄ █▀▀▀▀
  █ ▀▀▀ █ ▀██ ▀▀▄▀▀▀█ ▀▄▄  ▀ ██ ▄▄█▀█▀█▀▀▄
  ▀▀▀▀▀▀▀ ▀  ▀▀ ▀▀▀ ▀   ▀ ▀▀▀▀ ▀ ▀  ▀ ▀▀▀

Your new secret key is: E3EI65TA2YCJOEQFMG2ZO6XIE4
```

Then, just try SSHing into the container itself:

```
ssh localhost
```

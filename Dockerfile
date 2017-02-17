FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y openssh-server libpam-google-authenticator augeas-tools
RUN google-authenticator --force --time-based --window-size=2 --disallow-reuse --rate-limit=3 --rate-time=30
RUN echo auth required pam_google_authenticator.so nullok >> /etc/pam.d/sshd
RUN augtool --autosave 'set /files/etc/ssh/sshd_config/ChallengeResponseAuthentication yes'

ENTRYPOINT service ssh restart && bash

FROM ubuntu:16.10

RUN apt-get update
RUN apt-get install -y openssh-server ntp libpam-google-authenticator augeas-tools
# tools for troubleshooting
RUN apt-get install -y vim oathtool

RUN augtool -s 'rm /files/etc/pam.d/sshd/include[. = "common-auth"]'
RUN echo auth required pam_google_authenticator.so debug nullok >> /etc/pam.d/sshd

RUN augtool -s 'set /files/etc/ssh/sshd_config/ChallengeResponseAuthentication yes'
RUN augtool -s 'set /files/etc/ssh/sshd_config/PasswordAuthentication no'
RUN augtool -s 'set /files/etc/ssh/sshd_config/AuthenticationMethods keyboard-interactive'

ENTRYPOINT google-authenticator --force --time-based --window-size=2 --disallow-reuse --rate-limit=3 --rate-time=30 && service ssh restart && bash

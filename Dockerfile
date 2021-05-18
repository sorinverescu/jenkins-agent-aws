FROM jenkins/inbound-agent:latest

# Switch to root
USER root

# Install AWS CLI
RUN wget https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
RUN unzip awscli-exe-linux-x86_64.zip -d /tmp
RUN chmod +x /tmp/aws/install && /tmp/aws/install
RUN aws --version
# Switch back to the jenkins user.

USER jenkins
FROM jenkins/inbound-agent:latest

# Switch to root
USER root

# Install AWS CLI
RUN wget https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
RUN unzip awscli-exe-linux-x86_64.zip
RUN chmod +x aws/install.sh && ./aws/install.sh
RUN aws --version
# Switch back to the jenkins user.

USER jenkins
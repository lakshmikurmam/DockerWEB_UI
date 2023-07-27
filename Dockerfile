
# Use an official Node.js runtime as the base image
FROM node:14

RUN apt-get -y install git -y curl

RUN git clone https://github.com/lakshmikurmam/WEB-UI.git /automateddocker/test/WEB-UI

# Expose the port that the Node.js application will listen on
EXPOSE 3001

# Start the Node.js application
CMD ["node", "index.js"]  

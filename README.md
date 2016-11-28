##What is this?

This is an application I made that allows a server to receive a request containing a key and value; the program then stores the key it was passed before returning it on a separate page. I took advantage of 'sessions' to make this task as easy and as clean as possible. To see a full brief of the requirement, please read below:

##The Brief
You receive a message from a prospective employer:

"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey."

##Running and Testing the Program

In order to run this application, simply do the following:
* Clone this Repository
* From the command line, run: ```bundle install```
* run the server: ```ruby app.rb```
* Visit the browser, and type in: ```http://localhost:4000/set?KEY=VALUE```
* Replace _key_ and _value_ with two words of your choice!
* Finally, visit ```http://localhost:4000/get``` to see your chosen _key_ returned.

README.md


WHAT THIS IS
The Chat App from team TEAM PROJECT
Ever want to have conversations with other humans, but don't want to leave the comfort and safety of your couch? BOY DO WE HAVE AN APP FOR YOU!

WHAT IT DOES
This application will allow you to chat with other people online, and contains functionality that includes:
- Create your own username
- Type messages that can be seen by other users in real time
- See when messages were posted
- View the top users by number of posts
- See which users have posted in the last 4 hours

HOW IT WORKS (API CALLS and DATA RETURNED)
API CALL URL:
https://fathomless-savannah-3396.herokuapp.com
- The default (index) page of the chat app will return all posts made in the last 5 mins. If no posts have been made in the last 5 mins, no posts will be returned.

CREATE  USER (CALL URL):
https://fathomless-savannah-3396.herokuapp.com/messages/create
- PARAMS must include: username: "value", post: "", chatroom: ""
(post and chatroom keys must also be included in call)
- Will store new username into the database and return the name.

CREATE POST (CALL URL):
https://fathomless-savannah-3396.herokuapp.com/messages/create
- PARAMS must include: username: "", post: "value", chatroom: ""
(username and chatroom keys must also be included in call)
- Will store new post into the database and return post.

CREATE CHATROOM (CALL URL):
https://fathomless-savannah-3396.herokuapp.com/messages/create
- PARAMS must include: username: "", post: "", chatroom: "value"
(username and post keys must also be included in call)
- Will return top 10 posters based on number of posts

SEE USERS WHO POSTED IN LAST 4 HOURS (CALL URL)
https://fathomless-savannah-3396.herokuapp.com/messages/recent_users
- Will return usernames of everyone who has posted in last 4 hours

JavaScript EXAMPLE
- API call in JavaScript and what result will be returned from the server:

function getMessages() {
                $.get(
- Will enter name of new chatroom into the database and return name.

SEE THE TOP 10 POSTERS (CALL URL):
https://fathomless-savannah-3396.herokuapp.com/messages/fanatics
                        'http://fathomless-savannah-3396.herokuapp.com/messages',
                        onMessagesReceived,
                        'json'
                );
        }

OTHER RELEVANT DOCUMENTATION
- TRELLO Board: https://trello.com/b/MArtVyM0/team-team-project-project
- Hackpad: https://hackpad.com/collection/nFlVceexuOI

*NOTE : an option for this project was to add a profanity filter. As team Team Project is opposed to verbal oppression, we chose to omit this bit of functionality.


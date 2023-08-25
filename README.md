# Notes-Tracker-Application
The Note Tracker web application is designed to help users organize and manage their notes effectively. 
The application allows users to SIGN-UP, SIGN-IN, ADD NOTES, UPDATE NOTES, DELETE NOTES, and LOG-OUT. 
It also includes an ADMIN PANEL where administrators can LOG-IN, view ALL USERS NOTES, and LOG-OUT. 
The application is built using Servlets, JSP, Hibernate, HQL, HTML, CSS, Bootstrap, and MySQL.

Functionality:

USER REGISTRATION:
Users can sign up by providing their name, email, and password and etc.
The registration data is stored in the MySQL database using Hibernate.

USER LOGIN:
Registered users can log in with their email and password.
The application verifies the credentials and grants access to the user dashboard.

USER DASHBOARD:
After successful login, users are redirected to their dashboard.
The dashboard displays a list of their notes with titles and options to update or delete each note.
Users can add new notes by providing a title and content.

UPDATE NOTES:
Users can edit the title and content of their existing notes.
The application updates the notes in the database using Hibernate.



DELETE NOTES:
Users can delete their notes from the dashboard.
The application removes the notes from the database using Hibernate.

LOG-OUT:
Users can log out of the application, ending their session.

ADMIN LOG-IN:
Administrators can access the admin panel by providing their credentials.
The application verifies the admin credentials and grants access to the admin panel.

ADMIN PANEL:
After successful login, admins are redirected to the admin panel.
The admin panel displays a list of all users' notes, including the user's name, note title, and content.
Admins have the option to log out from the admin panel.

Technologies Used:

SERVLETS:

Servlets are used to handle user requests, perform authentication, and interact with the database.

JSP (JavaServer Pages):
JSP is used to create dynamic web pages and display data from the server.

HIBERNATE:
Hibernate is an ORM (Object-Relational Mapping) framework used for database operations.
It simplifies the database interaction by mapping Java objects to database tables.

HQL (Hibernate Query Language):
HQL is used to write database queries in Hibernate.
It allows developers to write queries using Java objects instead of SQL.

HTML, CSS, and Bootstrap:
HTML is used for creating the structure of web pages.
CSS is used for styling the web pages.
Bootstrap is a CSS framework that provides pre-designed UI components for a responsive and visually appealing design.

MySQL:
MySQL is used as the database management system to store user data and notes.

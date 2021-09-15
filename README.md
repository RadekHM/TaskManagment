# TaskManagment
Asp.net application that consists of an admin and user section, admin can assign tasks to registered users, users can view the tasks and 
mark complete when done.
- Admin Section (Can issue tasks to user, can see all registered users)
- User Section (Can view and mark tasks)


# Installation
 1. Download and install Visual Studio from <a href="https://visualstudio.microsoft.com/downloads/">here</a>
 2. Clone this repo to your local machine using:
```bash
 git clone https://github.com/RadekHM/TaskManagment.git
 ```



# Usage

1. Open the .sin project in visual studio and run the project
  ```bash
 You can choose which page you want to access, by right clicking on the desired file/folder and setting it as a start page
 ```
 2. Make sure to change the connection string to the database on all the files to your own connection string for your database 
 Check here for <a href="https://www.c-sharpcorner.com/UploadFile/suthish_nair/how-to-generate-or-find-connection-string-from-visual-studio"/>reference</a>
 
 


# Admin Panel

- Login in to the admin panel by using a username & password pre-set by you:

    Start by navigating to the admin_registration table (From the tms database in the App_data folder), and right click on the               admin_registration table and select "Show table Data" and from there enter the credentials and use them to login to the admin. 
 
 
 ## Issue Tasks (Admin)
 Admin can issue task by selecting a user to issue the tasks to.
 
 ![](/screenshots/admin_issue_task.PNG)
 
 
 ## Display Tasks (Admin)
 Admin can view all issued task he/she made, the admin can also see if the tasks were completed, and can also edit & delete issued tasks.
 
 ![](/screenshots/admin_display_all_tasks.PNG) 
 
 ## Display Users (Admin)
 Admin can also view all registered users and decide to deactivate or reactivate their account if neccessary.
 
 ![](/screenshots/admin_display_all_users.PNG)
 
 
 
# User Panel

Users can register if they do not have an active account.

 ![](/screenshots/user_register.PNG)
 
 
 ## Display Tasks (User)
 
 Users can view their issued tasks, which include date of task created and due date for the task to be complete, users can also mark tasks as complete when the task issued to them were completed

![](/screenshots/user_display_tasks.PNG)
 
 
 






# Built With

- C# Programming Language
- ASP.Net Framework



# TODO

- Optimize Code
- Resolve Bugs


# Authors

- Radvan Khammud








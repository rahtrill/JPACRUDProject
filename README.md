# JPA CRUD Project

# Description

This program demonstrates multiple uses of CRUD operations in a full stack Java program. The program utilizes JPA and Spring Boot to work, as they allowed me to use necessary functions like POJO entities, mapping, etc.

The database tied to the site is a boxer database. This database contains information on boxers from the past and present, as well as their boxing statistics. You can add, remove, update, and search for boxers in the database. You can add and update boxers using forms to fill out or change their fields. In order to remove or update boxers, you will have to search for them in the database. The result page for each individual boxer will have an option to update or remove the boxer. The site does have separate pages to update and remove, but they redirect you to the boxer search page. This is because I felt it would be a waste of time building multiple forms that performed similar functions.

Here are all of the fields a boxer entity contains:

- ID.
- First name.
- Last name.
- Height (in inches).
- Weight class.
- Nationality.
- Reach (in inches).
- Total knockouts.
- Total fights.

There is also a function on the website called "Match-Up" that puts two boxers against one another in a theoretical boxing match and compares their statistics to determined a percentage outcome of a boxer's likeliness to win that match. It will also display each boxer's statistics so the user can see exactly why the program came to that conclusion.

This program also demonstrates the use of multiple Bootstrap classes. I used cards, navbars, forms, etc with Bootstrap to build this site.

# Technologies Used

There were multiple technologies used in order to allow this program to run. They include the following:

- Object Oriented Programming (Java).
- Interfaces.
- Try/catch clause.
- Spring Boot.
- JPA.
- JPQL.
- POJO Entities.
- EntityManager.
- Databases.
- MySQL queries.
- MySQL transactions.
- MySQL Workbench.
- EER Diagrams.
- Gradle.
- HTML/class.
- JSP.
- Git.
- Spring Servlets.
- Spring Controller.
- Spring Mapping.
- MAMP.
- Tomcat v8.5 local server.
- Atom.
- ZSH Shell.
- SpringToolSuite4.
- JUnit 5 tests.

# Lessons Learned

This project helped demonstrate to me how far my ability as a full stack Java web developer can go. I learned multiple lessons throughout working on this project, and hope to learn more as I continue to create more full stack web applications.

An extremely important lesson I learned was to organize my request mapping in my controller more closely as the need for more maps grew larger. At multiple points while writing this program, I ran into ambiguous mapping issues due to path naming and method usage similarities.

I also learned how to properly implement Bootstrap into my JSP files without the need to copy and paste the Bootstrap link and scripts into every single file, and rather use an include tag.

Bootstrap has been extremely foreign to me as a developer for most of my time building this program, but I challenged myself to try and use it more often in this program. I found was it is extremely easy to implement Bootstrap into my code. It is also a convenient tool for developers to make their website look presentable to the user.

# What was the most difficult part of this project?

The most difficult part of this project was related to the search bar I had implemented in the website, and the match-up utility.

Myself and a colleague came up with a solution to having to make separate search bars for IDs, names, weight classes, etc. Instead of having these separate search bars, we wanted to combine them into one search bar that could distinguish searching for an ID as an Integer and searching for a name or weight class as a String. To do this, we put a try/catch clause in our controller. We then tried to parse the passed in String to an integer. If the string could be parsed into an integer, it passed the integer value to the DAO that would find the boxer by ID in the database. However, if it could not be parsed, it would throw an Exception and be caught in the catch block. In the catch block, the program will send that String to a query method inside of the DAO and find a boxer that's name or weight class contents have the passed in String value.

The match-up utility was difficult to come up with because I had to figure out a way to score each of the boxers and calculate a percentage winning outcome. I found the best way to do this was compare each of the boxer's fields and score a point for each boxer that has a higher field. Then, I put the weight classes into a HashMap that correlated their weight classes to a numerical value. It compared each of the boxer's highest ever performed weight classes. Whichever boxer had a higher weight class was scored a point. The points were then divided from the amount scored to the boxer by the total amount that could be scored to calculate the percentage of how likely a win for them would be. It returns that winning percentage as an attribute to the JSP file.

# Meet The Team

**Rahil Ali**

- Student at Skill Distillery
- LinkedIn - https://www.linkedin.com/in/rahil-ali-35b480224
- GitHub - https://github.com/rahtrill

# Grade 12 Computer Science ISP

Overall expectations being assessed in this independent study project:

* A1. 	demonstrate the ability to use different data types and expressions when creating computer programs;
* A2. 	describe and use modular programming concepts and principles in the creation of computer programs;
* A4. 	use proper code maintenance techniques when creating computer programs.
* B1. 	demonstrate the ability to manage the software development process effectively, through all of its stages – planning, development ... and closing;
* B2. 	apply standard project management techniques in the context of a student-managed ... project.
* C1. 	demonstrate the ability to apply modular design concepts in computer programs;

In all phases of this ISP, you will be guided by an exemplar produced by Mr. Gordon.

The emphasis in this ISP is on understanding and applying the process of software development. The greatest success has historically come to students who plan their deliverables according to a manageeable schedule and stick to their plan.

## Scope

Aim to create a modest application that solves a problem you care about. If you solve the problem well, it is highly likely that others will find your application useful as well. Challenge yourself with something new, but avoid overreaching.

## Due dates

Planning, development, and closing will occur by the start of March Break. You can set due dates for deliverables in your project. You are strongly recommended to plan deliverable dates by working around due dates for deliverables in your other classes.

Note that you will be granted significant opportunities to work in class, but that there is, like any Grade 12 university preparation course, an expectation that work be completed outside of class time as well.

## Proposal

Modify this document and add your responses to the following prompts below.

### What problem will your application solve?

*Write a paragraph to describe the utility of your application. This applies equally for games. When would someone use your application? Why would they use your application?*

Game Bible, my iOS application, will consist of a library of card games, instructions on how to play each game, and a multiple view controller user interface. The user will be able to navigate from a home screen through a database of games, each game including a description, the rules, how to play and what materials you may need to play it. The app will include a home screen, a view of all the games, a search and filter feature, and views for each individual game. Have a deck of cards and a few dice? Find out what games you can play with Game Bible.

The search feature will be a key factor in this application. If the user wants to only see games that are actually playable due to their materials and amount of people, they can select their their limitations and search through the games that are playable based off their input. 

### What is your inspiration for this project?

*Have you seen another application that you wish to improve on? Has someone asked you to create this?*

Almost every successful application available in the App Store has a multi-view user interface. I would like to be able to create my own multi- view applications, and the best way to learn is to do. So, this will be a sort of "template" and "guinea pig" for my future multi-view applications. 

I have not yet found an application that is very similar to my idea. Honestly, I do not think this is a million-dollar app idea, but creating this app is more about learning than to create the next big app. So, even if there was a similar application idea to mine, I would still be able to reach my goal. 

### What is your prior experience in this area?

*Have you written an application like this before? Have you made use of any required APIs before?*

I have only ever once dealt with a multi-view interface. We reviewed a tutorial that dipped into the material, but there is still so much that I can learn. I will also need to use some sort of database, or even create my own. I have used databases before but would like to learn more about them. 

### What are skills do you hope to acquire by completing this project?

*For example, you might be writing a networked application for the first time. Or, you may be writing an application that requires a particularly well designed user interface. Describe what you expect to learn by writing this application.*

As mentioned before, I was hoping this app could be a template for future apps. As I will be creating more multi-view apps in the future, and this UI could support these. If creating a similar app, I can go back to my git hub and download a commit that has a simple multi-view app. In the future I would likt to be able to refer to my past learning experiences and use the knowladge gained from them. 

### What dependencies, if any, will be required to complete your project?

*If you are writing a networked application, you might be using an API like Alamofire to simplify that part of the implementation. If you are writing an application that communicates over Bluetooth, you may be using the Core Bluetooth framework. Please list any expected dependencies for your project.*

This app will depend on the database that I chose to use. The level of difficulty will vary depending on if the database will be internal or external to the application.

NOTE from Mr. Gordon: You will need to make use of the FMDB library. You can remove my comment and add to your paragraph above. You can use the example app we wrote earlier this year as a starting point for having the FMDB library integrated into an application.


### Rate the personal difficulty level of this project.

This will be the most advanced application that I will have written. The process of building the app will include hours of work and lots of research. I am up for the challenge because I know I will benefit off this in the future. The knowledge gains will be worth my time. I have been looking forward to making multi-view applications for a long time. 


### Identify what you think your biggest challenge for successfully completing this ISP will be.

My biggest challenge in creating this application will be the UI. Getting the UI to work smoothly will be a project on its own. The user will need to navigate through different pages, so a user-friendly UI will be important. 


### Make storyboards to indicate the user interface and/or functionality of your application.

*In the section below, sketch out a plan for your application. This is where you will spend the majority of your time in completing the ISP proposal. Think through what you hope to create and as needed, adjust your responses to the questions above.*

The home screen is what the user will be shown when the app is opened. They will then have the option to browse all the games in the app, or to only browse the games playable to them due to their limitations. If "BROWSE ALL GAMES" is selected, the app will open a view with a list of all the games. If the user choses "BROWSE BY FILTER," they will be directed to a screen where they can select their limitations and be refered to a page that displays all the games available for them to play.

![Home](https://github.com/rsgc-jones-n/ics4u-isp-gamebible/blob/master/Game%20Bible/Home%20&%20Browse.png?raw=true)

After the user selects a game they would like to open, a gave view will be displayed customised to the game they selected. The game view will include the required materials and players, a discriptiom of the game, the rules and possibly other features like a video explaination etc. All of these different views will have back buttons so that the user will be able to easily navigate through the pages. 

![Game](https://github.com/rsgc-jones-n/ics4u-isp-gamebible/blob/master/Game%20Bible/Game.png?raw=true)

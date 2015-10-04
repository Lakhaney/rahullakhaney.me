# Planning our application
1. What are we building?
2. Who are we building it for?
3. Features we need in our app
4. User Stories
5. Data models
6. Pages we need in our app

## Questions
1. What are we building?
	- We are building a personal site. A place where we can blog, share examples of our work, and have people contact us.
2. Who are we building it for?
	- We are building it primarily for ourselves, but the same application also caters to the community. Through this website we will be sharing what we do, what we are learning by blogging. Learning through teaching is one of the best approaches. Show potential employers that we know what we are doing.
3. Features we need in our app
	- Posts
		- Create / Edit / Delete
		- Markdown
		- Syntax Highlighting
		- Comments (Disqus)
	- Projects (Work)
		- Create / Edit / Destroy
	- Contact
		- Contact form
		- Sendgrid
	- User (Devise)

## User Stories
As a blank, i want to be able to blank, so that blank
- As a user i want to be able to create posts so that i can share what i am learning on my blog
- As a user i want to be able to edit and destroy posts, so that i can manage my blog.
- As a user, i want to be able to write posts in markdown format so that it’s easy for me to write posts.
- As a user, I want to be able to highlight the various syntax of code blocks that i share on my blog.
- As a user, i want to show the visitors and potential employers examples of my work, or stuff i’ve built.
- As a user, i want to be able to have visitors contact me through a form on my website.
- As a user, i want visitors to be able to leave comments on my posts.

## Modelling our data
**Post**
	title:string
	content:string

**Project**
	title:string
	description:text
	link:string

**User**

## Pages we need in our app
- Home
- Posts
	- Posts#index
	- Posts#show
- Projects
	- Projects#index
	- Project#show
- Contact
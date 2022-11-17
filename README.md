# Furrly

Furrly is a cat rental app enabling users to add their cats for short term rental. Users are also able to see a list of available cats and apply for Rental Requests to be considered for rental.

* CS 4152, ESaaS project
* Student: Milad Nourian, UNI: mn3076
-----
* Github link for the project: https://github.com/MikeNourian/cs4152_proj_furrly
* Heroku link for the project (deployed): https://enigmatic-tundra-99740.herokuapp.com/

Notes about this project:
1. 2 days before the deadline for iteration 1 of this project, my teammate and I separated ways and I had to submit a very incomplete project as they were the ones who were responsible for multiple parts of the project left (Rspec and Stories)
2. I had to start this project over, and build a slightly different (but still related) app. So I have had to do a very considerable amount of additional work to get this project to this point.
3. Because I did this project solo (frontend, backend, testing, rspec, stories), I have not had the bandwidth to add the User Stories section with Cucumber.

I hope that you consider the issue in grading this project and make adjustments for what I have been able to do for the project, where the scope of this work is for 3 people.

# Instructions

* Steps to runs:
1. bin/rake db:setup 
2. rake db:migrate
3. bundle exec rerun -- rackup --port 3000

* Running rspec tests:
    * bundle exec rspec

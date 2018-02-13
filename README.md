ROLLO
=====
An internal administration tool that helps sales teams manage inbound sales leads.


Getting Started
---------------
This section will help you get the application up and running. 

### Bundle
Install gem dependencies using Bundler 
```
bundle install
```

### Initialize the Database
```
bundle exec rake db:create db:migrate db:seed
```

### Start the App
Once the server is running, the application can be accessed at http://localhost:3000
```
bundle exec rails s
```

Todo
----

**Feature**
* Finish implementing Elasticsearch

**Tests**
* Write rspec and cucumber tests 

**Stretch Goals**
* Redo front end with React 
* Assign admin roles and implement sign-in 
* Based on admin role have different settings availables 
* Improve design and usability of site 


Contribute
----------
* Clone https://github.com/diasandia/newrelic-rollo
* Create your feature branch (git checkout -b name-initials-new-feature)
* Add and commit your changes (git commit -am 'Add new feature')
* Push branch (git push origin name-initials-new-feature)
* Create new pull request. Include and answer the following in PR::

   Why is this needed?
   
   What is it suppose to do? 
   
   How can this manually be tested?
   
   Screenshots if needed. 

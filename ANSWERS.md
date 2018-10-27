# Q0: Why are these two errors being thrown?
Error 1: we haven't migrated our table/updated to the database
Error 2: we haven't made a pokemon model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

We seed the database through the seed file, which specifies 4 pokemon types, each with a name, ndex, and random level. @pokemon is assigned to one of these randomly. These pokemon that apprear don't have a trainer yet/

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

Button_to generates a form and submits to /capture with the current logged in trainer id.
We use patch bc we're partially updating a resource, specifically the trainer attribute of the captured pokemon.

# Question 3: What would you name your own Pokemon?

bigsad

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I redirected using a route prefix, which includes the path and request method. The prefix also takes in the current trainer as a parameter, since it's a patch and is updating info for that trainer.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

This line checks if the pokemon we tried creating has any errors, as accounted for in pokemon.rb. It then stores the message in the flash hash with key :error, which application.html.erb renders.


# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app

https://github.com/angelaliu1/rails-pokeportal

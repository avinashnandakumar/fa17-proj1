# Q0: Why is this error being thrown?

There was no model Pokemon for HomeController to refer to. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Random pokemon are appearing from the seed that we seeded into the database in the previous step. The common factor between all of the pokemon is that they are all pokemon. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
Capture_path(id: @pokemon) is passing on the pokemons id to capture method in the pokemon controller. Using that pokemon id we can find the pokemon through the id and change the pokemons trainer id to reflect the current users id. 

# Question 3: What would you name your own Pokemon?
Nilay

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

You have to redirect_to a path named "trainer_path" but since its an inherent path created implicitly by ruby you have to pass in the specific instance of the trainer object for it to work. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

It is showing an error message by using a partial in the application.html.erb file. It sets up a general way of displaying view and it just renders it when calling the @pokemon.errors.full_messages.to_sentence.



# Give us feedback on the project and decal below!

This project was actually pretty fun and furthered my understanding of how Ruby and Rails works. 

# Extra credit: Link your Heroku deployed app

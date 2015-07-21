##WDInstagram

### Prompt
We're going to create our own one-model (WD)Instagram app with CRUD capability. Our model is going to be an Entry.

When you're done, it will look something like this: [INSERT LINK]

An Entry has the following:

* author
* photo_url
* date_taken

Your app should have the following RESTful actions:

* index (displays all entries)
* show (displays a specific entry)
* new (displays a form to create a new entry)
* create (saves a new entry it to the database)
* edit (displays a form for editing a particular entry)
* update (takes input from the edit form and updates the entry in the db appropriately)
* destroy (deletes a specific entry from the database)

### Instructions

1. Create an `app.rb` file for your Sinatra app
2. Create a Gemfile with all the dependencies required by your app
  * Once that's ready, run: `$ bundle install`
3. Create a database
  * `$ createdb wdinstagram`
4. Create a schema file and generate a table for your Entry model.
  * Create a config folder in your working folder: `$ mkdir config`
  * Create a schema file in that `config` folder: `$ config/wdinstagram_schema.sql`
  * Migrate your schema into PSQL: `$ psql -d wdinstagram < config/wdinstagram_schema.sql`
5. Create and run a seed file.
  * Create: `$ touch config/seeds.rb`
5. Create routes for your app, mapping them to the RESTful actions listed above
6. Create the necessary views for the actions above

### Bonus

1. Add validation: name and photo_url need to be present, and the date_taken should be more recent than 10/1/2010.
2. Add a column for `caption` to your Entry, which is a text description of the shot. You'll need to generate a database migration for this and then update the rest of your app to be able to display these captions.

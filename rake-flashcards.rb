#Pattern for Q and A:
#q = "any character except newline"
#a = "."

question_pool = [ "List versions of all Rails frameworks and the environment",
"Remove old compiled assets",
"Remove compiled assets",
"Load asset compile environment",
"Compile all the assets named in config.assets.precompile",
"Create the database from DATABASE_URL or config/database.yml for the current Rails.env (use db:create:all to create all dbs in the config)",
"Drops the database using DATABASE_URL or the current Rails.env (use db:drop:all to drop all databases)",
"Load fixtures into the current environment's database. Load specific fixtures using FIXTURES=x,y. Load from subdirectory in test/fixtures using FIXTURES_DIR=z. Specify an alternative path (eg. spec/fixtures) using FIXTURES_PATH=spec/fixtures.",
"Migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog).",
"Display status of migrations",
"Rolls the schema back to the previous version (specify steps w/ STEP=n).",
"Clear a db/schema_cache.dump file.",
"Create a db/schema_cache.dump file.",
"Create a db/schema.rb file that can be portably used against any DB supported by AR",
"Load a schema.rb file into the database",
"Load the seed data from db/seeds.rb",
"Create the database, load the schema, and initialize with the seed data (use db:reset to also drop the db first)",
"Dump the database structure to db/structure.sql. Specify another file with DB_STRUCTURE=db/my_structure.sql",
"Retrieves the current schema version number",
"Generate docs for the app -- also available doc:rails, doc:guides (options: TEMPLATE=/rdoc-template.rb, TITLE=Custom Title)",
"Truncates all *.log files in log/ to zero bytes (specify which logs with LOGS=test,development)",
"Prints out your Rack middleware stack",
"Enumerate all annotations (use notes:optimize, :fixme, :todo for focus)",
"Enumerate a custom annotation, specify with ANNOTATION=CUSTOM",
"Applies the template supplied by LOCATION=(/path/to/template) or URL",
"Update configs and some other initially generated files (or use just update:configs, update:bin, or update:application_controller)",
"Print out all defined routes in match order, with names. Target specific controller with CONTROLLER=x.",
"Generate a cryptographically secure secret key (this is typically used to generate a secret for cookie sessions).",
"Report code statistics (KLOCs, etc) from the application",
"Runs test:units, test:functionals, test:integration together",
"Run tests quickly by merging all types and not resetting db",
"Run tests quickly, but also reset db",
"Run tests for {:recent=>[test:deprecated, test:prepare]}",
"Run tests for {:uncommitted=>[test:deprecated, test:prepare]}",
"Displays all time zones, also available: time:zones:us, time:zones:local -- filter with OFFSET parameter, e.g., OFFSET=-6",
"Clear session, cache, and socket files from tmp/ (narrow w/ tmp:sessions:clear, tmp:cache:clear, tmp:sockets:clear)",
"Creates tmp directories for sessions, cache, sockets, and pids"

  ]

answer_pool = [ "about",
"assets:clean",
"assets:clobber",
"assets:environment",
"assets:precompile",
"db:create",
"db:drop",
"db:fixtures:load",
"db:migrate",
"db:migrate:status",
"db:rollback",
"db:schema:cache:clear",
"db:schema:cache:dump",
"db:schema:dump",
"db:schema:load",
"db:seed",
"db:setup",
"db:structure:dump",
"db:version",
"doc:app",
"log:clear",
"middleware",
"notes",
"notes:custom",
"rails:template",
"rails:update",
"routes",
"secret",
"stats",
"test",
"test:all",
"test:all:db",
"test:recent",
"test:uncommitted",
"time:zones:all",
"tmp:clear",
"tmp:create"


]


def continue?
  print "Do you want to continue? (Y/N):"
  response = gets.chomp().downcase
  if response == 'y'
    exit_app = false
  elsif response == 'n'
    exit_app = true
  end
    return exit_app
end


puts "*** Test your knowledge of Rake Tasks***"
puts "Based on terminologies from $ rake -T"


exit_app = false

while exit_app == false
  #pick a random question
  num = Random.rand(question_pool.length)

  question = question_pool[num]
  answer = answer_pool[num]
  puts ''
  puts "Q: What rake task does the following: " + question + "?"
  print "A: "
  response = gets.chomp()
  if response == answer
    puts "Correct"
  else
    puts "Incorrect. The answer is: #{answer}"
  end

  exit_app = continue?

end
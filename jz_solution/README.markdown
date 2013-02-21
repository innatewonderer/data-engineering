#Wellcome to [@jzueva's](https://twitter.com/jzueva) solution to LivingSocial CSV file upload challenge

###Installation
```ruby
git clone git@github.com:innatewonderer/data-engineering.git
cd data-engineering
cd jz-solution
bundle install
```

My application is utilizing `sqlite3`, please modify Gemfile with DB solution of your choice.
Edit `database.yml` file accordingly.

```ruby
rake db:migrate
rails s
```

###Helpful resources
[Ruby CSV docs](http://ruby-doc.org/stdlib-1.9.2/libdoc/csv/rdoc/CSV.html)
[CSV RailsCase](http://railscasts.com/episodes/396-importing-csv-and-excel)
[Devise Gem](https://github.com/plataformatec/devise)

# README

# To install this app you need Ruby 2.5.1 and rails 5.2.4.1

### 1- Clone the App
### 2- run `bundle install`
### 2- run rails `db:create` && `rails db:migrate` && `rails db:seed`

### Then install the EasyFilter Gem by adding this to your gem file
### `XXXXXXXXXXXXXXX`

### After than run `rails g easy_filter:install` then `rails db:migrate`
### Mount gem routes by adding this line to your routes file `mount EasyFilter::Engine => "/easy_filters"`

### Start rails server `rails s` and visit `localhost:3000/easy_filters/filters`

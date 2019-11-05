# Welcome to Toulousebrite-Lite!
=================

Welcome to our Toulousebrite website! This website is an Eventbrite-like website. The purpose of the site is to bring people together through human experiences in our beautiful city of Toulouse. Discover events that fit your passions and/or create your own. This website was created using Ruby on Rails.

The app is hosted at :  [https://toulousebrite.herokuapp.com/]

## For the project of the day we did:
==================

 We had to install Devise in the Gemfile, and connect the model User to Devise.
 We had to connect Bootstrap to our application.
 We fought hard with bootstrap and css to get beautiful (I guess) and readable pages.

 **Warning** : If you don't receive any mail, it might because we were banned (again) from SendGrid. In this cas you cas test the mails by adding `config.action_mailer.delivery_method = :letter_opener` in file `config/environments/development.rb`

## How to run this app ?
=================

**Tap in your terminal:**
- `$ git clone https://github.com/pitswd/the-gossip-project.git`
- `$ bundle install`
- `$ rails db:migrate`
- `$ rails db:seed`
- Then go to localhost:3000

=====
 if you encounter any problem with the seed, you have to drop the database : 
- `$ rails db:drop`
- `$ rails db:create`
- `$ rails db:migrate`

======
To verify migration, do:
- `$ rails db:migrate:status`
- `$ rails db:seed`
- `$ rails server`

**Have fun!**

@Polo @Thomas Delage @Zélig @Barbara Cano
 THP-Toulouse session 10
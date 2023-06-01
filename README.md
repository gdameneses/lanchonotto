<h1>Lanchonotto</h1>
Many restaurants struggle with paying fees to big companies just to get their business online. With Lanchonotto you can simply host your website with almost no database storage needed and you will have your own website that skips middle people. It links your kitchen to your customer. That's it. No fees, no apps. Your site.

Lanchonotto is a web-based app aimed for restaurant owners who want to skip middlemans such as Uber Eats and similars.
It allows the user to browse through your options of food/drink items, add them to order and checkout.

Currently, the app doesn't have a payment confirmation method and as it stands, it will just send a message to the restaurant with the customer's request so the restaurant can confirm with the user and pay on delivery. This can easily be changed into something fancier with payment confirmation using the big payment APIs available around.

It currently hosts a pizzaplace website, where the user can select 4 different sizes, add one flavour for every 4 pieces of pizza, add a custom crust and add drinks to the order. The price is based size, topping price and crust. 

Fun enough, it carries a shopping-cart for the customer based on session, so it doesn't need authentication, but keeps the user's order in place. no matter what part of the page they're on.

Estimated time of deploy: 02/06/2023.


For developers and techy geeks:

* Ruby version 3.2.2

* System dependencies
  Simpleform, cssbundling-rails, jsbundling-rails, bootstrap 5 and postgresql
  
    Make sure to check "how to add bootstrap to rails 7 from mixandgo" as it comes with foreman built in and some other really cool stuff.

* Configuration
  You don't actually need much. Just run the server by running the command 'dev' to make your SASS compile quick into the CSS.
  
* Database creation
  Rails db:create
  Rails db:migrate
  Rails db:seed



# Lanchonotto
Live version at https://lanchonotto.fly.dev

Many restaurants struggle with paying fees to big companies just to get their business online. With Lanchonotto you can simply host your website with almost no database storage needed and you will have your own website that skips middle people. It links your kitchen to your customer. That's it. No fees, no apps. Your site.



<strong>

Lanchonotto</strong> is a web-based app aimed for restaurant owners who want to skip middlemans such as Uber Eats and similars.

It allows the user to browse through your options of food/drink items, add them to order and checkout.



Currently, the app doesn't have a payment confirmation method and as it stands, it will just send a message to the restaurant with the customer's request so the restaurant can confirm with the user and pay on delivery. This can easily be changed into something fancier with payment confirmation using the big payment APIs available around.



It currently hosts a pizzaplace website, where the user can select 4 different sizes, add one flavour for every 4 pieces of pizza, add a custom crust and add drinks to the order. The price is based size, topping price and crust.



Fun enough, it carries a shopping-cart for the customer based on session, so it doesn't need authentication, but keeps the user's order in place. no matter what part of the page they're on.



## Specs
*For developers and techy geeks:*
 * **Ruby** version 3.2.2
 * **Rails** version 7.0.5
 * System dependencies
	 * Simpleform
	 * cssbundling-rails
	 * jsbundling-rails
	 * bootstrap 5
	 * postgresql


Make sure to check "*[how to add bootstrap to rails 7](https://mixandgo.com/learn/ruby-on-rails/how-to-install-bootstrap)*" from mix and go. As it comes with foreman built in and some other really cool stuff.



## Configuration

You don't actually need much.
Once this repo is clonned:

 - Start postgresql server
 - Run bundle install and yarn add to make sure you have what it takes!
 - Run bin/rails db:create
 - Run bin/rails db:migrate
 - Run bin/rails db:seed
 - Start your server by running bin/dev (foreman script that watches your SASS and compile a lot quicker than old rails pipeline.

- I have deployed it on fly.io and the proccess was EASY (and free ♥).

## Details of development

I don't know, maybe you are interested in how the app works (even though it's a really simple CRUD rails app).

 - User journey is pretty simple, user falls on landing page, starts building an *order* when clicking on "Pedir" (Order in portugues of course).

 - At this moment, a new @order is created, linked to current session (so you don't need the user to login just to order a pizza!) and also a new @pizza is created so the user can add Toppings to it.

 - A pizza can only have ONE topping for every FOUR pieces. (You will see a beautiful error message popping up if you try differently).
 - Pizza price is based on 3 factors. Size * topping_price * crust.

 - Once the order is set up with pizzas and drinks, the user fills out delivery form and it turns the order items into a string that goes on whatsapp (yep) so the restaurant owner can confirm payment details with customers.
 - Next steps for development are:
	 - MOBILE FRIENDLY! PLEASE!
	 - Touches on front-end, a footer and some content for homepage.
	 - Make better use of Rails' turbo features to make it seem more responsive and fast.
	 - Get a payment API linked or possibility to link as an option for fully automated page.

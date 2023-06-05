class OrdersController < ApplicationController
  def checkout
  end

  def fill_address

  end

  def confirm
    str = []
    @order.products.each do |p|
      prod_str = []
      if p.item_type == "Pizza"
        prod_str = []
        prod_str << "*-#{p.item_type}-(x#{p.item.size})*"
        p.item.toppings.each do |t|
          prod_str << "--#{t.name}"
        end
        prod_str << "Borda-#{p.item.crust.capitalize}%0a"
        str << prod_str
      else
        prod_str << "*#{p.item.name}*%0a"
        str << prod_str
      end
    end
    str << "RS#{'%.2f' % (@order.price / 100)}"
    @street = params[:street]
    @postcode = params[:postcode]
    @ref = params[:reference]
    @phone = params[:phone]
    @notes = params[:notes]
    str << [@street, @postcode, @ref, @phone, @notes]
    @address =[]
    @address << [@street, @postcode, @ref, @phone, @notes]
    str = str.join('%0a')
    str = str.gsub! /\s+/, '+'
    @str = generate_link(str)
    redirect_to checkout_path(address: @address, link: @str)
  end

  def generate_link(str)
    @str = "https://api.whatsapp.com/send/?phone=%2B5541998579126&text=#{str}&type=phone_number&app_absent=0"
  end
end

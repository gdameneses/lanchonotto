// pizzas.js
$(document).on('turbolinks:load', function () {
  $('#add-topping-choice').on('click', function (e) {
    e.preventDefault();

    $.ajax({
      url: $(this).attr('href'),
      dataType: 'script',
      success: function () {
        console.log('Topping choice added!');
      },
      error: function () {
        console.error('Failed to add topping choice.');
      }
    });
  });
});

console.log('loaded pizzas.js')

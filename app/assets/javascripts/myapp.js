var ready;

function Order(item, quantity) {
  this.item = item;
  this.quantity = quantity;
}

getProducts = function() {

  //ajax to GET all products
  $.ajax({
   type: 'GET',
   url: '/products/index'
 }).done(function(data){
  $('.allOrders').html(data);
});
}

getOrders = function(picked) {

  // fire another ajax request to GET order data

  $.ajax({
    type: 'GET',
    url: '/orders/create'
  }).done(function(data){
    $(picked).append(data);
  });

}

ready = function() {

  //slide the sidebar on click

  $(".ui.icon.button.mini.yoshi").on('click', function(){
    $('.demo.sidebar').sidebar('toggle');
  })

  //console log the id of the product item ordered 

  $(".addToList").on('click', function(){
    var id = $(this).attr('data-id');
    console.log(id);
  });

  //ajax call to generate list of all products on click

  $('.allItems').on('click', function(){
    getProducts();
  });

  // prevent default on orderUp by defining this high up in the DOM tree

  $(document).on('click', '.orderUp', function(e){
    e.preventDefault();
    var id = $(this).data('id');
    $('.small.modal').modal('show');

    $(document).on('click', '.saveOrder', function(e){
      e.preventDefault();
      
      // var myorder = new Order(id, 1);
      // console.log(myorder);
      // $('.small.modal').modal('hide');
    });

  });



}

$(document).ready(ready);
$(document).on('page:load', ready);

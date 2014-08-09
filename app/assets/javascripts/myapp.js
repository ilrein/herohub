var ready;

activeItem = function() {
  var pathname = window.location.pathname;
  console.log(pathname);

  if (pathname == '/orders/index') {
    $('#wish_list').addClass('active');
  };

  if (pathname == '/locations/index') {
    $('#locations_list').addClass('active');
  };

  if (pathname == '/') {
    $('#login').addClass('active');
  };

  if (pathname == '/orders/new') {
    $('#products_list').addClass('active');
  };

  if (pathname == '/pos') {
    $('#all_pos').addClass('active');
  };
};

addToList = function() {

  $('.orderUp').on('click', function(){
    console.log('success!');
    // e.preventDefault();
    // $('.small.modal').show();
  });

}

getAllProducts = function() {
  $.ajax({
    url: '/products/index'
  }).done(function(data) {
    console.log('done');
    $('.theBody').html(data);
  });
}

getAllTooltips = function() {
  $('.orderUp').qtip({
    content: 'Add +1 of this item to the wishlist',
    show: 'mouseover',
    hide: 'mouseout'
  });

  $('.allItems').qtip({
    content: 'Check the master list of all items',
    show: 'mouseover',
    hide: 'mouseout'
  });

  checkMyId = function() {

    var myId = $('.orderId').attr('id');
    var myId2 = $('.location').attr('id');

    $('.orderId').qtip({
      content: myId,
      show: 'mouseover',
      hide: 'mouseout'
    });

    $('.location').qtip({
      content: myId2,
      show: 'mouseover',
      hide: 'mouseout'
    });

  };



}

ready = function() {

  getAllTooltips();
  checkMyId(); 
  activeItem(); 

  //slide the sidebar on click

  $(".ui.icon.button.mini.yoshi").on('click', function(){
    $('.demo.sidebar').sidebar('toggle');
  })
  
  $(document).on('click', '.preventme', function(e){
    e.preventDefault();
    getAllProducts();
    getAllTooltips();
  });

}

$(document).ready(ready);
$(document).on('page:load', ready);

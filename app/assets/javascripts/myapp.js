var ready;

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
    content: 'Generate a new order with +1 of this item',
    show: 'mouseover',
    hide: 'mouseout'
  });

  $('.allItems').qtip({
    content: 'Check the master list of all items',
    show: 'mouseover',
    hide: 'mouseout'
  });

}

ready = function() {

  getAllTooltips();  

  //slide the sidebar on click

  $(".ui.icon.button.mini.yoshi").on('click', function(){
    $('.demo.sidebar').sidebar('toggle');
  })
  
  $(document).on('click', '.preventme', function(e){
    e.preventDefault();
    getAllProducts();
  });

}

$(document).ready(ready);
$(document).on('page:load', ready);

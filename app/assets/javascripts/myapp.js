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


ready = function() {

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

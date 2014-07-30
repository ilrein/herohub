var ready;
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
    $.ajax({
      type: 'GET',
      url: '/products/index'
    }).done(function(data){
      $('.allOrders').html(data);
    });
  });

  // prevent default on orderUp by defining this high up in the DOM tree

  $(document).on('click', '.orderUp', function(e){
    e.preventDefault();
  });

}

$(document).ready(ready);
$(document).on('page:load', ready);

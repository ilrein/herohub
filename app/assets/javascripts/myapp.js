var ready;
ready = function() {

  function Order(){
    return true;
  }

  //slide the sidebar on click

  $(".ui.icon.button.mini.yoshi").on('click', function(){
    $('.demo.sidebar').sidebar('toggle');
  })

  //console log the id of the product item ordered 

  $(".addToList").on('click', function(){
    var id = $(this).attr('data-id');
    console.log(id);
  });

}

$(document).ready(ready);
$(document).on('page:load', ready);

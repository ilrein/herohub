var ready;
ready = function() {

  function Order(){
    //return true;
  }

  $(".ui.icon.button.mini.yoshi").on('click', function(){
    $('.demo.sidebar').sidebar('toggle');
  })
  $(".addToList").on('click', function(){
    var id = $(this).attr('data-id');
    console.log(id);
  });
  $('.appendme').on('click', function(){
    $.ajax({
      //url: "orders/index"
    });
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);

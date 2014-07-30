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

};

$(document).ready(ready);
$(document).on('page:load', ready);

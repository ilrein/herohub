var ready;

addToList = function() {

  $('.orderUp').on('click', function(){
    console.log('success!');
    // e.preventDefault();
    // $('.small.modal').show();
  });

}

ready = function() {

  //slide the sidebar on click

  $(".ui.icon.button.mini.yoshi").on('click', function(){
    $('.demo.sidebar').sidebar('toggle');
  })

  
  // $(document).on('click', '.OK', function(){
    
  // });

}

$(document).ready(ready);
$(document).on('page:load', ready);

$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
var bodyElement = $('body');
$('h1')
//RELEASE 2: 
$('h1').css('color','red');
$('h1').css('border','dashed');
$('h1').css('visible','hidden');
$('.mascot h1').html("YOUR COHORT MASCOT"); 
//RELEASE 3: Event Listener
$('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://www.evodivo.com/images/firefly2.jpg')
  });

    $('img').on('mouseleave', function(e){
     e.preventDefault()
    $(this).attr('src', 'dbc_logo.jpg')
  });
//RELEASE 4 : Experiment on your own
 $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).animate({height:'300px'},'slow')
  });
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.

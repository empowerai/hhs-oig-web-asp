
		
// Create the tooltips only on document load
$(document).ready(function() 
{
   // Match all link elements with href attributes within the content div
   $('sup[title]').qtip(
   {
     /*  content: 'Some basic content for the tooltip', // Give it some content, in this case a simple string */
      hide: { fixed: true, delay: 1500 }
      
   });
});


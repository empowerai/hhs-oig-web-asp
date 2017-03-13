<script type="text/javascript">
//populate new $_GET javascript array with all posted $_GET variables
function getQueryParams(qs) {
    qs = qs.split("+").join(" ");
    var params = {},
        tokens,
        re = /[?&]?([^=]+)=([^&]*)/g;

    while (tokens = re.exec(qs)) {
        params[decodeURIComponent(tokens[1])]
            = decodeURIComponent(tokens[2]);
    }

    return params;
}

var $_GET = getQueryParams(document.location.search);

jQuery(function() {
//generate options for daterange inputs, 1995 to present
	currentYear = (new Date).getFullYear();
	for( i=1995; i <= currentYear; i++){
	  $('#daterange-start, #daterange-end').append('<option value="' + i + '">'+ i +'</option>');
	}
	//preselect present year for daterange-end input
	$('#daterange-end option[value="' + currentYear + '"]').attr('selected','selected');
	
	
	//carry over posted values from text fields
	$('form input:text').each(function(){
		$(this).val( $_GET[$(this).attr('name')] );
	});
	
	//carry over posted values from select lists
	$('form  option').each(function(){
		if ( $(this).attr('value') ==  $_GET[ $(this).parents('select').attr('name') ] ){
		$(this).attr('selected', 'selected');
		}
	});

	
	
});

</script>
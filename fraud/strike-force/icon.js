			jQuery('.pa').qtip({
				content: {
						text: 'OIG Enforcement Case'
				},
				style: {
					width: {
						max: 250 
						} 
				},
				hide: {
						 when: 'mouseout',
						 fixed: true,
						 delay: 700
				 },
				 style: {
						classes: 'ui-tooltip-light ui-tooltip-shadow ui-tooltip-rounded'
				 }
			});
      
      
      
$('.pa').hover(
	function () {			
		title = $(this).attr('title');
		$(this).attr({'title':''});
	}, 
	function () {
		$(this).attr({'title':title});
	}
);      
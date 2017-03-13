

// strike force

			jQuery('.sf').qtip({
				content: {
						text: 'Medicare Fraud <a target="_blank" href="/fraud/strike-force/">Strike Force Case</a>'
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
      
      
      
$('.sf').hover(
	function () {			
		title = $(this).attr('title');
		$(this).attr({'title':''});
	}, 
	function () {
		$(this).attr({'title':title});
	}
);      

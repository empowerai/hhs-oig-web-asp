	jQuery(document).ready(function(){ 
			// Site Navigation. Superfish implementation.
			jQuery('ul.sf-menu').superfish({
				hoverClass: 'sfhover',
				delay: 800, // Adds a slight delay onmouseout 
				animation: {opacity:'show', height:'show'},
				autoArrows: false,
				dropShadows: false,  
				speed:       'slow'
				
			  }); 	
				  
		    // external links get a tooltip
			jQuery('a.exit').qtip({
				content: {
						text: 'External link, please review our disclaimer <a href="/notices/disclaimers.asp">here</a>'
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
				 },
				 show: { 
					when: { event: 'focus' }
				}
			});		
			jQuery('a.exitImage').qtip({
				content: {
						text: 'External link, please review our disclaimer <a href="/notices/disclaimers.asp">here</a>'
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
				 },
				 show: { 
					when: { event: 'focus' }
				}
			});	
			jQuery('a.ignet').qtip({
				content: {
						text: 'Other Inspectors General'
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
			jQuery('a.twitter').qtip({
				content: {
						text: 'External link, please review our disclaimer <a href="/notices/disclaimers.asp">here</a>'
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
		
			jQuery('a.heat').qtip({
				content: {
						text: 'External link, please review our disclaimer <a href="/notices/disclaimers.asp">here</a>'
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


			// external links get an image at the end attached that links to a disclaimer page
			jQuery('#bodyContainer a.exit').filter(function() {
				return this.hostname && this.hostname !== location.hostname;
			}).after(' <a href="/notices/disclaimers.asp"><img src="/images/icon_leavesite_gray.gif" class="externalLink" alt="External link" /></a>');
			
			// image is removed in some instances due to design priority
			jQuery("a.exit ~ img").css({border:"none",background:"none",position:"relative",top:"0px",padding:"0"})
			
			
	
			// Removes last border/separator css
			jQuery("#nav ul li ul li:last-child").css({border:"none"})
			jQuery("table.leie_search_results tr:odd").addClass("odd")
			jQuery("#enforcementCol dl dd:last-child").css({border:"none"})	
			jQuery("#reportsCol dl dd:last-child").css({border:"none"})
			jQuery("#nav ul li:first-child a").css({background:"none"})
			jQuery("#footerBottomContent ul li:last-child").css({border:"none"})		
			jQuery("#footerBottomContent ul li:last-child").css({border:"none"})	
			jQuery("#breadcrumbs ul li:last-child").css({background:"none"})	
			jQuery("#subNav ul li:last-child").css({border:"none"})
		    jQuery("#latestFeed dl dd:last-child").css({border:"none"})
			jQuery("p ~ ul").css({margin:"0 0 10px 25px "})
		    jQuery("h2 ~ a.exit ~ a").css({"float":"right "})
		  
		
		 
		// I'm looking for secton
		jQuery('#chooseTopic a').click(function() {
			  jQuery("#topicSelection").fadeIn(400)
				return false;
		});  
		jQuery('#closeButton').click(function() {
				jQuery('#topicSelection').fadeOut(400)
				return false;
		});
		jQuery('#chooseTopic a').bind('keypress', function(e){ // Binds enter for I'm looking for section for 508 compliance
				if(e.keyCode==13){
            jQuery("#topicSelection").show(400)
        }
		});
		
		

		// Reset Font Size
		 var originalFontSize = jQuery('#mainBody').css('font-size');
		 var originalFontSize1 = jQuery('h2').css('font-size');
		 var originalFontSize2 = jQuery('#leftContentInterior').css('font-size');
		 var originalFontSize3 = jQuery('#subNav').css('font-size');
			jQuery(".resetFont").click(function(){
			jQuery('#mainBody').css('font-size', originalFontSize);
			jQuery('h2').css('font-size', originalFontSize1);
			jQuery('#leftContentInterior').css('font-size', originalFontSize2);
			jQuery('#subNav').css('font-size', originalFontSize3);
		
		  });
		 // Increase Font Size
		  jQuery(".increaseFont").click(function(){
			var currentFontSize = jQuery('#mainBody').css('font-size');
			var currentFontSize1 = jQuery('h2').css('font-size');
			var currentFontSize2 = jQuery('#leftContentInterior').css('font-size');
			var currentFontSize3 = jQuery('#subNav').css('font-size');
			var currentFontSizeNum = parseFloat(currentFontSize, 10);
			var newFontSize = currentFontSizeNum*1.2;
			var newFontSize1 = currentFontSizeNum*1.7;
			jQuery('#mainBody').css('font-size', newFontSize);
			jQuery('h2').css('font-size', newFontSize1);
			jQuery('#leftContentInterior').css('font-size', newFontSize);
			jQuery('#subNav').css('font-size', newFontSize);
			return false;
		  });
		  
		 // Decrease Font Size
		  jQuery(".decreaseFont").click(function(){
			var currentFontSize = jQuery('#mainBody').css('font-size');
			var currentFontSize1 = jQuery('h2').css('font-size');
			var currentFontSize2 = jQuery('#leftContentInterior').css('font-size');
			var currentFontSize3 = jQuery('#subNav').css('font-size');
			var currentFontSizeNum = parseFloat(currentFontSize, 10);
			var newFontSize = currentFontSizeNum*0.8;
			var newFontSize1 = currentFontSizeNum*1;
			jQuery('#mainBody').css('font-size', newFontSize);
			jQuery('h2').css('font-size', newFontSize);
			jQuery('#leftContentInterior').css('font-size', newFontSize);
			jQuery('#subNav').css('font-size', newFontSize);
			return false;
		  });

	
  });
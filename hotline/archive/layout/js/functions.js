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
			jQuery('a.twitter, .twitter').qtip({
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
			// 508 accessibility for external links
				jQuery('a.exit').focus(function() {
						$(this).after("<a class='disclaimer508' href='/notices/disclaimers.asp'>Click here to review our disclaimers</a>")
				});	
				jQuery('a.twitter, .twitter').focus(function() {
						$(this).after("<a class='disclaimer508' href='/notices/disclaimers.asp'>Click here to review our disclaimers.</a>")
				});
		
			
			// external links get an image at the end attached that links to a disclaimer page
			jQuery('#bodyContainer a.exit').filter(function() {
				return this.hostname && this.hostname !== location.hostname;
			}).after(' <a href="/notices/disclaimers.asp"><img src="/images/icon_leavesite_gray.gif" class="externalLink" alt="External link" /></a>');
			
			// image is removed in some instances due to design priority
			jQuery("a.exit ~ img").css({border:"none",background:"none",position:"relative",top:"0px",padding:"0"})
			
			
	
			// Removes last border/separator css
			jQuery("#nav ul li ul li:last-child").css({border:"none"})
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
		  
		  // Removing browser jump on captcha links
		   jQuery('.captcha a').click(function(){
			return false;
			});
		 
		// I'm looking for secton
		jQuery('#chooseTopic a').click(function() {
			  jQuery("#topicSelection").fadeIn(400)
				return false;
		});  
		jQuery('#closeButton').click(function() {
				jQuery('#topicSelection').fadeOut(400)
				return false;
		});
		
		// Binds enter for I'm looking for section for 508 compliance
		jQuery('#chooseTopic a').bind('keypress', function(e){ 
				if(e.keyCode==13){
            jQuery("#topicSelection").show(400)
        }
		});
		
		//Accordion on the interior pages - e.g. faq pages
		jQuery('.acc_container').hide(); //Hide/close all containers
		//jQuery('.acc_trigger:first').addClass('active').next().show(); //Add "active" class to first 		trigger, then show/open the immediate next container
		
		//Opens accordion if hash #exclusions is present
		if(window.location.hash) {
			jQuery('h2#exclusions').addClass('active').next().slideDown(600);
		}		

		//On Click
		jQuery('.acc_trigger').click(function(){
		
			if( jQuery(this).next().is(':hidden') ) { //If immediate next container is closed...
				jQuery('.acc_trigger').removeClass('active').next().slideUp(600); //Remove all "active" state and slide up the immediate next container
				jQuery(this).toggleClass('active').next().slideDown(600); //Add "active" state to clicked trigger and slide down the immediate next container	
				//jQuery(".acc_trigger").add(function(event){
				//	 window.location.hash=this.hash;
				//});					
			}
			else {
			jQuery(this).removeClass('active').next().slideUp(600)
			}
			return false; //Prevent the browser jump to the link anchor
			});
		
		// This is a work around to server side selection of the active sub navigation item done with jQuery
		var path = location.pathname.substring(1);
		if ( path )
		 jQuery('#subNav ul li a[href$="' + path + '"]').attr('class', 'current');
	
		// third level navigation revealeds
		if( jQuery("#subNav ul ul a").hasClass("current") )  
			jQuery("#subNav ul ul a.current").parent().parent().prev("a").addClass("current")
		// fourth level navigation revealeds
		if( jQuery("#subNav ul ul ul a").hasClass("current") )  
			jQuery("#subNav ul ul a.current").parent().parent().prev("a").addClass("current")
		
		// Reveals third level navigation if the a has a class .current
	     jQuery("a.current ~ ul").show(400) 
		 

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



		// Fancybox triggers
			jQuery("a.fancybox").fancybox({
					'overlayShow'	: true,
					'transitionIn'	: 'elastic',
					'transitionOut'	: 'elastic',
					    'hideOnContentClick': true,
                'autoScale' : false,
                'centerOnScroll': false
				});
		
			jQuery("a.fancybox-iframe").fancybox({
					'overlayShow'	: true,
					'width' : '65%',
					'height' : '70%',
					'transitionIn'	: 'elastic',
					'type':'iframe',
					'transitionOut'	: 'elastic',
					    'hideOnContentClick': true,
                'autoScale' : false,
                'centerOnScroll': false
				});
				
		 //Open pdf in new window automatically		
				jQuery(function(){
					jQuery('A, AREA').filter(function(){
						return (!this.target && (this.href.indexOf(window.location.hostname) == -1 || this.href.match(/\.pdf$/i)));
					}).attr('target', '_blank');
				});
				
				
				
    // sticky -- commented out 03/20/2012 - Sorry Sergey!  We hasing too many problems with sticky! :) <3
				
/*				jQuery.waypoints.settings.scrollThrottle = 30;
				jQuery('#leftSideInterior').waypoint(function(event, direction) {}, {
					offset: '-100%'
				}).find('.featuredContent').waypoint(function(event, direction) {
					$(this).parent().toggleClass('sticky', direction === "down");
					event.stopPropagation();
				});
				jQuery('#footerContainer').waypoint(function(event, direction) {
					$('.top').toggleClass('hidden', direction === "down");
				}, {
					offset: '100%'
				}).find('.featuredContent').waypoint(function(event, direction) {
					$(this).parent().toggleClass('hidden', direction === "up");
					event.stopPropagation();
				});
*/
		
		
  }); 
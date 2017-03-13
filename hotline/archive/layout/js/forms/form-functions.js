jQuery(function(){
    //original field values
    var field_values = {
            //id        :  value
            'username'  : 'username',
            'password'  : 'password',
            'cpassword' : 'password',
            'firstname'  : 'first name',
            'lastname'  : 'last name',
            'email'  : 'email address'
    };

		// configure your validation
    //inputfocus
    jQuery('input#username').inputfocus({ value: field_values['username'] });
    jQuery('input#password').inputfocus({ value: field_values['password'] });
    jQuery('input#cpassword').inputfocus({ value: field_values['cpassword'] }); 
    jQuery('input#lastname').inputfocus({ value: field_values['lastname'] });
    jQuery('input#firstname').inputfocus({ value: field_values['firstname'] });
    jQuery('input#email').inputfocus({ value: field_values['email'] }); 
    jQuery('select#state').inputfocus({ value: field_values['state'] }); 

    //reset progress bar
    jQuery('#progress').css('width','0');
    jQuery('#progress_text').html('0% Complete');

    //first_step
    jQuery('form').submit(function(){ return false; });
    jQuery('#submit_first').click(function(){
        //remove classes
        jQuery('#first_step input').removeClass('error').removeClass('valid');

        //ckeck if inputs aren't empty
				
        var fields = jQuery('#first_step input[type=text], #first_step input[type=password]');
        var error = 0;
        fields.each(function(){
            var value = jQuery(this).val();
						jQuery("select").val() != "select";
            if( value.length<4 || value==field_values[jQuery(this).attr('id')] ) {
                jQuery(this).addClass('error');
               // jQuery(this).effect("shake", { times:6 }, 80);
                
                error++;
            } else {
                jQuery(this).addClass('valid');
            }
					

        });  
       
        if(!error) {
            if( jQuery('#password').val() != jQuery('#cpassword').val() ) {
                    jQuery('#first_step input[type=password]').each(function(){
                        jQuery(this).removeClass('valid').addClass('error');
                       // jQuery(this).effect("shake", { times:3 }, 50);
                    });
                    
                    return false;
            } else {   
                //update progress bar
                jQuery('#progress_text').html('33% Complete');
                jQuery('#progress').css('width','113px');
                
                //slide steps
                jQuery('#first_step').slideUp();
                jQuery('#second_step').slideDown();     
            }               
        } else return false;
    });


    jQuery('#submit_second').click(function(){
        //remove classes
        jQuery('#second_step input').removeClass('error').removeClass('valid');

        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}jQuery/;  
        var fields = jQuery('#second_step input[type=text]');
        var error = 0;
        fields.each(function(){
            var value = jQuery(this).val();
            if( value.length<1 || value==field_values[jQuery(this).attr('id')] || ( jQuery(this).attr('id')=='email' && !emailPattern.test(value) ) ) {
                jQuery(this).addClass('error');
              //  jQuery(this).effect("shake", { times:3 }, 50);
                
                error++;
            } else {
                jQuery(this).addClass('valid');
            }
        });

        if(!error) {
                //update progress bar
                jQuery('#progress_text').html('66% Complete');
                jQuery('#progress').css('width','226px');
                
                //slide steps
                jQuery('#second_step').slideUp();
                jQuery('#third_step').slideDown();     
        } else return false;

    });


    jQuery('#submit_third').click(function(){
        //update progress bar
        jQuery('#progress_text').html('100% Complete');
        jQuery('#progress').css('width','339px');

        //prepare the fourth step
        var fields = new Array(
            jQuery('#username').val(),
            jQuery('#password').val(),
            jQuery('#email').val(),
            jQuery('#firstname').val() + ' ' + jQuery('#lastname').val(),
            jQuery('#age').val(),
            jQuery('#gender').val(),
            jQuery('#country').val()                       
        );
        var tr = jQuery('#fourth_step tr');
        tr.each(function(){
            //alert( fields[jQuery(this).index()] )
            jQuery(this).children('td:nth-child(2)').html(fields[jQuery(this).index()]);
        });
                
        //slide steps
        jQuery('#third_step').slideUp();
        jQuery('#fourth_step').slideDown();            
    });


    jQuery('#submit_fourth').click(function(){
        //send information to server
        alert('Data sent');
    });

});
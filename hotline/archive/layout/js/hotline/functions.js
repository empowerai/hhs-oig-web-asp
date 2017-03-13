			var cache = {}; // caching inputs for the visited steps
			
			
			$("#hotlineForm").bind("step_shown", function(event,data){
			if (data.isLastStep) { // if this is the last step...then
					$("#summaryContainer").empty(); // empty the container holding the 
					$.each(data.activatedSteps, function(i, id){ // for each of the activated steps...do
						if(id === "summary") return; // if it is the summary page then just return
						cache[id] = $("#" + id).find(".input"); // else, find the div:s with class="input" and cache them with a key equal to the current step id
						
						cache[id].detach().appendTo('#summaryContainer').show().find(":input").removeAttr("disabled"); // detach the cached inputs and append them to the summary container, also show and enable them
					});
	} else if (data.previousStep === "summary") { // if we are movin back from the summary page
	
					$.each(cache, function(id, inputs){ // for each of the keys in the cache...do
						var i = inputs.detach().appendTo("#" + id).find(":input");  // put the input divs back into their normal step
						if(id === data.currentStep){ // (we are moving back from the summary page so...) if enable inputs on the current step
					
							 i.removeAttr("disabled");
						}else{ // disable the inputs on the rest of the steps
							i.attr("disabled","disabled");
						}
					});
					cache = {}; // empty the cache again
				}
			})

			
	
			function hideOrToggleAllegationAgainst(allegation){
				$("#personAllegation,#businessAllegation").hide().find(":input").addClass("wizard-ignore").attr("disabled", "disabled"); //wizard-ignore tells the wizard to not touch the input fields
				if(allegation !== undefined && allegation !== ""){
					$("#" + allegation).fadeIn(1000).find(":input").removeClass("wizard-ignore").removeAttr("disabled");
				}
			}
			
			// add an onchange event to the allegation dropdown.
			$("select#allegation").change(function(){
				hideOrToggleAllegationAgainst($(this).val()); // toggle the complaint specific things
})
//**	 	Section which is causing problems with submit button **
	 		
			function hideOrToggleAllegationCompliant(complaint){
				$("#health_care_fraud_complaint,#quality_of_care_complaint,#grant_contract_fraud_complaint, #criminal_activity_complaint, #federal_child_support_complaint, #medical_identity_theft_complaint, #agent_complaint, #other_complaint").hide().find(":input").addClass("wizard-ignore").attr("disabled", "disabled"); //wizard-ignore tells the wizard to not touch the input fields
				if(complaint !== undefined && complaint !== ""){
					$("#" + complaint).fadeIn(1000).find(":input").removeClass("wizard-ignore").removeAttr("disabled");
				}
			}
			
			// add an onchange event to the complaint dropdown.
			$("select#type_of_complaint").change(function(){
				hideOrToggleAllegationCompliant($(this).val()); // toggle the complaint specific things
			})


			$(function() {

			    hideOrToggleAllegationAgainst();
			    hideOrToggleAllegationCompliant();

			    $("#hotlineForm").formwizard({

			        formPluginEnabled: true,
			        historyEnabled: true,
			        focusFirstInput: true,
			        disableUIStyles: true,
			        showBackOnFirstStep: false,
			        validationEnabled: true,
			        validationOptions: {
			            onfocusout: function(element) { $(element).valid(); },
			            onfocusin: function(element) { $(element).valid(); }
			            //onsubmit: false
			        },
			        formOptions: {
			            success: function(data) {
			                hideOrToggleAllegationAgainst();
			                hideOrToggleAllegationCompliant();
			            },
			            beforeSubmit: function(data) {

			                //			                // alert($('#ac_describe_activity').val());
			                //			                var QStringData;
			                QStringData = "json.asp?Mail=&";


			                //QStringData += "&allegation_person_first_name=" + $('#ac_describe_activity').val();
			                //QStringData+= ""
			                //			                // alert($('#hcfc_describe_fraud').val());
			                //			                // alert($('#ac_describe_activity').text());
			                //			                var test = $('#hcfc_describe_fraud').val();
			                //			                alert(test);

			                if ($('#ac_describe_activity').val() != "") {

			                    QStringData += "ac_describe_activity=" + $('#ac_describe_activity').val() + "&";
			                }
			                if ($('#hcfc_describe_fraud').val() != "") {

			                    QStringData += "hcfc_describe_fraud=" + $('#hcfc_describe_fraud').val() + "&";
			                }
			                if ($('#hcfc_previous_report_extra').val() != "") {

			                    QStringData += "hcfc_previous_report_extra=" + $('#hcfc_previous_report_extra').val() + "&";
			                }

			                // if ($('hcfc_previous_investigation_extra').val() != "") {

			                //    QStringData += "&hcfc_previous_investigation_extra=" + $('#hcfc_previous_investigation_extra').val() + "&";
			                //}
			                if ($('#qocc_previous_report_extra').val() != "") {
			                    QStringData += "qocc_previous_report_extra=" + $('#qocc_previous_report_extra').val() + "&";
			                }
			                if ($('#qocc_previous_investigation_extra').val() != "") {
			                    QStringData += "qocc_previous_investigation_extra=" + $('#qocc_previous_investigation_extra').val() + "&";
			                }
			                if ($('#qocc_when_occurred').val() != "") {
			                    QStringData += "qocc_when_occurred=" + $('#qocc_previous_investigation_extra').val() + "&";
			                }
			                if ($('#qocc_incident_length').val() != "") {
			                    QStringData += "qocc_incident_length=" + $('#qocc_incident_length').val() + "&";
			                }
			                if ($('#qocc_describe_abuse').val() != "") {
			                    QStringData += "qocc_describe_abuse=" + $('#qocc_describe_abuse').val() + "&";
			                }
			                if ($('#gcfc_arra_program_extra_extra').val() != "") {
			                    QStringData += "gcfc_arra_program_extra_extra=" + $('#gcfc_arra_program_extra_extra').val() + "&";
			                }
			                if ($('#gcfc_previous_report_extra').val() != "") {
			                    QStringData += "gcfc_previous_report_extra=" + $('#gcfc_previous_report_extra').val() + "&";
			                }
			                if ($('#gcfc_previous_investigation_extra').val() != "") {
			                    QStringData += "gcfc_previous_investigation_extra=" + $('#gcfc_previous_investigation_extra').val() + "&";
			                }
			                if ($('#gcfc_describe_fraud').val() != "") {
			                    QStringData += "gcfc_describe_fraud=" + $('#gcfc_describe_fraud').val() + "&";
			                }
			                if ($('#cac_retaliation_extra').val() != "") {
			                    QStringData += "&cac_retaliation_extra=" + $('#cac_retaliation_extra').val() + "&";
			                }
			                if ($('#cac_when_occurred').val() != "") {
			                    QStringData += "cac_when_occurred=" + $('#cac_when_occurred').val() + "&";
			                }
			                if ($('#cac_incident_length').val() != "") {
			                    QStringData += "cac_incident_length=" + $('#cac_incident_length').val() + "&";
			                }
			                if ($('#cac_describe_abuse').val() != "") {
			                    QStringData += "cac_describe_abuse=" + $('#cac_describe_abuse').val() + "&";
			                }
			                if ($('#mitc_when_occurred').val() != "") {
			                    QStringData += "mitc_when_occurred=" + $('#mitc_when_occurred').val() + "&";
			                }
			                if ($('#mitc_incident_length').val() != "") {
			                    QStringData += "mitc_incident_length=" + $('#mitc_incident_length').val() + "&";
			                }
			                if ($('#mitc_describe_medical_id_theft').val() != "") {
			                    QStringData += "mitc_describe_medical_id_theft=" + $('#mitc_describe_medical_id_theft').val() + "&";
			                }
			                if ($('#ac_describe_activity').val() != "") {
			                    QStringData += "ac_describe_activity=" + $('#ac_describe_activity').val() + "&";
			                }
			                if ($('#oc_describe_activity').val() != "") {
			                    QStringData += "oc_describe_activity=" + $('#oc_describe_activity').val() + "&";
			                }

			            


			               for (i =1 ; i < data.length; i++) {
			                    var x = new String($.param(data[i]));
			                    var y = x.split('&value=');

			                    if (y[1] != "") {

			                        alert(y[1]);
			                        alert(y[0]);
			                        var z = new String(y[0]);
			                        var n = z.split('name=');
			                        QStringData += "&" + n[1] + "=" + y[1];
			                    }


                            }

			                //alert(QStringData);

			                //			                var x = new String($.param(data[2]));
			                //			                alert(x);
			                //			                var y = x.split('&value=');
			                //			                alert(y[1]);
			                //			                alert(y[0]);

			                window.location = QStringData;
			                //alert($.param(data[2]));


			                //			                $.each(data,function(key,value) {
			                //			                alert(key + ':' + value);
			                //			                
			                //			                });
			                // alert($.param(data).('allegation'));

			                //alert($('#allegation_business_name').val());
			                //window.location = "json.asp?Mail=" + $.param(data);
			                //$("#data").html("data sent to the server: " + $.param(data));

			            },
			            dataType: 'json',
			            resetForm: true
			        }
			    }


				);


			    // remove first choice in dropdown
			    $('#Step4 select option:first-child').css('display', 'none');


			    // js for hcfc
			    // Adds personal info after the question for hcfc_witness

			    $('#hcfc_witness').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#hcfc_witness_extra').fadeIn();
			        }
			        if ($(this).val() == 'no') {
			            $('#hcfc_witness_extra').fadeOut();
			        }
			    });
			    // Adds textarea after the question for hcfc_previous_report
			    $('#hcfc_previous_report').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#hcfc_previous_report_extra').fadeIn();
			            //$('#hcfc_previous_report_extra textarea').limit('200','#charsLeftOne');
			        }
			        if ($(this).val() == 'no') {
			            $('#hcfc_previous_report_extra').fadeOut();
			        }
			    });
			    // Adds textarea after the question for hcfc_previous_investigation
			    $('#hcfc_previous_investigation').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#hcfc_previous_investigation_extra').fadeIn();
			            //$('#hcfc_previous_investigation_extra textarea').limit('200','#charsLeftTwo');
			        }
			        if ($(this).val() == 'no') {
			            $('#hcfc_previous_investigation_extra').fadeOut();
			        }
			    });
			    // limits the main textarea to 3000
			    //$('#hcfc_describe_fraud textarea').limit('3000','#charsLeftThree');


			    var i = 1;
			    $("#hcfc_addFile").click(function() {
			        $("<div />", { "class": "uploadFieldWrapper" })
						.append($("<input />", { type: "file", id: "hcfc_objFile" + i, name: "hcfc_fileupload" + i }))
						.appendTo("#hcfc_uploadInput");
			        i++;
			    });

			    /////////////////////////////////////////////////////////////

			    // js for qocc
			    // Adds personal info after the question for qocc_witness
			    $('#qocc_witness').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#qocc_witness_extra').fadeIn();
			        }
			        if ($(this).val() == 'no') {
			            $('#qocc_witness_extra').fadeOut();
			        }
			    });
			    // Adds textarea after the question for qocc_previous_report
			    $('#qocc_previous_report').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#qocc_previous_report_extra').fadeIn();
			            //$('#qocc_previous_report_extra textarea').limit('200','#charsLeftFour');
			        }
			        if ($(this).val() == 'no') {
			            $('#qocc_previous_report_extra').fadeOut();
			        }
			    });
			    // Adds textarea after the question for qocc_previous_investigation_extra
			    $('#qocc_previous_investigation').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#qocc_previous_investigation_extra').fadeIn();
			            //$('#qocc_previous_investigation_extra textarea').limit('200','#charsLeftFive');
			        }
			        if ($(this).val() == 'no') {
			            $('#qocc_previous_investigation_extra').fadeOut();
			        }
			    });
			    //limit qocc_when_occurred to 250
			    //$('#qocc_when_occurred textarea').limit('250','#charsLeftSix');

			    //limit qocc_when_occurred to 250
			    //$('#qocc_incident_length textarea').limit('250','#charsLeftSeven');	

			    //limit qocc_describe_abuse to 3000
			    //$('#qocc_describe_abuse textarea').limit('3000','#charsLeftEight');

			    var i = 1;
			    $("#qocc_addFile").click(function() {
			        $("<div />", { "class": "uploadFieldWrapper" })
						.append($("<input />", { type: "file", id: "qocc_objFile" + i, name: "qocc_fileupload" + i }))
						.appendTo("#qocc_uploadInput");
			        i++;
			    });


			    /////////////////////////////////////////////////////////////

			    // js for gcfc

			    //

			    // Adds textarea after the question for gcfc_arra_program
			    $('#gcfc_arra_program').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#gcfc_arra_program_extra').fadeIn();
			            $('#gcfc_arra_program_select').change(function() {
			                if ($(this).val() == 'yes') {
			                    $('#gcfc_arra_program_extra_extra').fadeIn();
			                    //	$('#gcfc_arra_program_extra_extra textarea').limit('500','#charsLeftEleven');
			                }
			                if ($(this).val() == 'no') {
			                    $('#gcfc_arra_program_extra_extra').fadeOut();
			                }
			            });
			        }
			        if ($(this).val() == 'no') {
			            $('#gcfc_arra_program_extra').fadeOut();
			        }
			    });

			    // Adds personal info after the question for gcfc_witness
			    $('#gcfc_witness').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#gcfc_witness_extra').fadeIn();
			        }
			        if ($(this).val() == 'no') {
			            $('#gcfc_witness_extra').fadeOut();
			        }
			    });

			    // Adds textarea after the question for gcfc_previous_report
			    $('#gcfc_previous_report').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#gcfc_previous_report_extra').fadeIn();
			            //	$('#gcfc_previous_report_extra textarea').limit('200','#charsLeftTwelve');
			        }
			        if ($(this).val() == 'no') {
			            $('#gcfc_previous_report_extra').fadeOut();
			        }
			    });

			    // Adds textarea after the question for gcfc_previous_investigation
			    $('#gcfc_previous_investigation').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#gcfc_previous_investigation_extra').fadeIn();
			            //$('#gcfc_previous_investigation_extra textarea').limit('200','#charsLeftThirteen');
			        }
			        if ($(this).val() == 'no') {
			            $('#gcfc_previous_investigation_extra').fadeOut();
			        }
			    });
			    //limit gcfc_describe_fraud to 3000
			    //	$('#gcfc_describe_fraud textarea').limit('3000','#charsLeftThirteenOne');					

			    //limit gcfc_grant_number to 200
			    //	$('#gcfc_grant_number textarea').limit('200','#charsLeftNine');					

			    //file upload js
			    var i = 1;
			    $("#gcfc_addFile").click(function() {
			        $("<div />", { "class": "uploadFieldWrapper" })
						.append($("<input />", { type: "file", id: "gcfc_objFile" + i, name: "gcfc_fileupload" + i }))
						.appendTo("#gcfc_uploadInput");
			        i++;
			    });





			    /////////////////////////////////////////////////////////////

			    // js for cac	 

			    // Adds personal info after the question for cac_witness
			    $('#cac_witness').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#cac_witness_extra').fadeIn();
			        }
			        if ($(this).val() == 'no') {
			            $('#cac_witness_extra').fadeOut();
			        }
			    });


			    // Adds textarea after the question for cac_previous_report
			    $('#cac_previous_report').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#cac_previous_report_extra').fadeIn();
			            //		$('#cac_previous_report_extra textarea').limit('200','#charsLeftFourteen');
			        }
			        if ($(this).val() == 'no') {
			            $('#cac_previous_report_extra').fadeOut();
			        }
			    });

			    // Adds textarea after the question for cac_previous_report
			    $('#cac_retaliation').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#cac_retaliation_extra').fadeIn();
			            //$('#cac_retaliation_extra textarea').limit('500','#charsLeftFifteen');
			        }
			        if ($(this).val() == 'no') {
			            $('#cac_retaliation_extra').fadeOut();
			        }
			    });

			    // Adds textarea after the question for cac_previous_investigation
			    $('#cac_previous_investigation').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#cac_previous_investigation_extra').fadeIn();
			            //	$('#cac_previous_investigation_extra textarea').limit('200','#charsLeftSixteen');
			        }
			        if ($(this).val() == 'no') {
			            $('#cac_previous_investigation_extra').fadeOut();
			        }
			    });

			    //limit cac_when_occurred to 250
			    //$('#cac_when_occurred textarea').limit('250','#charsLeftSeventeen');			

			    //limit cac_incident_length to 250
			    //$('#cac_incident_length textarea').limit('250','#charsLeftEigthteen');		

			    //limit cac_describe_abuse to 3000
			    //  $('#cac_describe_abuse textarea').limit('3000','#charsLeftNineteen');					

			    //file upload js
			    var i = 1;
			    $("#cac_addFile").click(function() {
			        $("<div />", { "class": "uploadFieldWrapper" })
						.append($("<input />", { type: "file", id: "cac_objFile" + i, name: "cac_fileupload" + i }))
						.appendTo("#cac_uploadInput");
			        i++;
			    });


			    /////////////////////////////////////////////////////////////

			    // js for mitc

			    // Adds personal info after the question for mitc_witness
			    $('#mitc_witness').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#mitc_witness_extra').fadeIn();
			        }
			        if ($(this).val() == 'no') {
			            $('#mitc_witness_extra').fadeOut();
			        }
			    });


			    // Adds textarea after the question for mitc_previous_report
			    $('#mitc_previous_report').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#mitc_previous_report_extra').fadeIn();
			            //		$('#mitc_previous_report_extra textarea').limit('500','#charsLeftTwenty');
			        }
			        if ($(this).val() == 'no') {
			            $('#mitc_previous_report_extra').fadeOut();
			        }
			    });
			    //limit mitc_when_occurred to 250
			    //	$('#mitc_when_occurred textarea').limit('250','#charsLeftTwentyOne');			

			    //limit mitc_incident_length to 250
			    //	$('#mitc_incident_length textarea').limit('250','#charsLeftTwentyTwo');		

			    //limit mitc_describe_medical_id_theft to 3000
			    //	$('#mitc_describe_medical_id_theft textarea').limit('3000','#charsLeftTwentyThree');					


			    //file upload js
			    var i = 1;
			    $("#mitc_addFile").click(function() {
			        $("<div />", { "class": "uploadFieldWrapper" })
						.append($("<input />", { type: "file", id: "mitc_objFile" + i, name: "mitc_fileupload" + i }))
						.appendTo("#mitc_uploadInput");
			        i++;
			    });

			    /////////////////////////////////////////////////////////////

			    // js for oc

			    // Adds personal info after the question for mitc_witness
			    $('#oc_witness').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#oc_witness_extra').fadeIn();
			        }
			        if ($(this).val() == 'no') {
			            $('#oc_witness_extra').fadeOut();
			        }
			    });

			    // Adds textarea after the question for oc_previous_report
			    $('#oc_previous_report').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#oc_previous_report_extra').fadeIn();
			            //			$('#oc_previous_report_extra textarea').limit('500','#charsLeftTwentyFour');
			        }
			        if ($(this).val() == 'no') {
			            $('#oc_previous_report_extra').fadeOut();
			        }
			    });

			    // Adds textarea after the question for oc_previous_investigation
			    $('#oc_previous_investigation').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#oc_previous_investigation_extra').fadeIn();
			            //			$('#oc_previous_investigation_extra textarea').limit('200','#charsLeftTwentyFive');
			        }
			        if ($(this).val() == 'no') {
			            $('#oc_previous_investigation_extra').fadeOut();
			        }
			    });


			    //limit oc_describe_activity to 3000
			    //	$('#oc_describe_activity textarea').limit('3000','#charsLeftTwentySix');		

			    //file upload js
			    var i = 1;
			    $("#oc_addFile").click(function() {
			        $("<div />", { "class": "uploadFieldWrapper" })
						.append($("<input />", { type: "file", id: "oc_objFile" + i, name: "oc_fileupload" + i }))
						.appendTo("#oc_uploadInput");
			        i++;
			    });


			    // js for ac

			    // Adds personal info after the question for mitc_witness
			    $('#ac_witness').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#ac_witness_extra').fadeIn();
			        }
			        if ($(this).val() == 'no') {
			            $('#ac_witness_extra').fadeOut();
			        }
			    });

			    // Adds textarea after the question for ac_previous_report
			    $('#ac_previous_report').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#ac_previous_report_extra').fadeIn();
			            //			$('#ac_previous_report_extra textarea').limit('500','#charsLeftTwentySeven');
			        }
			        if ($(this).val() == 'no') {
			            $('#ac_previous_report_extra').fadeOut();
			        }
			    });

			    // Adds textarea after the question for ac_previous_investigation
			    $('#ac_previous_investigation').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#ac_previous_investigation_extra').fadeIn();
			            //			$('#ac_previous_investigation_extra textarea').limit('200','#charsLeftTwentyEight');
			        }
			        if ($(this).val() == 'no') {
			            $('#ac_previous_investigation_extra').fadeOut();
			        }
			    });


			    //limit ac_describe_activity to 3000
			    //	$('#ac_describe_activity textarea').limit('3000','#charsLeftTwentyNine');		

			    //file upload js
			    var i = 1;
			    $("#ac_addFile").click(function() {
			        $("<div />", { "class": "uploadFieldWrapper" })
						.append($("<input />", { type: "file", id: "ac_objFile" + i, name: "ac_fileupload" + i }))
						.appendTo("#ac_uploadInput");
			        i++;
			    });


			    //	 js for federal_child_support_complaint

			    // Adds personal info after the question for fcsc_witness
			    $('#fcsc_witness').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#fcsc_witness_extra').fadeIn();
			        }
			        if ($(this).val() == 'no') {
			            $('#fcsc_witness_extra').fadeOut();
			        }
			    });

			    // Adds textarea after the question for fcsc_previous_reported
			    $('#fcsc_previous_report').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#fcsc_previous_report_extra').fadeIn();
			            //			$('#ac_previous_report_extra textarea').limit('500','#charsLeftTwentySeven');
			        }
			        if ($(this).val() == 'no') {
			            $('#fcsc_previous_report_extra').fadeOut();
			        }
			    });

			    // Adds textarea after the question for fcsc_previous_investigation
			    $('#fcsc_previous_investigation').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#fcsc_previous_investigation_extra').fadeIn();

			        }
			        if ($(this).val() == 'no') {
			            $('#fcsc_previous_investigation_extra').fadeOut();
			        }
			    });
			    // Adds textarea after the question for fcsc_amount
			    $('#fcsc_amount').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#fcsc_amount_extra').fadeIn();

			        }
			        if ($(this).val() == 'no') {
			            $('#fcsc_amount_extra').fadeOut();
			        }
			    });
			    // Adds textarea after the question for ac_previous_investigation
			    $('#fcsc_reside').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#fcsc_reside_extra').fadeIn();

			        }
			        if ($(this).val() == 'no') {
			            $('#fcsc_reside_extra').fadeOut();
			        }
			    });
			    // Adds textarea after the question for ac_previous_investigation
			    $('#fcsc_valid_court').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#fcsc_valid_court_extra').fadeIn();

			        }
			        if ($(this).val() == 'no') {
			            $('#fcsc_valid_court_extra').fadeOut();
			        }
			    }); 		// Adds textarea after the question for ac_previous_investigation
			    $('#fcsc_warrant').change(function() {
			        if ($(this).val() == 'yes') {
			            $('#fcsc_warrant_extra').fadeIn();

			        }
			        if ($(this).val() == 'no') {
			            $('#fcsc_warrant_extra').fadeOut();
			        }
			    });


			    //limit ac_describe_activity to 3000
			    //	$('#ac_describe_activity textarea').limit('3000','#charsLeftTwentyNine');		

			    //file upload js
			    var i = 1;
			    $("#fcsc_addFile").click(function() {
			        $("<div />", { "class": "uploadFieldWrapper" })
						.append($("<input />", { type: "file", id: "fcsc_objFile" + i, name: "ac_fileupload" + i }))
						.appendTo("#fcsc_uploadInput");
			        i++;
			    });



			    // function for appending step visualization
			    function addVisualization(id) {
			        $("#step_visualization").append("<span class=\"visualization\" id=\"visualization_" + id + "\">" + id + "</span> ")
			    }
			    // initial call to addVisualization (for visualizing the first step)
			    addVisualization($("#hotlineForm").formwizard("state").firstStep);

			    // bind a callback to the step_shown event
			    $("#hotlineForm").bind("step_shown", function(event, data) {
			        $("#step_visualization").html("");

			        //	if(data.isBackNavigation || !data.isFirstStep){
			        //var direction = (data.isBackNavigation)?"back":"forward";
			        //	$("#step_visualization").append("<div>Moving "+ direction +"</div>");
			        //	}
			        $.each(data.activatedSteps, function() {
			            addVisualization(this)
			        });
			    });


			});

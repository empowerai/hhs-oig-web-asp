<%
'-------------------------------------------------------------------------------
'AUTO DISPLAY SCRIPT
'					
'				 Instructions
'				 1. Set the date_time_to_auto_display constant to the time you want the 
'				    content to be automatically be displayed.
'						WARNING:
'				 		Date and time must be in the correct format and enclosed in quotes.
'				 2. Add End If at the end of the time-dependent content block. 		  
'-------------------------------------------------------------------------------
'EXAMPLE																																									 
'	  date_time_to_auto_display = "22-Oct-12 12:29:00"
'   If AutoDisplay(date_time_to_auto_display) Then 
'   	 Put time-dependent content here, outside of server script
'		End If 
'-------------------------------------------------------------------------------
'End auto display block 
'-------------------------------------------------------------------------------

Function AutoDisplay(ByVal date_display_datetime, ByVal str_display_remove)

  Dim date_current_server_time
  'Dim date_auto_deploy_date_time="22-Oct-12 11:29:00"
  Dim in_display_time
  Dim num_deploy_time_threshold
  
  		date_current_server_time = Now()
  		in_display_time = date_display_datetime
			if str_display_remove = "remove" then
  			 num_deploy_time_threshold = DateDiff("s",date_current_server_time,in_display_time)
  		else
			   num_deploy_time_threshold = DateDiff("s",in_display_time,date_current_server_time)
		  end if
	
'  response.write("Current Server Time: "  & Now & "<br />")
'  response.write("Preset time content will be displayed: "  & in_display_time & "<br />")
'  response.write("Countdown to display (in seconds): " & num_deploy_time_threshold & "<br />")
  
  if num_deploy_time_threshold > 0 Then
  
		  boolAutoDisplay = True
  
  Else
	
			boolAutoDisplay = False
 
  End If
  
  AutoDisplay = boolAutoDisplay

End Function
																															
%>

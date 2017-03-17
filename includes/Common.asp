<%

Dim attachmentFolder 

'attachmentFolder = Server.MapPath("attachments")
attachmentFolder = Server.MapPath("\fraud\attachments")

Function CheckForEmptyString(ByVal strValue)
	Dim strReturn

	If strValue = "" then
		strReturn = "&nbsp;"
	Else
		strReturn = strValue
		strReturn = unticks(strReturn)
	End If

	CheckForEmptyString = strReturn
End Function

Function Unticks(ByVal str)
	Dim strTemp

	strTemp = ""
	If not IsNull(str) then
		strTemp = replace(str,"''", "'")
	end if
	Unticks = strTemp
end function

Function Ticks(ByVal str)
	Dim strTemp

	strTemp = ""
	If not IsNull(str) then
		strTemp = replace(str,"'", "''")
	end if
	Ticks = strTemp
end Function


Sub PopulateStates(ByRef strOptions, ByVal strState)
	Dim rs
	Dim objConn
	
	Call OpenDatabase(objConn)
	If strOptions = "" then
		Set rs = objConn.Execute("SELECT * FROM States")
		strOptions = "<option>" & rs.getString(,,,"</option>" & vbcrlf &"<option>", "--NULL--") & "</option>"
		strOptions = Replace(strOptions, "<option></option>", "")
	End if
	
	If strState > "" then
		strOptions = Replace(strOptions, "<option>" & strState & "</option>", "<option selected = ""true"">" & strState & "</option>")
	End if
	Call CloseDatabase(objConn)
	Set rs = nothing
End Sub

Sub PopulateHHSDeptTypes(ByRef strHHSDeptTypes, ByVal strSelHHSDeptType)
	Dim rs
	Dim objConn
	
	Call OpenDatabase(objConn)
	Set rs = objConn.Execute("SELECT ID, DESCRIPTION FROM HHSDeptTypes")
	strHHSDeptTypes = "<option value='" & rs.getString(,,"'>","</option>" & vbcrlf &"<option value='", "--NULL--") & "'></option>"
	strHHSDeptTypes = Replace(strHHSDeptTypes, "<option value=''></option>", "")

	If strSelHHSDeptType > "" then
		strHHSDeptTypes = Replace(strHHSDeptTypes, "<option value='" & strSelHHSDeptType & "'>", "<option selected = ""true""  value='" & strSelHHSDeptType & "'>")
	End if
	Call CloseDatabase(objConn)
	Set rs = nothing
End Sub

Sub PopulateComplaintTypes(ByRef strComplaintTypes, ByVal strSelComplaintType)
	Dim rs
	Dim objConn
	
	Call OpenDatabase(objConn)
	Set rs = objConn.Execute("SELECT ID, DESCRIPTION FROM ComplaintTypes")
	strComplaintTypes = "<option value='" & rs.getString(,,"'>","</option>" & vbcrlf &"<option value='", "--NULL--") & "'></option>"
	strComplaintTypes = Replace(strComplaintTypes, "<option value=''></option>", "")

	If strSelComplaintType > "" then
	strComplaintTypes = Replace(strComplaintTypes, "<option value='" & strSelComplaintType & "'>", "<option selected = ""true""  value='" & strSelComplaintType & "'>")
	End if
	Call CloseDatabase(objConn)
	Set rs = nothing
End Sub

'Will no longer be connecting to database, so we should 
'remove these routines AFTER removing ALL sub calls here and elsewhere...
Sub OpenDatabase(objConn)
	'Set objConn = Server.CreateObject("ADODB.Connection")
	'objConn.Open("Provider=MSDASQL; Driver={SQL Server}; Server=128.231.74.179; Database=LEIE;User Id=OIG_Admin;Password=V3nus!2E;")
End Sub

' Close database connection
Sub CloseDatabase(objConn)
	'If objConn.State = 1 then
		'objConn.close
		'Set objConn = nothing
	'End If
End Sub

Sub SendEmail(Uploader, File)
	Dim objMail 
	Dim strContent
	Dim cdoConfig
	Dim sch 
	Dim strComplaintType
	Dim strHHSDeptType
	Dim objConn
	Dim intCounter
	Dim objSubjectCollection
	Dim objSubject
	Dim intCounterForCollection
	
	Set objSubjectCollection = Server.CreateObject("Scripting.Dictionary")

	sch = "http://schemas.microsoft.com/cdo/configuration/"
	Set objMail = Server.CreateObject("CDO.Message")
	Set cdoConfig = CreateObject("CDO.Configuration") 

	With cdoConfig.Fields 
		.Item(sch & "sendusing") = 2 ' cdoSendUsingPort 
		.Item(sch & "smtpserver") = "mailfwd.nih.gov" 
		.update 
	End With 

	
	'Call OpenDatabase(objConn)
	objMail.To = "hhstips@oig.hhs.gov"
	objMail.From = "hhstips@oig.hhs.gov"

	'For testing purposes.......
	'objMail.To = "sergey.guryakov@oig.hhs.gov"
	'objMail.From = "sergey.guryakov@oig.hhs.gov"
	'objMail.To = "craig.moran@oig.hhs.gov"
	'objMail.From = "craig.moran@oig.hhs.gov"
	objMail.Configuration = cdoConfig
	objMail.Subject = "OIG ON-LINE COMPLAINT FORM"
	
	
	If File > "" then
		dim s
		s = Split(File, ";")
		dim i
		for i = 0 to ubound(s)
			objMail.AddAttachment(s(i))
		next
	End if
	
	If objUploader.form("selComplaintType") > "" then
		strComplaintType = objUploader.form("selComplaintType") 'DecodeSelectedValue(objUploader.form("selComplaintType"), "ComplaintTypes", objConn)
	End If
	
	If objUploader.form("selHHSDept") > "" then
		strHHSDeptType = objUploader.form("selHHSDept") 'DecodeSelectedValue(objUploader.form("selHHSDept"), "HHSDeptTypes", objConn)	
	End If
	
	strContent = "<table border=""1"">"

	strContent = strContent & "<tr><td>Information about user</td><td>"
	if objUploader.form("hid_rdoIdentify") = "Yes" then
		strContent = strContent & "User chooses to identify himself/herself"
	ElseIf objUploader.form("hid_rdoIdentify") = "No" then
		strContent = strContent & "User chooses to remain anonymous"
	Else
		strContent = strContent & "Unknown"
	End If
	
	
	strContent = strContent & "</td></tr>"
	strContent = strContent & "<tr><td>First name</td><td>" & CheckForEmptyString(objUploader.form("hid_fname")) & "</td></tr>"
	strContent = strContent & "<tr><td>Last name</td><td>" & CheckForEmptyString(objUploader.form("hid_lname")) & "</td></tr>"
	strContent = strContent & "<tr><td>Company</td><td>" & CheckForEmptyString(objUploader.form("hid_company")) & "</td></tr>"
	strContent = strContent & "<tr><td>Address (Line 1)</td><td>" & CheckForEmptyString(objUploader.form("hid_address")) & "</td></tr>"
	strContent = strContent & "<tr><td>Address (Line 2)</td><td>" & CheckForEmptyString(objUploader.form("hid_address2")) & "</td></tr>"
	strContent = strContent & "<tr><td>City</td><td>" & CheckForEmptyString(objUploader.form("hid_city")) & "</td></tr>"
	strContent = strContent & "<tr><td>State</td><td>" & CheckForEmptyString(objUploader.form("hid_state")) & "</td></tr>"
	strContent = strContent & "<tr><td>Zip</td><td>" & CheckForEmptyString(objUploader.form("hid_zip")) & "</td></tr>"
	strContent = strContent & "<tr><td>Phone</td><td>" & CheckForEmptyString(objUploader.form("hid_phone")) & "</td></tr>"
	strContent = strContent & "<tr><td>Evening phone</td><td>" & CheckForEmptyString(objUploader.form("hid_evening_phone")) & "</td></tr>"
	strContent = strContent & "<tr><td>Email</td><td>" & CheckForEmptyString(objUploader.form("hid_email")) & "</td></tr>"
	strContent = strContent & "<tr><td>Narrative</td><td>" & CheckForEmptyString(objUploader.form("details")) & "</td></tr>"
	strContent = strContent & "<tr><td>Type of complaint</td><td>" & CheckForEmptyString(strComplaintType) & "</td></tr>"
	strContent = strContent & "<tr><td>HHS department or program being affected</td><td>" & CheckForEmptyString(strHHSDeptType) & "</td></tr>"

	
	
	
	Set objSubject = new Subject
	
	With objSubject
		.SubjectName = CheckForEmptyString(objUploader.Form("strSubjectName"))
		.SubjectTitle = CheckForEmptyString(objUploader.Form("strSubjectTitle"))
		.SubjectStreetAddress = CheckForEmptyString(objUploader.Form("strSubjectStreetAddress"))
		.SubjectCityorCounty = CheckForEmptyString(objUploader.Form("strSubjectCityorCounty"))
		.SubjectState = CheckForEmptyString(objUploader.Form("strSubjectState"))
		.SubjectZipCode = CheckForEmptyString(objUploader.Form("strSubjectZipCode"))
		.SubjectPhone = CheckForEmptyString(objUploader.Form("strsubjectphone"))
	End With
	objSubjectCollection.Add 1, objSubject
	
	for intCounter = 2 to 5
		if objUploader.form("hidSubjectPanelValid_" & intCounter) = "VALID" then
			Set objSubject = new Subject
			With objSubject
				.SubjectName = CheckForEmptyString(objUploader.form("strSubjectName_" & intCounter))
				.SubjectTitle = CheckForEmptyString(objUploader.Form("strSubjectTitle_" & intCounter))
				.SubjectStreetAddress = CheckForEmptyString(objUploader.Form("strSubjectStreetAddress_" & intCounter))
				.SubjectCityorCounty = CheckForEmptyString(objUploader.Form("strSubjectCityorCounty_" & intCounter))
				.SubjectState = CheckForEmptyString(objUploader.Form("strSubjectState_" & intCounter))
				.SubjectZipCode = CheckForEmptyString(objUploader.Form("strSubjectZipCode_" & intCounter))
				.SubjectPhone = CheckForEmptyString(objUploader.Form("strsubjectphone_" & intCounter))
			end with
			objSubjectCollection.Add intCounter,objSubject
			
		end if
		
	next

	
	Dim item
	intCounterForCollection = 1
	for each item in objSubjectCollection.Items
		strContent = strContent & "<tr><td colspan=""2""><b>Information for subject #" & intCounterForCollection & "</b></td></tr>"
		strContent = strContent & "<tr><td>Subject name</td><td>" & item.SubjectName & "</td></tr>"
		strContent = strContent & "<tr><td>Subject title</td><td>" & item.SubjectTitle & "</td></tr>"
		strContent = strContent & "<tr><td>Subject street address</td><td>" & item.SubjectStreetAddress & "</td></tr>"
		strContent = strContent & "<tr><td>Subject city or county</td><td>" & item.SubjectCityorCounty & "</td></tr>"
		strContent = strContent & "<tr><td>Subject state</td><td>" & item.SubjectState & "</td></tr>"
		strContent = strContent & "<tr><td>Subject zip code</td><td>" & item.SubjectZipCode & "</td></tr>"
		strContent = strContent & "<tr><td>Subject phone</td><td>" & item.SubjectPhone & "</td></tr>"
		intCounterForCollection = intCounterForCollection + 1
	next

	strContent = strContent & "</table>"

	objMail.HTMLBody = "The following information was sent:<BR>" & strContent
	
	objMail.Send

	Set objMail = nothing 
	'Call CloseDatabase(objConn)
End Sub

'Function DecodeSelectedValue(ByVal strValue, ByVal strTable, ByVal objConn)
	'Dim rs

	'Set rs = objConn.Execute("SELECT DESCRIPTION FROM " & strTable & " WHERE ID = " & cint(strValue))

	'If not rs.eof then
		'DecodeSelectedValue = rs("DESCRIPTION")
	'Else
		'DecodeSelectedValue = ""
	'End if

	'If not rs is nothing then
		'Set rs = nothing
	'End If
'End Function

Class Subject
	Private m_SubjectName
	Private m_SubjectTitle
	Private m_SubjectStreetAddress
	Private m_SubjectCityorCounty
	Private m_SubjectState
	Private m_SubjectZipCode
	Private m_SubjectPhone
	
	Public Property Get SubjectName
		SubjectName = m_SubjectName 
	End Property
	
	Public Property Let SubjectName(strVal)
		m_SubjectName = strVal
	End Property
	
	Public Property Get SubjectTitle
		SubjectTitle = m_SubjectTitle
	End Property
	
	Public Property Let SubjectTitle(strVal)
		 m_SubjectTitle = strVal
	End Property
	
	Public Property Get SubjectStreetAddress
		SubjectStreetAddress = m_SubjectStreetAddress 
	End Property
	
	Public Property Let SubjectStreetAddress(strVal)
		m_SubjectStreetAddress  = strVal
	End Property
	
	Public Property Get SubjectCityorCounty
		SubjectCityorCounty = m_SubjectCityorCounty
	End Property
	
	Public Property Let SubjectCityorCounty(strVal)
		m_SubjectCityorCounty  = strVal
	End Property
	
	Public Property Get SubjectState
		SubjectState = m_SubjectState
	End Property
	
	Public Property Let SubjectState(strVal)
		m_SubjectState  = strVal
	End Property
	
	Public Property Get SubjectZipCode
		SubjectZipCode = m_SubjectZipCode
	End Property
	
	Public Property Let SubjectZipCode(strVal)
		m_SubjectZipCode  = strVal
	End Property
	
	Public Property Get SubjectPhone
		SubjectPhone = m_SubjectPhone
	End Property
	
	Public Property Let SubjectPhone(strVal)
		m_SubjectPhone  = strVal
	End Property
	
	
End Class


%>

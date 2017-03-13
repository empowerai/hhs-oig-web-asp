<!-- #include virtual="/includes/StripBrackets.asp" -->
<%

Sub Page_One()
%>
The agency tasked with evaluating your complaint may have further questions, so
it will facilitate our review if you provide your name and contact information.
<br />
<br />
As provided for in the provisions of Federal Whistleblower protections, if you are
an employee of the Department of Health and Human Services we will not release your
name to non-OIG personnel without your permission unless it is determined that such
disclosure is unavoidable during the course of an investigation.
<br />
<br />
If you are not an employee of the Department of Health and Human Services, the Hotline
may share your personal information with Department employees or contractors for
the sole purpose of evaluating your complaint; public disclosure of personally identifiable
information is restricted by the Privacy Act.
<br />
<br />
If you prefer, you may provide your complaint anonymously. No information will be
entered in OIG record systems that could trace the complaint to you. In many cases,
however, the lack of contact information for the source prevents a comprehensive
review of the complaint.
<br />
<br />
<br />
Please check the appropriate block.
<br />
<br />
<input type="radio" id="rdoIdentify" name="rdoIdentify" value="Yes" <%if Request.Form("rdoIdentify") = "Yes" then %>
    CHECKED<%end if %> /><label for="rdoIdentify">I choose to identify myself for the complaint.
    </label>
<br />
<br />
<input type="radio" id="rdoIdentify1" name="rdoIdentify" value="No" <%if Request.Form("rdoIdentify") = "No" then %>
    CHECKED<%end if %> /><label for="rdoIdentify">I choose to provide my complaint anonymously.<br />
        <br />
        If you wish to enter your complaint anonymously, please take care to withhold any
        personally identifiable information from your Complaint Narrative and from any attachments.
    </label>
<div class="captcha">
    <table cellpadding="0" cellspacing="0" border="0" width="100%">
        <tr valign="top">
            <td style="width: 30%;">
                <div id="recaptcha_image" style="border: 0;">
                </div>
            </td>
		</tr>
		<tr>
            <td style="padding-top: 30px;">
                <label for="recaptcha_response_field">
                    Please enter the text from the image, then click 'Next':</label>
                <br />
                <input style="width: 300px" type="text" id="recaptcha_response_field" name="recaptcha_response_field" />
                <br />
                <div style="color: Red; display: none;" id="divCaptcha">
                </div>
                <a href="#" style="cursor: pointer;" onclick="javascript:Recaptcha.switch_type('image')" id="lnkImage">
                    Get another CAPTCHA</a> &nbsp;|&nbsp;<a href="#" style="cursor: pointer;" onclick="javascript:switchMode(this)"
                        id="lnkAudio">Get Audio CAPTCHA</a> &nbsp;|&nbsp;<a href="#"  style="cursor: pointer;" onclick="javascript:Recaptcha.showhelp()"
                            id="A1">What is CAPTCHA?</a>
            </td>
        </tr>
    </table>
</div>
<%
'returns string the can be written where you would like the reCAPTCHA 
Response.Write("<div style=""margin-left:15px;"">" & recaptcha_challenge_writer("6LfXPgkAAAAAAMvpDGnQK1zeqx8sopQfxAEnWQI2") & "</div>")
%>
<br />
<br />
<input type="submit" class="button" value="  Next  " id="Submit1" name="objSubmit">
<%
End Sub



Function recaptcha_challenge_writer(publickey) 

recaptcha_challenge_writer = "<script type=""text/javascript"">" & _ 
"var RecaptchaOptions = {" & _ 
"   theme : 'custom'," & _ 
"   tabindex : 0," & _ 
"   custom_theme_widget : 'recaptcha_widget'" & _ 
"};" & _ 
"function switchMode(e){" & _ 
"if(e.innerHTML == 'Get Audio CAPTCHA'){Recaptcha.switch_type('audio');document.getElementById('lnkAudio').innerHTML = 'Get Image CAPTCHA';} else if (e.innerHTML == 'Get Image CAPTCHA'){Recaptcha.switch_type('image');document.getElementById('lnkAudio').innerHTML = 'Get Audio CAPTCHA';}" & _
"}" & _
"</script>" & _ 
"<script type=""text/javascript"" src=""http://api.recaptcha.net/challenge?k=" & publickey & """></script>" & _ 
"<noscript>" & _ 
  "<iframe src=""http://api.recaptcha.net/noscript?k=" & publickey & """ frameborder=""1""></iframe><br>" & _ 
    "<textarea name=""recaptcha_challenge_field"" rows=""3"" cols=""40""></textarea>" & _ 
    "<input type=""hidden"" name=""recaptcha_response_field"" value=""manual_challenge"">" & _ 
"</noscript>" 


End Function 


function recaptcha_confirm(privkey,rechallenge,reresponse) 
' Test the captcha field 


Dim VarString 
VarString = _ 
        "privatekey=" & privkey & _ 
        "&remoteip=" & Request.ServerVariables("REMOTE_ADDR") & _ 
        "&challenge=" & rechallenge & _ 
        "&response=" & reresponse 


Dim objXmlHttp 
Set objXmlHttp = Server.CreateObject("Msxml2.ServerXMLHTTP") 
objXmlHttp.open "POST", "http://api-verify.recaptcha.net/verify", False 
objXmlHttp.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" 
objXmlHttp.send VarString 


Dim ResponseString 
ResponseString = split(objXmlHttp.responseText, vblf) 
Set objXmlHttp = Nothing 


if ResponseString(0) = "true" then 
  'They answered correctly 
   recaptcha_confirm = "" 
else 
  'They answered incorrectly 
   recaptcha_confirm = ResponseString(1) 
end if 


end function 

Sub Page_Two()
	Dim strOptions
	Dim strFirstName
	Dim strLastName
	Dim strCompany
	Dim strAddressLine1
	Dim strAddressLine2
	Dim strCity
	Dim strState
	Dim strZipCode
	Dim strPhone
	Dim strEmail
	Dim strEveningPhone
	
	'Call PopulateStates(strOptions, strState)
%>
<b>Information about you:</b>
<table class="reporFraud" width="500" style="margin-left: 10px;">
    <tr>
        <td align="left" valign="top">
            <nobr><label for="fname">First name:</label> <img class="clean" src="http://oig.hhs.gov/images/required.gif" alt="* required">
</nobr>
        </td>
        <td>
            <input type="text" onkeypress="return isAlphaKey(event)" name="fname" id="fname"
                size="40" maxlength="40" value="<%= Unticks(strFirstName)%>">
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <label for="lname">
                Last name:</label>
            <img class="clean"  src="http://oig.hhs.gov/images/required.gif" alt="* required">
        </td>
        <td>
            <input type="text" onkeypress="return isAlphaKey(event)" name="lname" id="lname"
                size="40" maxlength="40" value="<%= Unticks(strLastName)%>">
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <label for="company">
                Company:</label>
        </td>
        <td>
            <input type="text" name="company" id="company" size="40" maxlength="40" value="<%= Unticks(strCompany)%>">
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <label for="address">
                Address:</label>
        </td>
        <td>
            <input type="text" name="address" id="address" size="40" maxlength="40" value="<%= Unticks(Replace(strAddressLine1, chr(34), "&quot;")) %>">
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <label for="address2">
            </label>
        </td>
        <td>
            <input type="text" name="address2" id="address2" size="40" maxlength="40" value="<%=  Unticks(Replace(strAddressLine2, chr(34), "&quot;")) %>">
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <label for="city">
                City:</label>
        </td>
        <td>
            <input type="text" onkeypress="return isAlphaKey(event)" name="city" id="city" size="40"
                maxlength="40" value="<%= Unticks(strCity) %>">
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <nobr><label for="state">State</label> <img class="clean"  src="http://oig.hhs.gov/images/required.gif" alt="* required">
        </td>
        <td>
            <nobr>
<select name="state" id="state">
<option value="" selected>select ==&gt;</option>
<!-- #include virtual="/includes/states.asp" -->
</select>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <label for="zip">
                ZIP Code:</label>
        </td>
        <td>
            <input onkeypress="return isNumberKey(event)" type="text" name="zip" id="zip" size="10"
                maxlength="5" value="<%= Unticks(strZipCode) %>"></nobr>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <label for="phone">
                Phone:</label>
            <img class="clean"  src="http://oig.hhs.gov/images/required.gif" alt="* required">
        </td>
        <td>
            <input type="text" onkeypress="return isNumberKey(event)" onkeydown="javascript:backspacerDOWN(this,event)"
                onkeyup="javascript:backspacerUP(this,event)" name="phone" id="phone" size="40"
                maxlength="13" value="<%= Unticks(strPhone) %>">
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <label for="evening_phone">
                Evening phone:</label>
        </td>
        <td>
            <input type="text" onkeypress="return isNumberKey(event)" onkeydown="javascript:backspacerDOWN(this,event)"
                onkeyup="javascript:backspacerUP(this,event)" name="evening_phone" id="evening_phone"
                size="40" maxlength="13" value="<%= Unticks(strEveningPhone) %>">
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <label for="email">
                E-mail:</label>
        </td>
        <td>
            <input type="text" name="email" id="email" size="40" maxlength="50" value="<%= Unticks(strEmail) %>">
        </td>
    </tr>
</table>
<%
	
	RegurgitateFormFields
%>
<br />
<br />
<input type="submit" class="button" value="  Next  " id="objSubmit" name="objSubmit">
<%
End Sub

Sub Page_Three()
	Dim strComplaintTypes
	Dim strHHSDeptTypes
	Dim strSubjectOptions
	Dim strSubjectName
	Dim strSubjectTitle
	Dim strSubjectStreetAddress
	Dim strSubjectCityorCounty
	Dim strSubjectZipCode
	Dim strSubjectPhone
	Dim strDescriptionFraud
	Dim strSubjectState
	Dim strSelHHSDeptType
	Dim strSelComplaintType
	
	'Call PopulateStates(strSubjectOptions, strSubjectState)
	'Call PopulateHHSDeptTypes(strHHSDeptTypes, strSelHHSDeptType)
	'Call PopulateComplaintTypes(strComplaintTypes, strSelComplaintType)

%>
<b>Complaint Information:</b>
<table class="reporFraud" style="margin-left: 10px;">
    <tr>
        <td valign="top" colspan="2">
            Type of complaint:<br />
            <select name="selComplaintType" id="selComplaintType" style="width: 520px">
                <option value="">select ==&gt;</option>
                <!-- #include virtual="/includes/ComplaintTypes.asp" -->
            </select>
            <br />
            <br />
            Program/Agency:<br />
            <select name="selHHSDept" id="selHHSDept" style="width: 520px">
                <option value="">select ==&gt;</option>
                <!-- #include virtual="/includes/HHSDepartments.asp" -->
            </select>
            <br />
            <br />
            <!-- Begin subject allegation -->
            <strong>Subject/Person/Business/Department that allegation is against:</strong>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <label for="strSubjectName">
                Name:</label><img  class="clean"  src="http://oig.hhs.gov/images/required.gif" alt="* required">
        </td>
        <td>
            <input type="text" name="strSubjectName" id="strSubjectName" size="40" maxlength="125"
                value="<%= unticks(strSubjectName) %>">
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <label for="strSubjectTitle">
                Title:</label><br />
            <span style="font-size: 8pt;">(if applicable)</span>
        </td>
        <td>
            <input onkeypress="return isAlphaKey(event)" type="text" name="strSubjectTitle" id="strSubjectTitle"
                size="40" maxlength="50" value="<%= unticks(strSubjectTitle) %>">
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <label for="strSubjectStreetAddress">
                Address:</label>
        </td>
        <td>
            <input type="text" name="strSubjectStreetAddress" id="strSubjectStreetAddress" size="40"
                maxlength="100" value="<%= unticks(strSubjectStreetAddress) %>">
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <label for="strSubjectCityorCounty">
                City/County:</label>
        </td>
        <td>
            <input onkeypress="return isAlphaKey(event)" type="text" name="strSubjectCityorCounty"
                id="strSubjectCityorCounty" size="40" maxlength="50" value="<%= unticks(strSubjectCityorCounty) %>">
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <label for="strSubjectState">
                State:</label>
        </td>
        <td>
            <nobr>
<select name="strSubjectState" id="strSubjectState">
<option value="" selected>select ==&gt;</option>
<!-- #include virtual="/includes/states.asp" -->
</select>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <label for="strSubjectZipCode">
                ZIP code:</label>
        </td>
        <td>
            <input type="text" name="strSubjectZipCode" id="strSubjectZipCode" size="10" onkeypress="return isNumberKey(event)"
                maxlength="5" value="<%= strSubjectZipCode %>">
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <label for="phone">
                Phone:</label>
        </td>
        <td>
            <input onkeypress="return isNumberKey(event)" onkeyup="javascript:backspacerUP(this,event)"
                onkeydown="javascript:backspacerDOWN(this,event)" type="text" name="strSubjectPhone"
                id="strSubjectPhone" size="40" maxlength="13" value="<%= Unticks(strSubjectPhone) %>">
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="button" class="button" id="btnAddSubject_1" name="btnAddSubject_1" value="Add Another Subject"
                onclick="javascript:LaunchSubjectPanel(2)">
        </td>
    </tr>
    <!-- End subject allegation -->
    <% 
Dim intSubjectPanelCount
for intSubjectPanelCount = 2 to 5 
	Response.Write("<!-- Begin subject #" & intSubjectPanelCount & " allegation -->" & vbcrlf)
    %>
    <tr id="tr_<%= intSubjectPanelCount %>" style="display: none">
        <td colspan="2">
            <table class="reporFraud" border="0">
                <tr>
                    <td colspan="2">
                        <strong>Subject/Person/Business/Department that allegation is against:</strong>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top" width="100">
                        <label for="strSubjectName_<%=intSubjectPanelCount%>">
                            Name:</label><img class="clean"  src="http://oig.hhs.gov/images/required.gif" alt="* required">
                    </td>
                    <td>
                        <input onkeypress="return isAlphaKey(event)" type="text" name="strSubjectName_<%=intSubjectPanelCount%>"
                            id="strSubjectName_<%=intSubjectPanelCount%>" size="40" maxlength="125" value="<%= unticks(strSubjectName) %>">
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
                        <label for="strSubjectTitle_<%=intSubjectPanelCount%>">
                            Title:</label><br />
                        <span style="font-size: 8pt;">(if applicable)</span>
                    </td>
                    <td>
                        <input type="text" onkeypress="return isAlphaKey(event)" name="strSubjectTitle_<%=intSubjectPanelCount%>"
                            id="strSubjectTitle_<%=intSubjectPanelCount%>" size="40" maxlength="50" value="<%= unticks(strSubjectTitle) %>">
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
                        <label for="strSubjectStreetAddress_<%=intSubjectPanelCount%>">
                            Address:</label>
                    </td>
                    <td>
                        <input type="text" name="strSubjectStreetAddress_<%=intSubjectPanelCount%>" id="strSubjectStreetAddress_<%=intSubjectPanelCount%>"
                            size="40" maxlength="100" value="<%= unticks(strSubjectStreetAddress) %>">
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
                        <label for="strSubjectCityorCounty_<%=intSubjectPanelCount%>">
                            City/County:</label>
                    </td>
                    <td>
                        <input type="text" onkeypress="return isAlphaKey(event)" name="strSubjectCityorCounty_<%=intSubjectPanelCount%>"
                            id="strSubjectCityorCounty_<%=intSubjectPanelCount%>" size="40" maxlength="50"
                            value="<%= unticks(strSubjectCityorCounty) %>">
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
                        <label for="strSubjectState_<%=intSubjectPanelCount%>">
                            State:</label>
                    </td>
                    <td>
                        <nobr>
<select name="strSubjectState_<%=intSubjectPanelCount%>" id="strSubjectState_<%=intSubjectPanelCount%>">
<option value="" selected>select ==&gt;</option>
<%= strSubjectOptions%>
</select>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
                        <label for="strSubjectZipCode_<%=intSubjectPanelCount%>">
                            ZIP code:</label>
                    </td>
                    <td>
                        <input onkeypress="return isNumberKey(event)" maxlength="5" type="text" name="strSubjectZipCode_<%=intSubjectPanelCount%>"
                            id="strSubjectZipCode_<%=intSubjectPanelCount%>" size="10" maxlength="10" value="<%= strSubjectZipCode %>">
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
                        <label for="phone">
                            Phone:</label>
                    </td>
                    <td>
                        <input onkeypress="return isNumberKey(event)" onkeyup="javascript:backspacerUP(this,event)"
                            onkeydown="javascript:backspacerDOWN(this,event)" type="text" name="strSubjectPhone_<%=intSubjectPanelCount%>"
                            id="strSubjectPhone_<%=intSubjectPanelCount%>" size="40" maxlength="13" value="<%= Unticks(strSubjectPhone) %>">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <% if intSubjectPanelCount < 5 then %>
                        <input type="button"  class="button" id="btnAddSubject_<%=intSubjectPanelCount%>" name="btnAddSubject_<%=intSubjectPanelCount%>"
                            value="Add Another Subject"  onclick="javascript:LaunchSubjectPanel(<%=intSubjectPanelCount + 1%>)">
                        <% end if %>
                        <input type="button" class="button" id="btnRemoveSubject_<%=intSubjectPanelCount%>" name="btnRemoveSubject_<%=intSubjectPanelCount%>"
                            value="Remove This Subject" onclick="javascript:RemoveSubjectPanel(<%=intSubjectPanelCount%>)">
                    </td>
                </tr>
                <% if intSubjectPanelCount = 5 then %>
                <tr>
                    <td colspan="2">
                        If you have additional subjects to your complaint please include the information
                        in the Complaint Narrative.
                    </td>
                </tr>
                <% end if %>
                <input type="hidden" id="hidSubjectPanelValid_<%=intSubjectPanelCount%>" name="hidSubjectPanelValid_<%=intSubjectPanelCount%>"
                    value="" />
            </table>
        </td>
    </tr>
    <% 
	Response.Write("<!-- End subject #" & intSubjectPanelCount & " allegation -->" & vbcrlf)
next %>
    <tr>
        <td colspan="2">
            <p>
            In the textbox below please explain the fraud, waste, and/or abuse you wish to report.
            You may cut-and-paste text from a prepared document if you prefer.
        </p>
		<p>
            Your comments need not be exhaustive but should include sufficient detail for a
            Hotline analyst to evaluate the complaint.
            </p>
		<p>
            In addition to explaining the nature, scope, and time frame of the activity in question,
            please be sure you address the following questions (as appropriate):
              </p>
		
            <ul type="disc">
                <li>how are you aware of the alleged activity?</li>
                <li>have you already reported the fraud, waste and/or abuse? If so, to whom?</li>
                <li>have you suffered retaliation for reporting this activity? If so, explain.</li>
                <li>do you know of any potential witnesses to the activity?</li>
                <li>do you have any documents or other physical evidence in your possession?</li>
            </ul>
            <p>
            If your compaint involves a charge from a Medicare Summary Notice please -
			</p>
            <ul type="disc">
                <li>attach an electronic copy (if available), or,</li>
                <li>
                include the beneficiary's information (full name, address, Medicare Number) and
                summarize the charge details (date of service, service description, amount charged,
                amount charged, amount approved/paid) in the Complaint Narrative.</li>
            </ul>
			<h3>            Complaint Narrative</h3>
            <p>
            <b>Comments are limited to 4000 characters - longer comments can be attached as file
                attachments.</b>
            </p>
			<p>
            <textarea cols="50" rows="14" name="details" id="details"><%= Unticks(Replace(strDescriptionFraud, chr(34), "&quot;")) %></textarea>
			</p>
            <p>
            You may also attach documents. To add an attachment, click the "Browse" button below.
            Select the file(s) that you wish to upload, and then click "Submit this complaint"
            </p>
			<div class="uploadInput">
            <input type="file" name="objFile" id="objFile" type="file" onkeypress="alert('You are not allowed to type in the file name.  Please click the \'Browse\' button to upload an attachment, then click \'Upload\'');return false;">
            
            <input type="file" name="objFile2" id="objFile2" type="file" onkeypress="alert('You are not allowed to type in the file name.  Please click the \'Browse\' button to upload an attachment, then click \'Upload\'');return false;">
          
            <input type="file" name="objFile3" id="objFile3" type="file" onkeypress="alert('You are not allowed to type in the file name.  Please click the \'Browse\' button to upload an attachment, then click \'Upload\'');return false;">
           
            <input type="file" name="objFile4" id="objFile4" type="file" onkeypress="alert('You are not allowed to type in the file name.  Please click the \'Browse\' button to upload an attachment, then click \'Upload\'');return false;">
           
            <input type="file" name="objFile5" id="objFile5" type="file" onkeypress="alert('You are not allowed to type in the file name.  Please click the \'Browse\' button to upload an attachment, then click \'Upload\'');return false;">
			</div>
        </td>
    </tr>
</table>
<script language="javascript">

    var count = "4000";
    function limiter(e) {



        var tex = document.OIGFraudForm.details.value;
        var len = tex.length;


        if (len > count) {

            tex = tex.substring(0, count);
            alert('You have exceeded the 4000 character limit for narrative comments.  Additional comments can be attached in a file.');
            document.OIGFraudForm.details.value = tex;
            document.OIGFraudForm.details.scrollTop = 1152;
            return false;
        }
    }



    var tim = window.setInterval('limiter()', 100);
</script>
<% 
RegurgitateFormFields%>
<br />
<br />
<p>
    <input type="submit" class="button" value="  Submit this complaint  " id="objSubmit" name="objSubmit"></p>
<%
End Sub 

Sub Page_Four()

	RegurgitateFormFieldsUsingMultiType
%><table>
    <tr>
        <td valign="top" colspan="2" style="padding-top: 20px">
            <td>
                Your complaint has been submitted.
                <br />
                <br />
                An OIG analyst will review your complaint for relevance and completeness. Not all
                complaints result in an investigation.
                <br />
                <br />
                If you have identified yourself, a reviewing official may contact you for further
                information.
                <br />
                <br />
                The Hotline is not authorized to disclose any information on records in its possession:
                the Hotline will not be able to confirm receipt of your complaint or respond to
                any inquiries about action taken on your complaint. We understand the natural inclination
                to follow up on a report but the OIG does not provide the status of complaints.
                You have the option, however, of requesting records through the OIG Freedom of Information
                Act officer (<a href="/foia/submit.asp">oig.hhs.gov/foia/submit.asp</a>).
                Remember to phrase your request in terms of a search for <b>records</b> pertinent
                to your complaint, not status. You should wait at least six months before filing
                such a request.
                <br />
                <br />
                If your purpose in filing a complaint is in part to gain some type of relief – such
                as obtaining a refund from a Medicare-participating provider or qualifying for benefits
                from an HHS-funded program – we strongly advise that you pursue other administrative
                or judicial remedies. OIG rarely intervenes in personal or civil grievances.
                <br />
                <br />
                <a href="#" onclick="window.open('PrintComplaint.asp')">Print complaint</a>
            </td>
    </tr>
</table>
<%
End Sub

Sub RegurgitateFormFields()
	Dim i
	Dim strFormField
	Dim strFormFieldIdAndName
    Dim strFormValue 

	for i = 1 to Request.Form.Count
		strFormValue = ""
		strFormField = Request.Form.Key(i)
		If strFormField <> "currentPage" and strFormField <> "objSubmit" then
			strFormFieldIdAndName = Replace(strFormField, "hid_", "")
            strFormValue = Request.Form(strFormField)
            if len(strFormValue) > 0 and strFormField <> "recaptcha_challenge_field" then
                strFormValue = StripBrackets(strFormValue)
            end if
			Response.Write("<input type=""hidden"" id=""hid_" & strFormFieldIdAndName & """ name=""hid_" & strFormFieldIdAndName & """ value=""" & strFormValue & """>" & vbcr)
		end if
		
	Next
End Sub





Sub RegurgitateFormFieldsUsingMultiType()
	Dim i
	Dim strFormField
	Dim strFormFieldIdAndName
	Dim item
	Dim keys
	Dim objConn
    Dim strFormValue 
	
	keys = objUploader.FormKeys
	
	For i = 0 to objUploader.FormItemCount - 1
		
		
		strFormFieldIdAndName = keys(i)
		strFormField = objUploader.Form(strFormFieldIdAndName)
		
		If strFormFieldIdAndName <> "currentPage" and strFormFieldIdAndName <> "objSubmit"  then
			
			if strFormFieldIdAndName = "hid_rdoidentify" then
				if strFormField = "Yes" then
					strFormField = "User chooses to identify himself/herself"
				ElseIf strFormField = "No" then
					strFormField =  "User chooses to remain anonymous"
				Else
					strFormField = "Unknown"
				End If
			end if
			 if len(strFormField) > 0 and strFormFieldIdAndName <> "recaptcha_challenge_field" then
                		strFormField = StripBrackets(strFormField)
            		end if
			Response.Write("<input type=""hidden"" id=""PRINT_" & strFormFieldIdAndName & """ name=""PRINT_" & strFormFieldIdAndName & """ value=""" & strFormField & """>" & vbcr)
		end if
	Next
	
	'Call CloseDatabase(objConn)
end Sub

%>
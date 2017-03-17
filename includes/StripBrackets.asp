<%

Function StripBrackets(strInput)
    Dim RegularExpressionObject
    if len(strInput) = 0 then
        StripBrackets = ""
        exit function
    end if

    Set RegularExpressionObject = New RegExp
    With RegularExpressionObject
        .Pattern = "</?\w+((\s+\w+(\s*=\s*(?:"".*?""|'.*?'|[^'"">\s]+))?)+\s*|\s*)/?>"
        .IgnoreCase = True
        .Global = True
		
    End With
    

    if RegularExpressionObject.Test(strInput) then
		
        StripBrackets = RegularExpressionObject.Replace(strInput, "")
		
    else
        StripBrackets = strInput
    end if
    
end Function 


%>
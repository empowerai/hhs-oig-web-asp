// PNG Fix

if(navigator.platform=="Win32"&&navigator.appName=="Microsoft Internet Explorer"&&window.attachEvent){window.attachEvent("onload",enableAlphaImages);}
function enableAlphaImages(){var rslt=navigator.appVersion.match(/MSIE (\d+\.\d+)/,'');var itsAllGood=(rslt!=null&&Number(rslt[1])>=5.5);if(itsAllGood){for(var i=0;i<document.all.length;i++){var obj=document.all[i];var bg=obj.currentStyle.backgroundImage;var img=document.images[i];if(bg&&bg.match(/\.png/i)!=null){var img=bg.substring(5,bg.length-2);var offset=obj.style["background-position"];obj.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+img+"', sizingMethod='scale')";obj.style.backgroundImage="url('/images/blank.gif')";obj.style["background-position"]=offset;}
else if(img&&img.src.match(/\.png$/i)!=null){var src=img.src;img.style.width=img.width+"px";img.style.height=img.height+"px";img.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+src+"', sizingMethod='crop')"
img.src="/images/blank.gif";}}}}


// Problems with the above PNG fix scaling background images incorrectly? Try this version:
/*
var clear="/images/blank.gif";

document.write('<script type="text/javascript" id="ct" defer="defer" src="javascript:void(0)"><\/script>');var ct=document.getElementById("ct");ct.onreadystatechange=function(){pngfix()};pngfix=function(){var els=document.getElementsByTagName('*'),ip=/\.png/i,al="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='",i=els.length,uels=new Array(),c=0;while(i-->0){if(els[i].className.match(/unitPng/)){uels[c]=els[i];c++;}}if(uels.length==0)pfx(els);else pfx(uels);function pfx(els){i=els.length;while(i-->0){var el=els[i],es=el.style,elc=el.currentStyle,elb=elc.backgroundImage;if(el.src&&el.src.match(ip)&&!es.filter){es.height=el.height;es.width=el.width;es.filter=al+el.src+"',sizingMethod='crop')";el.src=clear;}else{if(elb.match(ip)){var path=elb.split('"'),rep=(elc.backgroundRepeat=='no-repeat')?'crop':'scale',elkids=el.getElementsByTagName('*'),j=elkids.length;es.filter=al+path[1]+"',sizingMethod='"+rep+"')";es.height=el.clientHeight+'px';es.backgroundImage='none';if(j!=0){if(elc.position!="absolute")es.position='static';while(j-->0)if(!elkids[j].style.position)elkids[j].style.position="relative";}}}}};};
*/
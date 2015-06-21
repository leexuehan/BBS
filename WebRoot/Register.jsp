<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.bbs.action.*,com.bbs.beans.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0045)http://bbs.pediy.com/register.php?do=register -->
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh-CN">
<head>
<base href="http://localhost:8080/BBS/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="generator" content="vBulletin 3.8.7">

<meta name="keywords" content="安全,软件安全,WEB安全,加密,解密,加壳,脱壳,加密壳,软件保护,破解,debug,pack,unpack">
<meta name="description" content="安全,软件安全,WEB安全,加密,解密,加壳,脱壳,加密壳,软件保护,破解,debug,pack,unpack">


<!-- CSS Stylesheet -->
<style type="text/css" id="vbulletin_css">
/**
* vBulletin 3.8.7 CSS
* Style: 'VBB3'; Style ID: 7
*/
body
{
	background: #EFF3F9;
	color: #13253C;
	font: 12px verdana, simsun,tahoma,geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
	margin: 5px 10px 10px 10px;
	padding: 0px;
}
a:link, body_alink
{
	color: #000000;
	text-decoration: none;
}
a:visited, body_avisited
{
	color: #000000;
	text-decoration: none;
}
a:hover, a:active, body_ahover
{
	color: #529AF2;
	text-decoration: underline;
}
.page
{
	background: #FFFFFF;
	color: #13253C;
}
td, th, p, li
{
	font: 12px 宋体,courier new,simsun,tahoma,verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
}
.tborder
{
	background: #FFFFFF;
	color: #13253C;
	border: 1px solid #8FA0B0;
}
.tcat
{
	background: #415881 url(images/pediy/gradients/gradient_tcat.gif) repeat-x top left;
	color: #F6F7FC;
	font: bold 12px verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
}
.tcat a:link, .tcat_alink
{
	color: #F6F7FC;
	text-decoration: none;
}
.tcat a:visited, .tcat_avisited
{
	color: #F6F7FC;
	text-decoration: none;
}
.tcat a:hover, .tcat a:active, .tcat_ahover
{
	color: #F6F7FC;
	text-decoration: underline;
}
.thead
{
	background: #D1D7DC url(images/pediy/gradients/gradient_thead.gif) repeat-x top left;
	color: #333333;
	font: 12px tahoma, verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
	border-bottom: 1px solid #E2E7F0;
}
.thead a:link, .thead_alink
{
	color: #333333;
	text-decoration: none;
}
.thead a:visited, .thead_avisited
{
	color: #333333;
	text-decoration: none;
}
.thead a:hover, .thead a:active, .thead_ahover
{
	color: #333333;
	text-decoration: underline;
}
.tfoot
{
	background: #415881 url(images/pediy/gradients/gradient_tcat.gif) repeat-x top left;
	color: #F6F7FC;
}
.tfoot a:link, .tfoot_alink
{
	color: #F6F7FC;
}
.tfoot a:visited, .tfoot_avisited
{
	color: #F6F7FC;
}
.tfoot a:hover, .tfoot a:active, .tfoot_ahover
{
	color: #F6F7FC;
}
.alt1, .alt1Active
{
	background: #F5F5F5;
	color: #13253C;
	font: 12px 宋体,verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
	border-bottom: 1px solid #E2E7F0;line-height:20px;padding:5px;
}
.alt2, .alt2Active
{
	background: #DEE3E7;
	color: #333333;
	font: 12px 宋体,verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
	border-bottom: 1px solid #E2E7F0;
	
}
.inlinemod
{
	background: #FFFFCC;
	color: #333333;
}
.wysiwyg
{
	background: #F6F7FC;
	color: #333333;
	font: 10pt verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
	margin: 5px 10px 10px 10px;
	padding: 0px;
}
.wysiwyg a:link, .wysiwyg_alink
{
	color: #00447F;
}
.wysiwyg a:visited, .wysiwyg_avisited
{
	color: #00447F;
}
.wysiwyg a:hover, .wysiwyg a:active, .wysiwyg_ahover
{
	color: #FF4400;
}
textarea, .bginput
{
	font: 12px verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
}
.bginput option, .bginput optgroup
{
	font-size: 12px;
	font-family: verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
}
.button
{
	font: 12px verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
}
select
{
	font: 12px verdana, tahoma, arial, sans-serif;
}
option, optgroup
{
	font-size: 12px;
	font-family: verdana, tahoma, arial, sans-serif;
}
.smallfont
{
	font: 12px 宋体,verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
}
.time
{
	color: #333333;
}
.navbar
{
	font: 12px verdana, tahoma, arial, sans-serif;
}
.highlight
{
	color: #FF0000;
	font-weight: bold;
}
.fjsel
{
	background: #415881;
	color: #E0E0F6;
}
.fjdpth0
{
	background: #F7F7F7;
	color: #333333;
}
.panel
{
	background: #E4E7F5 url(images/gradients/gradient_panel.gif) repeat-x top left;
	color: #333333;
	padding: 10px;
	border: 2px outset;
}
.panelsurround
{
	background: #D1D4E0 url(images/gradients/gradient_panelsurround.gif) repeat-x top left;
	color: #333333;
}
legend
{
	color: #00447F;
	font: 12px tahoma, verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
}
.vbmenu_control
{
	background: #415881 url(images/pediy/gradients/gradient_tcat.gif) repeat-x top left;
	color: #FFFFFF;
	font: bold 12px tahoma, verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
	padding: 6px;
	white-space: nowrap;
}
.vbmenu_control a:link, .vbmenu_control_alink
{
	color: #FFFFFF;
	text-decoration: none;
}
.vbmenu_control a:visited, .vbmenu_control_avisited
{
	color: #FFFFFF;
	text-decoration: none;
}
.vbmenu_control a:hover, .vbmenu_control a:active, .vbmenu_control_ahover
{
	color: #FFFFFF;
	text-decoration: underline;
}
.vbmenu_popup
{
	background: #FFFFFF;
	color: #333333;
	border: 1px solid #00447F;
}
.vbmenu_option
{
	background: #F6F7FC;
	color: #333333;
	font: 12px verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
	white-space: nowrap;
	cursor: pointer;
	border-bottom: 1px solid #E2E7F0;
}
.vbmenu_option a:link, .vbmenu_option_alink
{
	color: #00447F;
	text-decoration: none;
}
.vbmenu_option a:visited, .vbmenu_option_avisited
{
	color: #00447F;
	text-decoration: none;
}
.vbmenu_option a:hover, .vbmenu_option a:active, .vbmenu_option_ahover
{
	color: #FFFFFF;
	text-decoration: none;
}
.vbmenu_hilite
{
	background: #8A949E;
	color: #FFFFFF;
	font: 12px verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
	white-space: nowrap;
	cursor: pointer;
	border-bottom: 1px solid #E2E7F0;
}
.vbmenu_hilite a:link, .vbmenu_hilite_alink
{
	color: #FFFFFF;
	text-decoration: none;
}
.vbmenu_hilite a:visited, .vbmenu_hilite_avisited
{
	color: #FFFFFF;
	text-decoration: none;
}
.vbmenu_hilite a:hover, .vbmenu_hilite a:active, .vbmenu_hilite_ahover
{
	color: #FFFFFF;
	text-decoration: none;
}
/* ***** styling for 'big' usernames on postbit etc. ***** */
.bigusername { font-size: 11pt; FONT-FAMILY: verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif} 


/* ***** small padding on 'thead' elements ***** */
td.thead, th.thead, div.thead { padding: 4px; }

/* ***** basic styles for multi-page nav elements */
.pagenav a { text-decoration: none; }
.pagenav td { padding: 2px 4px 2px 4px; }

/* ***** de-emphasized text */
.shade, a.shade:link, a.shade:visited { color: #777777; text-decoration: none; }
a.shade:active, a.shade:hover { color: #FF4400; text-decoration: underline; }
.tcat .shade, .thead .shade, .tfoot .shade { color: #DDDDDD; }

/* ***** define margin and font-size for elements inside panels ***** */
.fieldset { margin-bottom: 6px; }
.fieldset, .fieldset td, .fieldset p, .fieldset li { font-size: 12px; }

/* *****文字换行及横排***** */
.tb {table-layout:fixed;}
.columncell {background: #E1E4F2; color: #000000; border: 1px solid #0B198C; padding: 5px 5px 5px 5px;}
#wrap{word-break:break-all; width:100%;}
.divh {background-color: #FFFFCC;border: 1px dashed #000000;text-align: center;}
/* ***** quote style 2 ***** */  
.quoted1 { width: 95%; border: 1px solid #909090; padding: 8px; padding-top: 0px; margin: 8px; margin-top: 12pt; text-align: left; }  
.quoted2 { position: relative; left: 4px; top: -7.5pt; width: 150px;  color: #ffffff; border: 1px solid #909090; background-color: #909090; padding: 1px; padding-left: 6px; padding-right: 6px; z-index: 1; }  

/* *****CCF背景是深色的***** */
.ccf{background: #DEDFDF; color: #000000}
.ccffont{color: #000080}
</style>
<link rel="stylesheet" type="text/css" href="./Styles/RegStyle/vbulletin_important.css">


<!-- / CSS Stylesheet -->

<script type="text/javascript" src="./Styles/RegStyle/yahoo-dom-event.js"></script>
<script type="text/javascript" src="./Styles/RegStyle/connection-min.js"></script>
<script type="text/javascript">
<!--
var SESSIONURL = "";
var SECURITYTOKEN = "guest";
var IMGDIR_MISC = "images/pediy/misc";
var vb_disable_ajax = parseInt("0", 10);
// -->
function whodownloaded(attachmentid)
{
    window.open("whodownloaded.php?s=&attachmentid=" + attachmentid, "whodownloaded", "toolbar=no, scrollbars=yes, resizable=yes, width=240, height=300, top=50, left=50");
}
// -->
</script>
<script type="text/javascript" src="./Styles/RegStyle/vbulletin_global.js"></script>
<script type="text/javascript" src="./Styles/RegStyle/vbulletin_menu.js"></script>


	<link rel="alternate" type="application/rss+xml" title="看雪安全论坛 RSS Feed" href="http://bbs.pediy.com/external.php?type=RSS2">
	



<style type="text/css">
/* ***** red and green boxes for username verification used during registration ***** */
.greenbox { border: 1px solid #337733; background: #bbffbb; color: #337733; padding: 3px; }
.redbox { border:1px solid #773333; background: #ffbbbb; color: #773333; padding: 3px; }
</style>
<title>看雪安全论坛 - 注册</title>
</head>
<body>

<!-- logo -->
<a name="top"></a>
<table border="0" width="980" cellpadding="0" cellspacing="0" align="center">
<tbody><tr>
	<td width="32" rowspan="2" align="left"><a href="http://www.pediy.com/"></a></td>
	<td width="603" rowspan="2" align="right" id="header_right_cell">
	<a href="http://www.ijiami.cn/activity/rencai" target="_blank"></a>	</td>
    <td width="320" align="right" id="header_right_cell"><p>&nbsp;</p>
    <p>&nbsp;</p></td>
    <td width="92" align="right" id="header_right_cell"><p>&nbsp;</p>
    <p>&nbsp;</p></td>
</tr>
<tr>
  <td align="right" id="header_right_cell"><a href="http://bbs.pediy.com/"></a></td>
  <td align="right" id="header_right_cell"><a href="http://www.kanxue.com/bbs/"></a></td>
</tr>
</tbody></table>
<!-- /logo -->

<!-- <script type="text/javascript" src="./Styles/RegStyle/vbulletin_md5.js"></script> -->
<script type="text/javascript">
function verify_passwords(password1, password2)
{
	// do various checks, this will save people noticing mistakes on next page
	if (password1.value == '' || password2.value == '')
	{
		alert('请填写两次密码。');
		return false;
	}
	else if (password1.value != password2.value)
	{
		alert('密码不匹配。');
		return false;
	}
	else
	{
		

     if (password1.value.length < 5)
   {
	alert('密码太短，密码最小长度是5字节 \n The Password you have choosen is too short. Please make sure that it is at least 5 characters long.');
	return false;
   }
   if (password1.value == document.forms.register.username.value || password1.value == document.forms.register.email.value)
   {
	alert('密码无效，为了安全，请勿用注册名或eMail地址做密码。\n The Password you have chosen is invalid. Please make sure that you are not using your Username or eMail-Address as Password.');	
	return false;
   }
 
   if (password1.value == '12345' || password1.value == '123456' || password1.value == '1234567' || password1.value == '12345678')
   {
	alert('请勿使用12345之类连续数字做密码，太不安全了！  \n The Password you have choosen is not considered strong enough. Please make sure that you are using at least 2 different character Classes (Uppercase Characters, Lowercase Characters, Numbers or other Characters).');	
	return false;
   }
   
		var junk_output;

		md5hash(password1, document.forms.register.password_md5, junk_output, 0);
		md5hash(password2, document.forms.register.passwordconfirm_md5, junk_output, 0);

		

		return true;
	}
	return false;
}

var req;
var span;
function Check(field) {
	span = document.getElementById("result");
	if(field.value == '') {
		span.style.color = "red";
		span.innerHTML="用户名不能为空";
		return false;
	}	
	if(window.XMLHttpRequest) {
		req = new XMLHttpRequest();
	}else if(window.ActiveXObject) {
		req = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	req.onreadystatechange = press;
	var url = "http://localhost:8080/BBS/CheckUser?username="+field.value;
	req.open("POST",encodeURI(encodeURI(url)) , true);
	req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	req.send("");
}

function press() {
	if(req.readyState < 4) {
		span.style.color = "blue";
		span.innerHTML="正在检测";
	}
	if(req.readyState == 4) {
		if(req.status == 200) {
			if(req.responseText == "exists") {
				span.style.color = "red";
				span.innerHTML="用户名已经存在";
			}else {
				span.style.color = "green";
				span.innerHTML="您可以使用该用户名";
			}			
		}
	}
}

</script>

<form action="AddUserAction" name="register" method="post" onsubmit="return verify_passwords(password, passwordconfirm);">
  <table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center">
<tbody>
<tr>
	<td class="tcat">麦田论坛 - 论坛注册</td>
</tr>
<tr>
	<td class="panelsurround" align="center">
	<div class="panel">
		<div style="width:640px" align="left">

			<div class="smallfont" style="margin-bottom:3px">注意事项</div>
			<div id="t1" cssStyle="border:1px solid yellow;"></div>
			<div class="smallfont" style="margin-bottom:3px">
				
				<img id="indicator" src="" alt="Loading" style="display:none"/>
				<strong>用户名</strong>:<br>
				
				<input  id="regusername" type="text" name="username" size="50" maxlength="12" value=""
				 autocomplete="off" onblur="Check(this)"/>	
				 <span id = "result"></span>		
			</div>
			
			<fieldset class="fieldset">
				<legend>个性签名</legend>
				<table cellpadding="0" cellspacing="3" border="0" width="400">
				<tbody><tr>
					<td colspan="2">有什么话一直影响到你</td>
				</tr>
				<tr>
					<td>
						<input type="text" class="bginput" name="note" size="25" maxlength="50" value="" dir="ltr">
					</td>
				</tr>				
				</tbody>
				</table>
			</fieldset>
			
			<fieldset class="fieldset">
				<legend>性别</legend>
				<table cellpadding="0" cellspacing="3" border="0" width="400">
				<tbody>
				<tr>
					<td>
						<input type="radio" class="bginput" name="sex" size="25" maxlength="50" value="1" dir="ltr" checked>男
						<input type="radio" class="bginput" name="sex" size="25" maxlength="50" value="0" dir="ltr">女
					</td>
				</tr>				
				</tbody>
				</table>
			</fieldset>
			
			<fieldset class="fieldset">
				<legend>爱好</legend>
				<table cellpadding="0" cellspacing="3" border="0" width="400">
				<tbody><tr>
					<td colspan="2">你平常爱关注的事物，一到两项</td>
				</tr>
				<tr>
					<td>
						<input type="text" class="bginput" name="hobby" size="25" maxlength="50" value="" dir="ltr">
					</td>
				</tr>				
				</tbody>
				</table>
			</fieldset>

			<fieldset class="fieldset">
				<legend>密　码</legend>
				<table cellpadding="0" cellspacing="3" border="0" width="400">
				<tbody><tr>
					<td colspan="2">请输入密码，注意密码区分大小写。</td>
				</tr>
				<tr>
					<td>
						密　码:<br>
						<input type="password" class="bginput" name="password" size="25" maxlength="50" value="">
					</td>
					  
					<td>
						确认密码:<br>
						<input type="password" class="bginput" name="passwordconfirm" size="25" maxlength="50" value="">
					</td>
				</tr>
				</tbody></table>
			</fieldset>
			
			<fieldset class="fieldset">
				<legend>美照</legend>
				<table cellpadding="0" cellspacing="3" border="0" width="400">
				<tbody><tr>
					<td colspan="2">上传属于你的头像(路径)</td>
				</tr>
				<tr>
					<td>
						<input type="text" class="bginput" name="portrait" size="25" maxlength="50" value="" dir="ltr">
					</td>
				</tr>				
				</tbody>
				</table>
			</fieldset>

			<fieldset class="fieldset">
				<legend>邮箱地址</legend>
				<table cellpadding="0" cellspacing="3" border="0" width="400">
				<tbody><tr>
					<td colspan="2">请输入一个您有效的电子邮箱地址（将发激活信到此信箱，帐号激活后才有效）。</td>
				</tr>
				<tr>
					<td>
						邮箱地址:<br>
						<input type="text" class="bginput" name="email" size="25" maxlength="50" value="" dir="ltr">
					</td> 
				</tr>				
				</tbody>
				</table>
			</fieldset>
			<!--  
			<fieldset class="fieldset">
					<legend>图像验证</legend>
					<table cellpadding="0" cellspacing="3" border="0" width="100%">
						<tbody><tr>
							<td width="100%" valign="top">
								请输入图像中的六位数字或字母。<br><br>
								<img id="progress_imagereg" style="display: none; float:right" src="./Styles/RegStyle/progress.gif" alt="">
							<input type="text" class="bginput" name="humanverify[input]" size="10" maxlength="6"></td>
							<td valign="bottom" align="center"><span id="refresh_imagereg" style="cursor: pointer;"><a href="http://bbs.pediy.com/register.php?do=register#">验证码图像</a></span>		</td>
							</tr>
						</tbody>
					</table>
			</fieldset>-->
<script type="text/javascript" src="./Styles/RegStyle/vbulletin_ajax_imagereg.js"></script>
<script type="text/javascript">
<!--
vB_AJAX_ImageReg_Init();
//-->
</script>

		</div>
	</div>
	</td>
</tr>
</tbody></table>
<br>

<table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center">
<tbody>
<tr>
	<td class="panelsurround" align="center"><div style="margin-top:6px">
		<input type="submit" class="button" value="完成注册" accesskey="s">
		<input type="reset" class="button" name="Reset" value="重置表单">
	</td>
</tr>
</tbody>
</table>

</form>


<!-- / close content container -->
<!-- /content area table -->
<script type="text/javascript">
<!--
	// Main vBulletin Javascript Initialization
	vBulletin_init();
//-->
</script>
</body></html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.bbs.model.*,java.util.*,com.bbs.beans.*" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0021)http://bbs.pediy.com/ -->
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh-CN">
<style type="text/css" id="29756894000"></style>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="http://localhost:8080/BBS/" />
	<!-- no cache headers -->
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Expires" content="-1">
	<meta http-equiv="Cache-Control" content="no-cache">
	<!-- end no cache headers -->
	
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
<link rel="stylesheet" type="text/css" href="./Styles/FrontPageStyle/vbulletin_important.css">


<!-- / CSS Stylesheet -->

<script async="" type="text/javascript" src="./Styles/FrontPageStyle/ca-pub-1585618761901261.js"></script><script type="text/javascript" src="./Styles/FrontPageStyle/yahoo-dom-event.js"></script>
<script type="text/javascript" src="./Styles/FrontPageStyle/connection-min.js"></script>
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
<title>麦田论坛</title>
</head>
<body>
<!-- logo -->
<a name="top"></a>
<!-- /logo -->
<div align="center">
	<div class="page" style="width:980px; text-align:left">
		<div style="padding:0px 7px 0px 7px" align="left">
<br>
<!-- breadcrumb, login, pm info -->
<s:if test="#session.user_session == null">
<table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center">
<tbody>
<tr>
	<td class="alt1" width="100%">		
			<div class="navbar" style="font-size:10pt">
			<img class="inlineimg" border="0"></a> <strong>麦田论坛</strong>
			</div>		
	</td>

	<td class="alt2" nowrap="nowrap" style="padding:0px">
		<!-- login form -->
		<form action="login" method="post" >
		<script type="text/javascript" src="./Styles/FrontPageStyle/vbulletin_md5.js"></script>
		<table cellpadding="0" cellspacing="3" border="0">
		<tbody>
		<tr>
			<td class="smallfont" style="white-space: nowrap;"><label for="navbar_username">用户名</label></td>
			<td><input type="text" class="bginput" style="font-size: 12px" name="username" id="navbar_username" size="10" accesskey="u" tabindex="101" value="用户名" onfocus=""></td>
			<td><label for="cb_cookieuser_navbar"><input name="cookieuser" type="checkbox" id="cb_cookieuser_navbar" accesskey="c" tabindex="103" value="1" checked="">记住</label></td>
		</tr>
		<tr>
			<td class="smallfont" nowrap="nowrap"><label for="navbar_password">密　码</label></td>
			<td><input type="password" class="bginput" style="font-size: 12px" name="password" id="navbar_password" size="10" tabindex="102"></td>		
			<td><input type="submit" class="button" value="登录论坛" tabindex="104" title="在登录框中输入您的用户名和密码登录，或者点击“注册”按钮注册一个新账号。" accesskey="s"><a 
="http://bbs.pediy.com/login.php?do=lostpw">忘记密码?</a></td>
		</tr>
		<tr><td class="smallfont" color="red" nowrap="nowrap"><s:actionerror /></td></tr>
		</tbody>
		</table>
		</form>
		<!-- / login form -->
	</td>
</tr>
</tbody>
</table>
<!-- / breadcrumb, login, pm info -->

<!-- nav buttons bar -->
<div class="tborder" style="padding:1px; border-top-width:0px">
	<table cellpadding="0" cellspacing="0" border="0" width="100%" align="center">
	<tbody>
	<tr align="center">		
	  <td class="vbmenu_control"><a href="Register.action" rel="nofollow">
	  <strong><font color="#FFFF00">注册账号</font></strong></a></td>				
		<td class="vbmenu_control"><a href="" rel="nofollow">搜索论坛</a></td>			
		<td class="vbmenu_control"><a rel="help" href="" accesskey="5">论坛帮助</a></td>
	</tr>
	</tbody>
	</table>
	<!-- 公告信息 -->
	<table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center">
		<tbody><tr>
			<td class="alt1">&nbsp;</td>
		</tr></tbody>
	</table>
	<!-- guest welcome message -->
	<table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center">
		<tbody><tr>
			<td class="tcat">欢迎来到<b>麦田论坛</b>！</td>
			</tr>
			<tr>
			<td class="alt1">
					您需要<a href="Register.jsp"><strong>注册账号</strong></a>才能够发帖</a>以获取更多信息。
					如果您忘记了账号密码，可以点击<a href="http://bbs.pediy.com/login.php?do=lostpw"><strong>取回账号密码</strong></a>。
			</td>
			</tr>
		</tbody>
	</table>
</div>
</s:if>
<s:elseif test="#session.user_session != null">

<!-- nav buttons bar -->
<table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center">
<tbody>
<tr>
	<td class="alt1" width="100%">		
			<div class="navbar" style="font-size:10pt"><a href="http://bbs.pediy.com/index.php" accesskey="1"><img class="inlineimg" src="./Styles/FrontPageStyle/navbits_start.gif" alt="" border="0"></a> <strong>麦田论坛</strong></div>
		
	</td>

	<td class="alt2" nowrap="nowrap" style="padding:0px">
		<!-- login form -->
		<form action="login" method="post" >
		<script type="text/javascript" src="./Styles/FrontPageStyle/vbulletin_md5.js"></script>
		<table cellpadding="0" cellspacing="3" border="0">
		<tbody>
		<tr>
		<!-- 用户名 -->
			<td class="smallfont" style="white-space: nowrap;"><s:property value="#session.user_session.getUserName()"/>
			</td>			
		</tr>
		<!-- 用户组 -->
		<tr><td class="smallfont" style="white-space: nowrap;"><s:property value="#session.user_session.getGroup().getGroupName()"/></td></tr>
		</tbody>
		</table>
		</form>
		<!-- / login form -->
	</td>
</tr>
</tbody>
</table>
<!-- / breadcrumb, login, pm info -->

<!-- nav buttons bar -->
<div class="tborder" style="padding:1px; border-top-width:0px">
	<table cellpadding="0" cellspacing="0" border="0" width="100%" align="center">
	<tbody>
	<tr align="center">		
	  <td class="vbmenu_control"><a href="logout" rel="nofollow">
	  <strong><font color="#FFFF00">退出论坛</font></strong></a></td>				
		<td class="vbmenu_control"><a href="" rel="nofollow">个人主页</a></td>			
		<td class="vbmenu_control"><a rel="help" href="" accesskey="5">搜索论坛</a></td>
	</tr>
	</tbody>
	</table>
</div>
</s:elseif>



<!-- / add -->
<!-- / message -->
<table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center" style="height:100%">
		<tbody>
			<tr valign="top">
				<td class="thead" align="left" width="33%">热门主题</td>
				<td class="thead" align="left" width="33%"><a href="http://bbs.pediy.com/forumdisplay.php?f=153">最新回复</a></td>
				<td class="thead" align="left" width="33%"><a href="http://bbs.pediy.com/search.php?do=finduser&goodnees=1">最新精华</a></td>
			</tr>
		</tbody>
</table>




<!-- main -->
<table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center">
<thead>
	<tr align="center">
	  <td class="thead">&nbsp;</td>
	  <td class="thead" width="100%" align="left">论坛</td>
	  <td class="thead" nowrap="nowrap">最后发表</td>
	  <td class="thead" nowrap="nowrap">主题</td>
	  <td class="thead" nowrap="nowrap">帖子</td>
	</tr>
</thead>
<!-- 迭代父版块 -->
<s:iterator value="map" id="id" var="map">
<tbody>
	<tr>
		<td class="tcat" colspan="5">			
			<a style="float:right" href=""><img id="collapseimg_forumbit_3" src="./Styles/FrontPageStyle/collapse_tcat.gif" alt="" border="0"></a>
			<!-- 父版块标题 -->
			<a href=""><b><s:property value="key"/></b></a>		
		</td>
	</tr>
</tbody>
<!-- 迭代子版块 -->
<s:iterator value="value" id="list" >
<tbody id="collapseobj_forumbit_3" style="">
  	<tr align="center">
	<td class="alt2" width="10"><img src="./Styles/FrontPageStyle/forum_new_lock.gif" alt="" border="0" id="forum_statusicon_4" title="双击这个图标以标记论坛和其中的内容已读" style="cursor: pointer;"></td>
	<td class="alt1Active" align="left" id="f4" width="100%">
		<div>
		<!-- 子版块标题 -->
		<s:url action="ShowPageTopic" id="Content">
			<s:param name="SectionId"><s:property value="#list.SectionId"/></s:param>
		</s:url>
		<s:a href="%{Content}"><strong><font color="#565656"><s:property value="#list.SectionName"/></font></strong></s:a>
		</div>
		<div class="smallfont"><img src="./Styles/FrontPageStyle/Forum_readme.gif">
			<s:property value="#list.Introduction"/>
		</div>	
		<font color="#565656">版主：</font>
			<a href=""><s:property value="#list.Administrator"/></a>
	</td>
	<td class="alt2">
	<div class="smallfont" align="left">
	<div>
		<span style="white-space:nowrap">
		<img class="inlineimg" src="./Styles/FrontPageStyle/icon1.gif" alt="" border="0">
		<!-- 最后发表的帖子标题 -->
		<a href="" style="white-space:nowrap" title="">
			<s:property value="#list.LastPostTopic.Name"/>
		</a>
		</span>	
	</div>
	<!-- 最后发表的作者和时间 -->
	<div align="right" style="white-space:nowrap">
		<a href="" rel="nofollow">
		<!-- 作者 -->
			<s:property value="#list.LastPostTopic.Publisher.UserName"/>
		</a>
		<!-- 时间 -->
		<span class="time"><s:date name="#list.LastPostTopic.PublishTime" format="yyyy-MM-dd HH:mm:ss"/></span>
		<a href=""><img class="inlineimg" src="./Styles/FrontPageStyle/lastpost.gif" alt="转到最后发表的帖子" border="0" title="转到最后发表的帖子"></a>	
	</div>
	</div>
	</td>
	<!-- 主题数 -->
	<td class="alt1"><s:property value="#list.TopicCount"/></td>
	<!-- 帖子数 -->
	<td class="alt2"><s:property value="#list.ArticleCount"/></td>
</tr> 
</tbody>

</s:iterator>
</s:iterator>
<!-- 结束迭代 -->
<tbody>
	<tr>
		<td class="tfoot" align="center" colspan="5">&nbsp;</td>
	</tr>
</tbody>

</table>
<!-- 论坛统计信息 -->
<table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center">
<thead>
	<tr>
		<td width="130%" class="tcat">论坛统计信息</td>
	</tr>
</thead>
<!-- logged-in users -->
<tbody>
	<tr>
		<td class="thead">
			<a style="float:right" href="http://bbs.pediy.com/#top" ><img id="collapseimg_forumhome_activeusers" src="./Styles/FrontPageStyle/collapse_thead.gif" alt="" border="0"></a>
			<a href="http://bbs.pediy.com/online.php">在线用户</a>: 1840 (276 位会员和 1564 位游客)		</td>
	</tr>
</tbody>
</table>
<br>
<s:debug/>
</body>
</html>
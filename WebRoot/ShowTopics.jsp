<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@page import="com.bbs.model.*,java.util.*,com.bbs.beans.*" %>
<%@ taglib prefix="s" uri="/struts-tags"%>       
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0043)http://bbs.pediy.com/forumdisplay.php?f=159 -->
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh-CN">
<head>
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
<link rel="stylesheet" type="text/css" href="./Styles/ArticlesStyle/vbulletin_important.css">
<!-- / CSS Stylesheet -->
<script type="text/javascript" src="./Styles/ArticlesStyle/yahoo-dom-event.js"></script>
<script type="text/javascript" src="./Styles/ArticlesStyle/connection-min.js"></script>
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

function CheckPermission()
{
	
}

function PageValue() {
	var a = 2;
	return a;
}
</script>
<script type="text/javascript" src="./Styles/ArticlesStyle/vbulletin_global.js"></script>
<script type="text/javascript" src="./Styles/ArticlesStyle/vbulletin_menu.js"></script>
<link rel="alternate" type="application/rss+xml" title="看雪安全论坛 RSS Feed" href="http://bbs.pediy.com/external.php?type=RSS2">
<link rel="alternate" type="application/rss+xml" title="看雪安全论坛 - 『Android 开发』 - RSS Feed" href="http://bbs.pediy.com/external.php?type=RSS2&forumids=159">
<title>『Android 开发』 - 看雪安全论坛</title>
</head>
<body>
<!-- logo -->
<a name="top"></a>
<table border="0" width="980" cellpadding="0" cellspacing="0" align="center">
  <tbody>
    <tr>
      <td width="32" rowspan="2" align="left"><a href="http://www.pediy.com/"></a></td>
      <td width="603" rowspan="2" align="right" id="header_right_cell"><a href="http://www.ijiami.cn/activity/rencai" target="_blank"></a> </td>
      <td width="320" align="right" id="header_right_cell"><p>&nbsp;</p>
        <p>&nbsp;</p></td>
      <td width="92" align="right" id="header_right_cell"><p>&nbsp;</p>
        <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td align="right" id="header_right_cell"><a href="http://bbs.pediy.com/"></a></td>
      <td align="right" id="header_right_cell"><a href="http://www.kanxue.com/bbs/"></a></td>
    </tr>
  </tbody>
</table>
<!-- /logo -->
<!-- content table -->
<!-- open content container -->
<div align="center">
<div class="page" style="width:980px; text-align:left">
<div style="padding:0px 7px 0px 7px" align="left"> <br>
<!-- breadcrumb, login, pm info -->
<s:if test="#session.user_session == null">
<table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center">
<tbody>
<tr>
	<td class="alt1" width="100%">		
			<div class="navbar" style="font-size:10pt"><a href="BBS.jsp" accesskey="1"><strong>麦田论坛</strong></a></div>
		
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
			<td><input type="submit" class="button" value="登录论坛" tabindex="104" title="在登录框中输入您的用户名和密码登录，或者点击“注册”按钮注册一个新账号。" accesskey="s"><a href="http://bbs.pediy.com/login.php?do=lostpw">忘记密码?</a></td>
		</tr>
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
	  <td class="vbmenu_control"><a href="Register.jsp" rel="nofollow">
	  <strong><font color="#FFFF00">注册账号</font></strong></a></td>				
		<td class="vbmenu_control"><a href="" rel="nofollow">搜索论坛</a></td>			
		<td class="vbmenu_control"><a rel="help" href="" accesskey="5">论坛帮助</a></td>
	</tr>
	</tbody>
	</table>
</div>
</s:if>
<!-- After registered -->
<s:elseif test="#session.user_session != null">
<table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center">
<tbody>
<tr>
	<td class="alt1" width="100%">		
			<div class="navbar" style="font-size:10pt"><a href="http://bbs.pediy.com/index.php" accesskey="1">
			<img class="inlineimg" border="0"></a> <strong>麦田论坛</strong></div>
		
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

<!--分页  -->
   <s:url action="PostTopic" var="ToPostTopic">
   		<s:param name="SectionId" value="SectionId"/>
   </s:url>
    <form action="" method="post" id="inlinemodform">
       <!-- controls above thread list -->
       <table cellpadding="0" cellspacing="0" border="0" width="100%" style="margin-bottom:3px">
          <tbody>
            <tr valign="bottom">
              <td class="smallfont">
              <s:a href="%{ToPostTopic}"><img src="./Styles/ArticlesStyle/newthread.gif" alt="发表新主题" border="0" title="发表新主题"></s:a>        
              </td>
              <!-- 分页 -->
              <td align="right"><div class="pagenav" align="right">
                  <table class="tborder" cellpadding="3" cellspacing="1" border="0">
                    <tbody>
                      <tr>
                        <td class="tcat" align="center"><a href="ShowFirstPage.action"><span class="normal">返回首页</span></a></td> 
                        <td class="vbmenu_control" style="font-weight:normal">第 <s:property value="page"/> 页，共 <s:property value="PageCount"/>页</td>
                        <s:bean name="org.apache.struts2.util.Counter" id="counter">
                        		<!-- 第一个下标的处理 -->
                        		<s:if test="page > 3">
                        				<td class="alt1"><a href="ShowPageTopic?page=1&SectionId=<s:property value="SectionId"/>">1...</a></td>
                        		</s:if>
                        		<s:elseif test="page == 1">
                        			<td class="alt2"><a href="ShowPageTopic?page=1&SectionId=<s:property value="SectionId"/>">1</a></td>
                        		</s:elseif>
                        		<s:else>
                        			<td class="alt1"><a href="ShowPageTopic?page=1&SectionId=<s:property value="SectionId"/>">1</a></td>
                        		</s:else>
                    			<s:param name="first" value="page > 7 ? page - 5 : 2" />
                    			<!-- 下面的三目运算符比较复杂，主要是为了计算最大的页码 -->
                    			<s:param name="last" value="page < 7 ? PageCount > 12 ? 12 : PageCount  :  page + 5 < PageCount ? page + 5 : PageCount" /> 
                    			<s:iterator status="st">
                    				<s:url action="ShowPageTopic" var="ShowPageTopic">
         								<s:param name="page"><s:property /></s:param>
         								<s:param name="SectionId" value="SectionId"/>
   									</s:url>
   									
   									<s:if test="#st.index+1 == page-1">
                        				<td class="alt2"><s:a href="%{ShowPageTopic}"><s:property /></s:a></td>
                        			</s:if>
                        			<s:else>                        				
                        				<td class="alt1"><s:a href="%{ShowPageTopic}"><s:property /></s:a></td>
                        			</s:else>
                    			</s:iterator>
                    			 <s:url action="ShowPageTopic" var="ShowPageNext">
          								<s:param name="page"><s:property value="page >= PageCount ? 1: page+1"/></s:param>
         								<s:param name="SectionId" value="SectionId"/>
   								 </s:url>
   								 <!-- 最后一个下标的处理 -->
   								 <s:if test="page < PageCount-1"><td class="alt1">...</td></s:if>
   								 <td class="alt1"><s:a href="%{ShowPageNext}">下一页</s:a></td>
                		</s:bean>               		
                      </tr>
                    </tbody>
                  </table>
                </div></td>
            </tr>
          </tbody>
        </table>
        <table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center" style="border-bottom-width:0px">
          <tbody>
            <tr>
              <td class="tcat" width="90%">主题位于论坛&nbsp;&nbsp;<span class="normal">
              <s:property value="section.SectionName"/></span></td>
            </tr>
          </tbody>
        </table>
        
        <table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center" id="threadslist">
        <tbody>
            <tr>
              <td class="thead" colspan="2">&nbsp;</td>
              <td class="thead" width="100%"><span style="float:right"><a href="http://bbs.pediy.com/forumdisplay.php?f=159&daysprune=-1&order=desc&sort=voteavg" rel="nofollow">评分</a> </span> <a href="http://bbs.pediy.com/forumdisplay.php?f=159&daysprune=-1&order=asc&sort=title" rel="nofollow">主题</a> </td>
              <!--  前缀 -->
              <!--  前缀 -->
              <td class="thead" align="left" nowrap="nowrap"><span style="white-space:nowrap">
              <a href="" rel="nofollow">主题作者</a> </span></td>
              <td class="thead" align="center" nowrap="nowrap"><span style="white-space:nowrap">
              <a href="" rel="nofollow">回复</a> </span> / <span style="white-space:nowrap"><a href="http://bbs.pediy.com/forumdisplay.php?f=159&daysprune=-1&order=desc&sort=views" rel="nofollow">查看</a> </span></td>
              <td class="thead" align="left" nowrap="nowrap"><span style="white-space:nowrap">
              <a href="" rel="nofollow">最新回复</a> <a href="" rel="nofollow"><img class="inlineimg" src="./Styles/ArticlesStyle/sortasc.gif" alt="反向排序" border="0" title="反向排序"></a></span></td>
            </tr>
            
            <!-- 开始迭代输出帖子题目等信息 -->
        	<s:iterator value="TopicList" id="Topics">
            <!-- /PHPForce - Joey修改总置顶 -->
            <tr>
              <td class="alt1" id="td_threadstatusicon_200758"><img src="./Styles/ArticlesStyle/thread_hot_new.gif" id="thread_statusicon_200758" alt="" border=""> </td>
              <td class="alt2"><a href="http://bbs.pediy.com/showthread.php?t=200758" target="_blank"><img src="./Styles/ArticlesStyle/icon1.gif" alt="icon5" border="0" title="icon5"></a></td>
              <td class="alt1" id="td_threadtitle_200758" title="<s:property value='#Topics.Contents'/>"><span style="float:right"></span>
                  <!-- 标题 -->
                  <s:url action="ShowArticle" id="ShowArticle">
                  	<s:param name="TopicId"><s:property value="#Topics.TopicId"/></s:param>
                  	<s:param name="UserName"><s:property value="user.UserName"/></s:param>
                  	<s:param name="SectionId" value="SectionId"/>
                  </s:url>
                  <s:a href="%{ShowArticle}"><s:property value="#Topics.Name"/></s:a>
                
                  <a href="http://bbs.pediy.com/showthread.php?goto=newpost&t=200758" id="thread_gotonew_200758"><img class="inlineimg" src="./Styles/ArticlesStyle/firstnew.gif" alt="转到第一个新帖" border="0" title="转到第一个新帖"></a> </div></td>
              <td class="alt2" align="left" nowrap="nowrap">
              <!-- //显示主题作者  -->
                <div class="smallfont"> <span style="cursor:pointer" >
                	<s:property value="#Topics.Publisher.UserName"/></span> 
                </div>  
                <!-- //显示发表时间 -->            
                <font color="#999999"><s:date name="#Topics.PublishTime" format="yyyy-MM-dd HH:mm:ss"/></font>          
              </td>
              <!-- //浏览数和回复数  -->
              <td class="alt1" align="center">
              	<s:property value="#Topics.ReplyNum"/>/<s:property value="#Topics.ScanNum"/></td>
              <!-- //最后发表 -->
              <td class="alt2"><!-- //最后回复者 -->
                <div class="smallfont" style="text-align:; white-space:nowrap"> <a href="" rel="nofollow">
                <s:property value="#Topics.LastReplier"/></a> </div>
                <!-- //最新回复 -->
                <div class="smallfont" style="text-align:left; white-space:nowrap"> <a href="">
                <img class="inlineimg" src="./Styles/ArticlesStyle/lastpost.gif" alt="转到最后发表的帖子" border="0" title="转到最后发表的帖子"/></a>
                	  <span class="time">
                	 <font color="80080"><s:date name="#Topics.LastReplyTime"/></font></span> </div></td>
            </tr>
          </tbody>
          <!-- end show threads -->
           </s:iterator>
        </table>
       
        <!-- 结束迭代 -->
        <!-- controls below thread list -->
        <table cellpadding="0" cellspacing="0" border="0" width="100%" style="margin-top:3px">
          <tbody>
            <tr valign="top">
              <td class="smallfont">
              <img src="./Styles/ArticlesStyle/newthread.gif" alt="发表新主题" border="0" title="发表新主题" onclick="CheckPermission()"/></td>
              <td align="right"><div class="pagenav" align="right">
                  <table class="tborder" cellpadding="3" cellspacing="1" border="0">
                    <tbody>
                     <tr>
                        <td class="vbmenu_control" style="font-weight:normal">第 <s:property value="page"/> 页，共 <s:property value="PageCount"/>页</td>
                        <s:bean name="org.apache.struts2.util.Counter" id="counter">
                        		<!-- 第一个下标的处理 -->
                        		<s:if test="page > 3">
                        				<td class="alt1"><a href="ShowPageTopic?page=1&SectionId=<s:property value="SectionId"/>1...</a></td>
                        		</s:if>
                        		<s:elseif test="page == 1">
                        			<td class="alt2"><a href="ShowPageTopic?page=1&SectionId=<s:property value="SectionId"/>">1</a></td>
                        		</s:elseif>
                        		<s:else>
                        			<td class="alt1"><a href="ShowPageTopic?page=1&SectionId=<s:property value="SectionId"/>">1</a></td>
                        		</s:else>
                    			<s:param name="first" value="page > 7 ? page - 5 : 2" />
                    			<!-- 下面的三目运算符比较复杂，主要是为了计算最大的页码 -->
                    			<s:param name="last" value="page < 7 ? PageCount > 12 ? 12 : PageCount  :  page + 5 < PageCount ? page + 5 : PageCount" /> 
                    			<s:iterator status="st">
                    				<s:url action="ShowPageTopic" var="ShowPageTopic">
         								<s:param name="page"><s:property /></s:param>
         								<s:param name="SectionId" value="SectionId"/>
   									</s:url>
   									
   									<s:if test="#st.index+1 == page-1">
                        				<td class="alt2"><s:a href="%{ShowPageTopic}"><s:property /></s:a></td>
                        			</s:if>
                        			<s:else>                        				
                        				<td class="alt1"><s:a href="%{ShowPageTopic}"><s:property /></s:a></td>
                        			</s:else>
                    			</s:iterator>
                    			 <s:url action="ShowPageTopic" var="ShowPageNext">
          								<s:param name="page"><s:property value="page >= PageCount ? 1: page+1"/></s:param>
         								<s:param name="SectionId" value="SectionId"/>
   								 </s:url>
   								 <!-- 最后一个下标的处理 -->
   								 <s:if test="page < PageCount-1"><td class="alt1">...</td></s:if>
   								 <td class="alt1"><s:a href="%{ShowPageNext}">下一页</s:a></td>
                		</s:bean>                		
                      </tr>
                    </tbody>
                  </table>
                </div></td>
            </tr>
          </tbody>
        </table>
        <!-- / controls below thread list -->
      </form>
      <br>
      <!-- Active Users in this Forum (and sub-forums) and Moderators -->
      <form action="http://bbs.pediy.com/forumdisplay.php" method="get">
        <table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center">
          <tbody>
            <tr>
              <td class="tcat">显示选项</td>
              <td class="tcat">版主</td>
            </tr>
            <tr>
              <td class="thead">显示主题从 1 到 32, 共 327 条.</td>
              <td class="thead">版主 :</td>
            </tr>
            <tr valign="top">
              <td class="alt1"><table cellpadding="0" cellspacing="1" border="0">
                  <tbody>
                    <tr valign="bottom">
                      <td class="smallfont" style="padding-right:6px"><div>
                          <label for="sel_sort">排列方式</label>
                        </div>
                        <select name="sort" id="sel_sort">
                          <option value="title">主题标题</option>
                          <option value="lastpost" selected="selected">最后发表时间</option>
                          <option value="dateline">主题发起时间</option>
                          <option value="replycount">回复人数</option>
                          <option value="views">查看人数</option>
                          <option value="postusername">主题作者</option>
                          <option value="voteavg">主题评分</option>
                        </select>
                      </td>
                      <td class="smallfont" style="padding-right:6px"><div>
                          <label for="sel_order">排列顺序</label>
                        </div>
                        <select name="order" id="sel_order">
                          <option value="asc">升序排列</option>
                          <option value="desc" selected="selected">降序排列</option>
                        </select>
                      </td>
                      <td class="smallfont"><div>
                          <label for="sel_daysprune">排列时间</label>
                        </div>
                        <select name="daysprune" id="sel_daysprune">
                          <option value="1">昨天以来</option>
                          <option value="2">2 天以来</option>
                          <option value="7">1 周以来</option>
                          <option value="10">10 天以来</option>
                          <option value="14">2 周以来</option>
                          <option value="30">1 个月以来</option>
                          <option value="45">45 天以来</option>
                          <option value="60">2 个月以来</option>
                          <option value="75">75 天以来</option>
                          <option value="100">100 天以来</option>
                          <option value="365">1 年以来</option>
                          <option value="-1" selected="selected">任何时间</option>
                        </select>
                      </td>
                      <td class="smallfont" colspan="2">&nbsp;</td>
                      <td colspan="3" align="right" class="smallfont" style="padding-top:6px"><input type="submit" class="button" value="显示主题"></td>
                    </tr>
                    <tr valign="bottom"> </tr>
                  </tbody>
              </table></td>
              <td class="alt1"><div class="smallfont">
              <!-- 版主 -->
              <a href=""><s:property value="subsection.Administrator"/></a>
            </tr>
          </tbody>
        </table>
      </form>
      <!-- End Active Users in this Forum (and sub-forums) and Moderators -->
      <br>
      <!-- popup menu contents -->
      <!-- forum tools menu -->
      <div class="vbmenu_popup" id="forumtools_menu" style="display:none">
        <form action="http://bbs.pediy.com/moderator.php?f=159" method="post" name="forumadminform">
          <table cellpadding="4" cellspacing="1" border="0">
            <tbody>
              <tr>
                <td class="vbmenu_option">发表新主题</td>
              </tr>
            </tbody>
          </table>
        </form>
      </div>
      <!-- / forum tools menu -->
      <!-- inline mod menu -->
      <!-- / inline mod menu -->
      <!-- / popup menu contents -->
      <!-- ############## END THREADS LIST ##############  -->
      <script type="text/javascript" src="./Styles/ArticlesStyle/vbulletin_read_marker.js"></script>
      <script type="text/javascript">
<!--
vbphrase['doubleclick_forum_markread'] = "双击这个图标以标记论坛和其中的内容已读";
init_forum_readmarker_system();
//-->
</script>
      <!-- icon key -->
      <!-- / icon key -->
      <!-- forum rules & forum jump -->
      <table cellpadding="0" cellspacing="0" border="0" width="100%" align="center">
        <tbody>
          <tr valign="bottom">
            <td>&nbsp;</td>
          </tr>
        </tbody>
      </table>
      <!-- / forum rules & forum jump -->
      <div align="center"></div>
    </div>
  </div>
</div>
<!-- / close content container -->
<!-- /content area table -->
<script type="text/javascript">
<!--
	// Main vBulletin Javascript Initialization
	vBulletin_init();
//-->
</script>
<!-- google-->
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script src="./Styles/ArticlesStyle/ga.js" type="text/javascript"></script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-9784446-1");
pageTracker._trackPageview();
} catch(err) {}</script>
<s:debug/>
</body>
</html>
    
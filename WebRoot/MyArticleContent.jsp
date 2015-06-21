<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0044)http://bbs.pediy.com/showthread.php?t=200880 -->
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<link rel="stylesheet" type="text/css" href="./Styles/ArticleContentStyles/vbulletin_important.css">
<!-- / CSS Stylesheet -->
<!-- Editor Styles -->
<style type="text/css" id="vbulletin_editor_css_dynamic">
<!--
@import url("clientscript/vbulletin_editor.css?v=383");

.vBulletin_editor {
	background: #E1E1E2;
	padding: 6px;
}
.imagebutton {
	background: #E1E1E2;
	color: #000000;
	padding: 1px;
	border: none;
}
.ocolor, .ofont, .osize, .osmilie, .osyscoloar, .smilietitle {
	background: #FFFFFF;
	color: #000000;
	border: 1px solid #FFFFFF;
}
.popup_pickbutton {
	border: 1px solid #FFFFFF;
}
.popup_feedback {
	background: #FFFFFF;
	color: #000000;
	border-right: 1px solid #FFFFFF;
}
.popupwindow {
	background: #FFFFFF;
}
#fontOut, #sizeOut, .popup_feedback div {
	background: #FFFFFF;
	color: #000000;
}
.alt_pickbutton {
	border-left: 1px solid #E1E1E2;
}
.popup_feedback input, .popup_feedback div
{
	border: 0px solid;
	padding: 0px 2px 0px 2px;
	cursor: default;
	font: 12px tahoma;
	overflow: hidden;
}
-->
</style>
<!-- / Editor Styles -->
<script type="text/javascript" src="./Styles/ArticleContentStyles/post_thanks.js"></script>
<title><s:property value="subject"/></title>
<style type="text/css" id="vbulletin_showthread_css">
	<!--
	
	#links div { white-space: nowrap; }
	#links img { vertical-align: middle; }
	-->
	</style>
</head>
<body onload="">
<!-- logo -->
<!-- /logo -->
<!-- content table -->
<!-- open content container -->
<div align="center">
  <div class="page" style="width:980px; text-align:left">
    <div style="padding:0px 7px 0px 7px" align="left"> <br>
      <!-- breadcrumb, login, pm info -->
      <table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center">
        <tbody>
          <tr>
            <td class="alt1" width="100%">&nbsp;</td>
            <td nowrap="nowrap" class="alt2"><strong><s:property value="username"/></strong></td>
          </tr>
        </tbody>
      </table>
      <!-- / breadcrumb, login, pm info -->
      <!-- nav buttons bar -->
      <div class="tborder" style="padding:1px; border-top-width:0px">
        <table cellpadding="0" cellspacing="0" border="0" width="100%" align="center">
          <tbody>
            <tr align="center">
              <td class="vbmenu_control"><a href="http://bbs.pediy.com/usercp.php">个人中心</a></td>
              <td class="vbmenu_control"><a rel="help" href="http://bbs.pediy.com/faq.php" accesskey="5">论坛帮助</a></td>
            </tr>
          </tbody>
        </table>
      </div>
      <!-- / nav buttons bar -->
      <br>
      <!-- NAVBAR POPUP MENUS -->
      
    </div>
  </div>
</div>
<div id="posts">
  <!-- open content container -->
  <div align="center">
    <div class="page" style="width:980px; text-align:left">
      <div style="padding:0px 12px 10px 7px" align="left">
        <div id="" style="padding:0px 0px 1px 0px">
          <!-- this is not the last post shown on the page -->
          <table id="" class="tborder" cellpadding="6" cellspacing="0" border="0" height="380px" width="100%" align="center">
            <tbody>
              <tr valign="top">
                <td class="ccf" width="175" style="border: 0px solid #FFFFFF; border-top: 0px; border-bottom: 0px" rowspan="3"><div id="postmenu_1372434"> <a class="bigusername" href="http://bbs.pediy.com/member.php?u=516238">
                <!-- 登录名 -->
                <font color="#000099"><s:property value="#session.user_session.getUserName()"/></font></a>
                    <script type="text/javascript"> vbmenu_register("postmenu_1372434", true); </script>
                    <div class="smallfont" align="left"> <img class="inlineimg" src="./Styles/ArticleContentStyles/level2.gif" alt="级别:10 | 在线时长:160小时 | 升级还需:5小时" border="0" title="级别:10 | 在线时长:160小时 | 升级还需:5小时"><img class="inlineimg" src="./Styles/ArticleContentStyles/level2.gif" alt="级别:10 | 在线时长:160小时 | 升级还需:5小时" border="0" title="级别:10 | 在线时长:160小时 | 升级还需:5小时"><img class="inlineimg" src="./Styles/ArticleContentStyles/level1.gif" alt="级别:10 | 在线时长:160小时 | 升级还需:5小时" border="0" title="级别:10 | 在线时长:160小时 | 升级还需:5小时"><img class="inlineimg" src="./Styles/ArticleContentStyles/level1.gif" alt="级别:10 | 在线时长:160小时 | 升级还需:5小时" border="0" title="级别:10 | 在线时长:160小时 | 升级还需:5小时"> </div>
                  </div>
                  <br>
                  <div class="smallfont" align="center"><img src="./Styles/ArticleContentStyles/stars01.gif" border="0" alt="初级会员" title="初级会员"></div>
                  <!-- 等级 -->
                  <div class="smallfont" align="center">
                  <s:property value="#session.user_session.getGroup().getGroupName()"/></div>
                  <br>
                  <div class="smallfont">
                    <fieldset>
                    <legend>资　料:</legend>
                    <div>性别：<s:property value="#session.user_session.getSex()"/></div>
                    <div> 帖子: <a href="http://bbs.pediy.com/search.php?do=finduser&u=516238" rel="nofollow">
                    <s:property value="#session.user_session.getTopicCount()"/></a> <img class="inlineimg" src="./Styles/ArticleContentStyles/reputation_pos.gif"  border="0" > </div>
                    <div>精华: 0</div>
                    <div>签名：<s:property value="#session.user_session.getNote()"/></div>
                    
                    <div></div>
                    </fieldset>
                  </div></td>
                <!-- 横线是这里.alt这个样式中有border-bottom.使他归零就可以了..by Jessica -->
                <td class="alt1" id="td_post_1372434" style="border-right: 1px solid #FFFFFF; border-bottom:0;"><!-- icon and title -->
                  <table border="0" width="100%" id="table1" cellspacing="0" cellpadding="0">
                    <tbody>
                      <tr>
                        <td><div class="smallfont">
                        <!-- 发表时间 -->
                             <img class="inlineimg" src="./Styles/ArticleContentStyles/icon1.gif" alt="默认" border="0" title="默认"> 
                            <strong><s:property value="name"/></strong> </div></td>
                        <td align="right">&nbsp;</td>
                      </tr>
                    </tbody>
                  </table>
                  <hr>
                  <!-- / icon and title -->
                  <!-- message -->
                  <!--Joey 修改防止撑破表格 -->
                  <div class="tb">
                    <div id="post_message_1372434" style="overflow-x: hidden;line-height:3.62">
                      <div id="wrap">
                        <!--帖子内容  -->
                      <s:property value="contents"/>
                        <!-- google_ad_section_end  -->
                        <br>
                      </div>
                    </div>
                  </div>
                </td>
              </tr>
              <tr>
                <!--临时 -->
                <td class="alt1" valign="bottom" style=" border-bottom:0;"></td>
                <!--临时 -->
              </tr>
              <!--Joey 修改签名位置 -->
              <tr>
                <td class="alt1" align="right" valign="bottom" style="border: 1px solid #FFFFFF; border-left: 0px; border-top: 0px"><!--收藏 -->
                  <div style="float:left"> <a href="" rel="nofollow"></a> </div>
                  <br>                  
                  <div style="float:left">
                    <div style="float:left"> </div>
                  </div>
                  <!-- /Joey修改奖惩 -->
                  <a href="ShowPageTopic?SectionId=<s:property value="SectionId"/>">返回列表</a>
                  <!-- / controls -->
                </td>                
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
      
<s:debug/>
</body>
</html>

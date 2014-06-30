puts <<ENDTEXT
<html>

<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" 
      type="image/png" 
      href="images/favicon.ico">
<title>Light Rising - Explore. Settle. Trade. Conquer.</title>
<link rel="stylesheet" type="text/css" href="lightrising.css" />



<script type="text/javascript">
<!--
    function toggle_visibility(id) {
       var e = document.getElementById(id);
       if(e.style.display == 'block')
          e.style.display = 'none';
       else
          e.style.display = 'block';
    }
//-->
</script

</head>
<body>
<div class="bigbox">

<div class="map">
#{Location_Bar}
#{Map}
</div>

<div style="opacity:.90" class="gamebox statsbox">
#{Player_Data}
</div>

<div style="opacity:.90" class="gamebox buttonsbox">
  <a class="buttonlink" href="skills.cgi">Skills</a>
  <a class="buttonlink" href="map.cgi">Map</a>
  <a class="buttonlink" href="ubermap.html">Ubermap</a>
  <a class="buttonlink" href="world.cgi">Galactic Map</a>
  <a class="buttonlink" href="faq.html">FAQ</a>
  <a class="buttonlink" href="news.html">News</a>  
  <a class="buttonlink" href="http://lightrising.com/forum/">Forum</a>
  <br>
  <br>
  <a class="buttonlink" href="http://lightrising.com/wiki/">Help/Wiki</a>
  <a class="buttonlink" href="chat.cgi">Chat</a>  
  <a class="buttonlink" href="store.html">STORE - Buy Now!</a>
  <a class="buttonlink" href="stats.cgi">Statistics</a>
  <a class="buttonlink" href="http://lightrising.com/forum/index.php?action=chat">IRC Chat</a>
  <br>
  <br>
  #{Logout_Button}
  <br>
  <br>
<center> 
		


</center>
<br>

<b>Global Chat</b>
<br>
<br>
 <div class="chatbox" id="chatbox">
        #{html_chat_box(30)}
        <center>
         <a class="buttonlink" href="chat.cgi">Chat page</a>
        </center>
      </div> 
       #{html_action_form('Chat',false,nil,'game.cgi') {
    html_text_box(200)}}


<table class="infotable">

  <tr>
    <td colspan="2">
      <div style="opacity:.90" class="gamebox infobox">
        <div style="beigeoverlay">
ENDTEXT

puts '<b><i>' + Dazed_Message + "</i></b>\n<br>\n" if Dazed_Message != ''
puts '<b>' + Action_Outcome + "</b>\n<br>\n" if Action_Outcome != ''
puts '<b>' + Tired_Message + "</b>\n<br>\n" if Tired_Message != ''
puts "<br>\n<br>\n" if Action_Outcome != '' || Tired_Message != ''
puts Location_Info

puts <<ENDTEXT
        </div>
      </div>
    </td>
  </tr>
  <tr>
    <td colspan="2">
      <div style="opacity:.90" class="gamebox actionbox">
  #{Action_Forms}
      </div>
ENDTEXT

if Messages != ''
  puts "<div class=\"gamebox msgbox\">#{Messages}</div>"
end

puts <<ENDTEXT
		</div>
	  <div>
    </td>
  </tr>

  <tr>
    <td>
	
</div>
      
	 <div style="opacity:.90" class="gamebox invbox">
        <b>Weight: #{Encumberance}</b>
	<hr>
        <i>You are carrying:</i>
	#{Inventory}
        <hr>
        #{Drop}
      </div>	 

    </td>
    <td>

    </td>
  </tr>
</table>
</div>
</body>
</html>
ENDTEXT

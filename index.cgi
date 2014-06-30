#!/usr/local/bin/ruby -w
# index.cgi
print "Content-type: text/html\r\n\r\n"
require 'rubygems'
require 'cgi'
load 'mysql-connect.cgi'
load 'functions-mysql.rb'
mysql_connect
$cgi = CGI.new

def settlement_box
  settlements = mysql_select('settlements',{'allow_new_users'=>1})
  html = "\n\t<select name=\"settlement\" style=\"width:10em\">"
  html += "\n\t\t<option value=\"0\">None</option>"
  settlements.each_hash do
    |row|
    html += "\n\t\t<option value=\"#{row['id']}\""
    html += 'selected="yes" ' if $cgi['settlement'] == row['id']
    html += ">#{row['name']}, #{row['motto']}</option>"
  end
  html += "\n\t</select>"
end

Settlement_Box = settlement_box

puts <<ENDTEXT
<html>
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" 
      type="image/png" 
      href="images/favicon.ico">
<title>Light Rising - A Massive Multiplayer Browser Based Role Playing Game set in Space - Home</title>
<link rel=\"stylesheet\" type=\"text/css\" href=\"lightrising_dark.css\"/>


</head>
<body>



<div class='bigbox' style='height:640px'>
<table width="1126" height="200">
<tr>
<td>

 </td>
</tr>

</table>

<table width="1126">
<tr>

<td>

<div class='beigebox' style='width:15em'>

ENDTEXT

query = "SELECT COUNT(*) FROM `users` WHERE `active` = 1 AND `lastaction` > DATE_SUB(NOW(), INTERVAL 1 HOUR)"
result = $mysql.query(query).fetch_hash
puts "<b>Users Online: #{result['COUNT(*)']}</b>"

puts "<br>"

query = "SELECT COUNT(*) FROM `users` WHERE `active` = 1 AND `lastaction` > DATE_SUB(NOW(), INTERVAL 1 DAY)"
result = $mysql.query(query).fetch_hash
puts "<b>Users (Today): #{result['COUNT(*)']}</b>"

puts "<br>"

query = "SELECT COUNT(*) FROM `users` WHERE `active` = 1"
result = $mysql.query(query).fetch_hash
puts "<b>Users (7 Days): #{result['COUNT(*)']}</b>"

puts "<br>"

query = "SELECT COUNT(*) FROM `users`"
result = $mysql.query(query).fetch_hash
puts "<b>Total Users: #{result['COUNT(*)']}</b>"

puts "<br>"

query = "SELECT COUNT(*) FROM `settlements`"
result = $mysql.query(query).fetch_hash
puts "<b>Settlements: #{result['COUNT(*)']}</b>"

puts "<br>"

query = "SELECT COUNT(*) FROM `grid`"
result = $mysql.query(query).fetch_hash
puts "<b>Map: #{result['COUNT(*)']} tiles</b>"

puts <<ENDTEXT
</div>


<div class='beigebox' style='width:15em;margin-top:4px'>\n
<b>Sign in:</b><hr/>
ENDTEXT

case $cgi['msg']
  when "bad_pw"
    puts "\t<b>Unable to Login, try again!</b>\n"
  when "account_made"
    puts "\t<b>Player #{$cgi['username']} created! You may now log in:</b>\n"
end

puts <<ENDTEXT
<form method='POST' action='game.cgi'>
Username: <br>
<input type='text' class='text' name='username' maxLength='24'><br>
Password: <br>
<input type='password' class='text' name='password' length='32'>
<hr>
<input type='submit' style='margin-left:auto;margin-right:0px' value='Login'>
</form>

</div>
<script src="http://platform.twitter.com/widgets.js" type="text/javascript"></script>
<div class='beigebox' style='width:15em;margin-top:4px'>\n
<a class=\"buttonlink\" href=\"http://lightrising.com/forum/">Forum</a>
<a class=\"buttonlink\" href=\"http://lightrising.com/wiki/">Help/Wiki</a>
<a class=\"buttonlink\" href=\"faq.html\">FAQ</a>
<a class=\"buttonlink\" href=\"news.html\">News</a>
<p>
<a class=\"buttonlink\" href=\"ubermap.html">Ubermap</a>
<a class=\"buttonlink\" href=\"store.html">STORE</a>
<a class=\"buttonlink\" href=\"stats.cgi">Statistics</a>
<p>
<a class=\"buttonlink\" href=\"http://lightrising.com/forum/index.php?action=chat">IRC Chat</a>
<a class=\"buttonlink\" href=\"screenshots.html">Screenshots</a>
<p>
</div>
<div class='beigebox' style='width:15em;margin-top:5px;margin-bottom:20px'>\n
</div>


</td>

<td>
<div class='beigebox' style='width:35em;text-align:center'>
<h3>A Massive Multiplayer Roleplaying Game set in Space</h3>

<i>In the Year 2244, humanity came upon its future self.<p>
The same year the Earth became an uninhabitable wasteland, utterly destroyed during the period which would later come to be known as the Ascension.<p>
A few brave souls, helped greatly by their saviors from the future, left Earth's decimated surface and took to the stars.<p>
This is their story.</i>

<hr>

<b>Hunt, or farm. Fight, or heal. Build, or conquer. Join hundreds of players in a free, browser-based world.</b>

<hr>

<div style='text-align:center;font-style:italic;'>

"The temporal distortion device was still beyond our level of understanding. Somehow, a small team of humans had come back from the future to save us. Of course, they weren't the only thing that came back." - Capt. Richard Stoddard, 1st Marine Corps
<p>



</div>
<div style='text-align:center;font-style:bold;'>

<b>Latest Updates</b>

</div>
</td>

<td>

<div class='beigebox' style='width:15em'>\n
<b>Create a Character:</b>
<hr>
ENDTEXT

case $cgi['msg']
  when 'too_long'
    puts "\t<b>Username or password too long</b>\n"
  when 'too_short'
    puts "\t<b>Username or password too short</b>\n"
  when 'name_taken'
    puts "\t<b>Username is already taken</b>\n"
  when 'pw_not_match'
    puts "\t<b>Passwords do not match</b>\n"
  when 'invalid_name'
	puts "\t<b>Invalid username</b>\n"
  when 'no_email'
    puts "\t<b>Enter a valid email address</b>\n"
end

if $cgi['msg'] != 'account_made'
  puts <<ENDTEXT
    <form method='POST' action='signup.cgi'>
    Username: <br>
    <input type='text' class='text' name='username' maxLength='24'><br>
    E-mail: <br>
    <input type='text' class='text' name='email' length='100'><br>
    Password: <br>
    <input type='password' class='text' name='password_1' length='20'><br>
    Re-enter password: <br>
    <input type='password' class='text' name='password_2' length='20'><br>
    Settlement (optional, and can be changed later): <br>
    #{Settlement_Box}
	<hr>
    <input type='submit' value='Sign Up Now!' />
	<br>
	Due to spam problems, you will need to also create a forum account and PM me to unlock your account here, or email me at support@lightrising.com with your username.
    </form>
ENDTEXT

else
  puts "\t<b>Player #{$cgi['username']} created! Please also create a forum account and PM me to unlock your account, or email me at support@lightrising.com.</b>\n"
end

puts <<ENDTEXT
</div>

</td>
</tr>
</table>
</div>

</body>

</html>
ENDTEXT

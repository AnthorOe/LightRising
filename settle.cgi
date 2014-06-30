#!/usr/local/bin/ruby -w
print "Content-type: text/html\r\n\r\n"
require 'cgi'
require 'cgi/session'
load 'functions.cgi'
$cgi = CGI.new

profile = User.new($cgi['id'])

user_id = get_validated_id

if user_id != false
  $user = User.new(user_id)
  $header = {'cookie' => [$cookie], 'type' => 'text/html'}
else
  puts $cgi.header('Location'=>'index.cgi?msg=bad_pw')
  exit
end

can_settle, settle_msg = can_settle?($user)

puts <<ENDTEXT
<html>
<head>
<title>Light Rising - Settle</title>
<link rel='stylesheet' type='text/css' href='lightrising.css' />
</head>
<body>
<h1 class='header'>Create New Settlement</h1>

<img src='images/emergency_shelter.jpg' width='501px alt='Emergency Shelter' style='margin-left:auto;margin-right:auto;' />

<br><br>

<div class='beigebox' style='margin-left:40px;width:400px'>
  <p>#{settle_msg}</p>

ENDTEXT

if can_settle
  puts <<ENDTEXT
  <form method='post' action='game.cgi'>
    <input type='text' style='font-size:110%;margin-left:20px' class='text' maxLength='32' name='text' />
    <input type='hidden' name='action' value='settle' />
    <input type='submit' style='font-size:110%' value='Settle!' />
  </form>
ENDTEXT
end

puts <<ENDTEXT
</div>
<br>
<hr>
<a class='buttonlink' href='game.cgi' />Return</a>

</body>
</html>
ENDTEXT

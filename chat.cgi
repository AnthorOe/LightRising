#!/usr/local/bin/ruby -w
# index.cgi
print "Content-type: text/html\r\n\r\n"
require 'rubygems'
require 'cgi'
require 'cgi/session'
load 'functions.cgi'
$cgi = CGI.new
$params = $cgi.str_params

def input_action(action)
  case action
    when 'chat' then chat($user, $params['text'])
  end
end


UserID = get_validated_id
if UserID != false
  $header = {'cookie' => [$cookie], 'type' => 'text/html'}
else
  puts $cgi.header('Location'=>'index.cgi?msg=bad_pw')
  exit
end

$user = User.new(UserID)
input_action $params['action']

puts <<ENDTEXT
<html>
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" 
      type="image/png" 
      href="images/favicon.ico">
<link rel=\"stylesheet\" type=\"text/css\" href=\"lightrising.css\"/>
<title>Chat</title>

<body style="background:#cccccc">



<a class="buttonlink" href="game.cgi">Return</a>
<hr>
#{html_chat_large(500)}
</body>
</html>
ENDTEXT

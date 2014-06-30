#!/usr/local/bin/ruby -w
# index.cgi
print "Content-type: text/html\r\n\r\n"
require 'rubygems'
require 'cgi'
require 'cgi/session'
load 'functions.cgi'
$cgi = CGI.new

user_id = get_validated_id
$user = User.new(user_id) if user_id != false

Map = 
if has_skill?($user, :tracking)
  html_map($user.tile, 9, $user, :show_occupants)
else
  html_map($user.tile, 9, $user, :no_occupants)
end

puts <<ENDTEXT
<html>
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" 
      type="image/png" 
      href="images/favicon.ico">
<title>Light Rising - Map</title>
<link rel="stylesheet" type="text/css" href="lightrising.css" />
</head>
<body>
<h1>Map</h1>
<hr>
<a class="buttonlink" href="game.cgi">Return</a>
<hr>
<div class="gamebox-light">
#{Map}
</div>
</body>
</html>
ENDTEXT

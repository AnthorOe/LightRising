#!/usr/local/bin/ruby -w
# index.cgi
print "Content-type: text/html\r\n\r\n"
require 'rubygems'
require 'cgi'
require 'cgi/session'
load 'functions.cgi'
$cgi = CGI.new

UserID = get_validated_id
$user = User.new(UserID)

def input_action(action)
  case action
    when 'buy' then buy_skill(UserID, $params['skill'])
    when 'sell' then sell_skill(UserID, $params['skill'])
    else ""
  end
end

$params = $cgi.str_params
Action_Outcome = input_action($params['action'])
Wanderer_Skills = html_skills_list(:wanderer,UserID)
Herbalist_Skills = html_skills_list(:herbalist,UserID)
Crafter_Skills = html_skills_list(:crafter,UserID)
Warrior_Skills = html_skills_list(:warrior,UserID)

print '<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" 
      type="image/png" 
      href="images/favicon.ico">
<title>Light Rising - Skills</title>
<link rel="stylesheet" type="text/css" href="lightrising.css" />
    
</head>
<body style="background:#cccccc">

<div class="bigbox" style="font-size:90%;background:#cccccc">

<h1>Skills</h1>'
print "You have learned #{$user.level} out of a maximum of #{Max_Level} skills.<br> Please note: if you sell a skill you will not receive back any of the XP that you paid for it."
print'<hr>

<a class="buttonlink" href="game.cgi">Return</a>
<hr>
'
print "<b>#{Action_Outcome}</b><br>"
print Wanderer_Skills
print Herbalist_Skills
print Crafter_Skills
print Warrior_Skills

print '<br><br>
<a class="buttonlink" href="game.cgi">Return</a>
</div>
</body>
</html>'

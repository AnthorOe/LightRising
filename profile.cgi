#!/usr/local/bin/ruby -w
print "Content-type: text/html\r\n\r\n"
require 'cgi'
require 'cgi/session'
load 'functions.cgi'
$cgi = CGI.new

def input_action(action)
  case action
    when 'description'
      mysql_update('accounts', $user.mysql_id, 
        {'description' => insert_breaks(CGI::escapeHTML($params['text']))})
    when 'image'
      mysql_update('accounts', $user.mysql_id, 
        {'image' => CGI::escapeHTML($params['text'])})    
    when 'corp_name'
      mysql_update('accounts', $user.mysql_id, 
        {'corp_name' => insert_breaks(CGI::escapeHTML($params['text']))}) 
    when 'corp_desc'
      mysql_update('accounts', $user.mysql_id, 
        {'corp_desc' => insert_breaks(CGI::escapeHTML($params['text']))})          
    when 'corp_image'
      mysql_update('accounts', $user.mysql_id, 
        {'corp_image' => CGI::escapeHTML($params['text'])})          
    else ''
  end
end

$params = $cgi.str_params
profile = User.new($params['id'])
user_id = get_validated_id
$user = User.new(user_id) if user_id != false

if !profile.exists? then name = ''
else name = profile.name end

input_action($params['action']) if $user == profile
# bug-fix: have to update profile reference as input_action may have
# changed it
profile = User.new($params['id'])

puts <<ENDTEXT
<html>
<head>
<title>Light Rising - #{name}</title>
<link rel='stylesheet' type='text/css' href='lightrising.css' />
</head>
<body>
ENDTEXT

if !profile.exists?
  puts "No user found!</body></html>"
  exit
end

puts <<ENDTEXT

<table>
  <tr>
<td colspan='2'>
    <div class='beigebox' style='font-style:italic;width:984px'>
    <h1 class='header'>#{name}</h1>
<hr>

</div>
</td>

<table>
  <tr>
    <td colspan='2'>
    <div class='beigebox' style='font-style:italic;width:35em'>
    #{profile.description}
    </div>
  </td>
ENDTEXT

if $user == profile
  puts <<ENDTEXT
  <td rowspan='2'>
  <div class='beigebox' style='width:25em'>
  <form method='post' action='profile.cgi'>
    Edit description:
    <br>
    <textarea rows='5' cols='40' name='text'>#{$user.description.gsub("<br>", "\r")}</textarea>
    <br><br>
    <input type='hidden' name='action' value='description' />
    <input type='hidden' name='id' value='#{$user.mysql_id}' />   
    <input type='submit' value='Submit' />
  </form>

  <hr>
  <form method='post' action='profile.cgi'>
    Update image <i>(Enter image URL):</i>
    <br>
    <input type='text' class='text' name='text' maxlength='100' value='#{profile.image}'/>
    <input type='hidden' name='action' value='image' />
    <input type='hidden' name='id' value='#{$user.mysql_id}' />   
    <input type='submit' value='Submit' />
    <br>
    <i>Images must be hosted on external sites. Offensive content will be removed.</i>
  </form>
  <hr>
    <form method='post' action='profile.cgi'>
    Edit Corporation Name:
    <br>
    <textarea rows='1' cols='40' name='text'>#{$user.corp_name.gsub("<br>", "\r")}</textarea>
    <br><br>
    <input type='hidden' name='action' value='corp_name' />
    <input type='hidden' name='id' value='#{$user.mysql_id}' />   
    <input type='submit' value='Submit' />
  </form>
  
  <hr>    
      <form method='post' action='profile.cgi'>
  Update Corporation image <i>(Enter image URL):</i>
      <br>
    <input type='text' class='text' name='text' maxlength='100' value='#{profile.corp_image}'/>
    <input type='hidden' name='action' value='corp_image' />
    <input type='hidden' name='id' value='#{$user.mysql_id}' />   
    <input type='submit' value='Submit' />
    <br>
    <i>Images must be hosted on external sites. Offensive content will be removed.</i>
  </form>
  <hr>
    <form method='post' action='profile.cgi'>
    Edit Corporation Description:
    <br>
    <textarea rows='1' cols='40' name='text'>#{$user.corp_desc.gsub("<br>", "\r")}</textarea>
    <br><br>
    <input type='hidden' name='action' value='corp_desc' />
    <input type='hidden' name='id' value='#{$user.mysql_id}' />   
    <input type='submit' value='Submit' />
  </form>

  
  </div>
  </td>
ENDTEXT
end

puts <<ENDTEXT
  </tr>

  <tr>
    <td>
    <div class='beigebox'>
    <table>
ENDTEXT


if $user == profile && profile.temp_sett_id != 0
puts "Settlement (Pending):</td><td>"
else
puts "Settlement:</td><td>#{profile.settlement.link}" 
end
if profile.temp_sett_id != 0
   if $user == profile 
     pending = mysql_select('settlements',{'id' => $user.temp_sett_id}).fetch_hash
     puts "<a href=\"settlement.cgi?id=#{$user.temp_sett_id}\" " +
       "class=\"neutral\" " +
       ">#{pending['name']}</a>"
   else puts "(Pending)"
   end
 end 

puts <<ENDTEXT
	</td>
      </tr>
      <tr>
        <td><b>Level: </td><td>#{profile.level}</td>
      </tr>
      <tr>
        <td><b>Played since: </td><td>#{profile.joined}</td>
      </tr>
ENDTEXT

if profile.hp != 0
  puts "<tr><td><b>Alive since: </td><td>#{profile.lastrevive}</td></tr>"
else
  puts '<tr><td><b>Alive since: </td><td><i>Dead/Spirit</i></td></tr>'
end

if profile.donated?
  puts "<tr><td>          </td><td><b><i>Premium Member!</i></b></td></tr>" 
end


if profile.active != 0
  puts "<tr><td>          </td><td><b>Active</td></tr>"
else
  puts "<tr><td>        </td><td><b>Inactive</td></tr>"
end

puts <<ENDTEXT

      <tr>
        <td><b>Frags: </td><td>#{profile.frags}</td>
      </tr>
      <tr>
        <td><b>Kills: </td><td>#{profile.kills}</td>
      </tr>
      <tr>
        <td><b>Deaths: </td><td>#{profile.deaths}</td>
      </tr>
      <tr>
        <td><b>Revives: </td><td>#{profile.revives}</td>
      </tr>
    </table>
    </div>
    </td>

    <td>
    <img style='width:300px' src='#{profile.image}' alt='Portrait of #{profile.name}'/>
    </td>
  </tr>
  <table>
  <tr>
    <td colspan='2'>
    <div class='beigebox' style='font-style:italic;width:35em'>
    #{profile.corp_name}
    </div>
  </td>
  </tr>  
  <tr> 
  <td>
    <img style='width:300px' src='#{profile.corp_image}' alt='Corporation Image of #{profile.corp_name}'/>
    </td></tr>
  <tr>       
  <td colspan='2'>
    <div class='beigebox' style='font-style:italic;width:35em'>
    #{profile.corp_desc}
    </div>
  </td>
  </tr>

</table>
<hr>
<a class='buttonlink' href='game.cgi'>Return</a>

</body>
</html>
ENDTEXT

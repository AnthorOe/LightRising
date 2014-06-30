#!/usr/local/bin/ruby -w
print "Content-type: text/html\r\n\r\n"
require 'cgi'
require 'cgi/session'
load 'functions.cgi'
$cgi = CGI.new

user_id = get_validated_id
$user = User.new(user_id) if user_id

rank = $cgi['metric']
rank = 'kills' if rank == nil

case rank
  when "deaths" then type, metric = "players", "deaths"
	blurb = " DEATHS"
  when "frags" 
    type, metric = "players", "frags"
    blurb = "Frags measure not just the number of foes killed, " +
      "but the quality of one's opponents. New players begin with " +
      "one frag, and when a character is knocked out, the attacker " +
      "takes half their frags (rounded up)."

  when "kills" then type, metric = "players", "kills"
	blurb = " KILLS"
  when "points" then type, metric = "players", "points"
	blurb = " POINTS"
  when "revives" then type, metric = "players", "revives"
	blurb = " REVIVES"
  when "survival" 
    type, metric, order = "players", "lastrevive", "ASC"
    column = "Last Revived"
    display = Proc.new {|date| Time.str_to_time(date).ago}
    clause = "`hp` != '0' "
	blurb = " LAST REVIVED"
  when "oldies" 
    type, metric, order = "players", "joined", "ASC"
    display = Proc.new {|date| Time.str_to_time(date).ago}
	blurb = " OLDEST PLAYERS"
  when "younguns"
    type, metric = "players", "joined"
    display = Proc.new {|date| Time.str_to_time(date).ago}
	blurb = " YOUNGEST PLAYERS"

  when "bigtowns" then type, metric = "settlements", "population"
	blurb = " LARGEST SETTLEMENTS"
  when "newtowns"
    type, metric = "settlements", "founded"
    display = Proc.new {|date| Time.str_to_time(date).ago}
	blurb = " NEWEST SETTLEMENTS"
  when "oldtowns"
    type, metric, order = "settlements", "founded", "ASC"
    display = Proc.new {|date| Time.str_to_time(date).ago}
	blurb = " OLDEST SETTLEMENTS"
	
  when "credits" then type, metric = "inventories", "item_id"
    type, metric = "inventories", "amount"
	clause = "`item_id` = '215'"
	blurb = " CREDITS"
	
  when "goldcoins" then type, metric = "inventories", "item_id"
    type, metric = "inventories", "amount"
	clause = "`item_id` = '35'"
	blurb = " GOLD COINS"
	
  when "goldnuggets" then type, metric = "inventories", "item_id"
    type, metric = "inventories", "amount"
	clause = "`item_id` = '261'"
	blurb = " GOLD NUGGETS"
	
  when "severedheads" then type, metric = "inventories", "item_id"
    type, metric = "inventories", "amount"
	clause = "`item_id` = '260'"
	blurb = " SEVERED HEADS"
	
  when "plasmahellfireorbs" then type, metric = "inventories", "item_id"
    type, metric = "inventories", "amount"
	clause = "`item_id` = '275'"
	blurb = " PLASMA HELLFIRE ORBS"
	
  when "allplayers"
    type, metric = "allplayers", "joined"
    display = Proc.new {|date| Time.str_to_time(date).ago}
	blurb = " ALL PLAYERS"
	
	when "alldeaths" then type, metric = "allplayers", "deaths"
	blurb = " DEATHS - ALL TIME"
 
  when "allkills" then type, metric = "allplayers", "kills"
	blurb = " KILLS - ALL TIME"

  when "allrevives" then type, metric = "allplayers", "revives"
	blurb = " REVIVES - ALL TIME"
	
  when "allcredits" then type, metric = "allinventories", "item_id"
    type, metric = "allinventories", "amount"
	clause = "`item_id` = '215'"
	blurb = " CREDITS - ALL TIME"
	
	
end

if type == "players"
  order = "DESC" if order == nil
  query = "SELECT * FROM `users`, `accounts` " +
    "WHERE `users`.`id` = `accounts`.`id` " + 
    if clause != nil then " AND #{clause} " else '' end +
	"AND `active` = '1' " +
    "ORDER BY `#{metric}` #{order} " +
    "LIMIT 0, 200"
  result = $mysql.query(query)
  i = 1
  column = metric.capitalize if column == nil
  $stats = "<tr>" +
    "<td><b>Rank</b></td>" +
    "<td><b>Name</b></td>" +
    "<td><b>#{column}</b></td></tr>\n"
  result.each_hash do
    |row|
    user = User.new(row['id'])
    disp =
    if display != nil then display.call(row[metric])
    else row[metric] end
    $stats += "<tr>\n" +
      "<td>#{i}</td>" +
      "<td>#{user.link}</td>" +
      "<td>#{disp}</td>\n" +
      "<tr>\n"
    i += 1
  end
end

if type == "allplayers"
  order = "DESC" if order == nil
  query = "SELECT * FROM `users`, `accounts` " +
    "WHERE `users`.`id` = `accounts`.`id` " + 
    if clause != nil then " AND #{clause} " else '' end +
    "ORDER BY `#{metric}` #{order} "
  result = $mysql.query(query)
  i = 1
  column = metric.capitalize if column == nil
  $stats = "<tr>" +
    "<td><b>Rank</b></td>" +
    "<td><b>Name</b></td>" +
    "<td><b>#{column}</b></td></tr>\n"
  result.each_hash do
    |row|
    user = User.new(row['id'])
    disp =
    if display != nil then display.call(row[metric])
    else row[metric] end
    $stats += "<tr>\n" +
      "<td>#{i}</td>" +
      "<td>#{user.link}</td>" +
      "<td>#{disp}</td>\n" +
      "<tr>\n"
    i += 1
  end
end

if type == "inventories"
  order = "DESC" if order == nil
  query = "SELECT * FROM `users`, `inventories` " +
    "WHERE `users`.`id` = `inventories`.`user_id` " +
    if clause != nil then " AND #{clause} " else '' end +
    "AND `active` = '1' " +
    "ORDER BY `#{metric}` #{order} " +
    "LIMIT 0, 200"
  result = $mysql.query(query)
  i = 1
  column = metric.capitalize if column == nil
  $stats = "<tr>" +
    "<td><b>Rank</b></td>" +
    "<td><b>Name</b></td>" +
    "<td><b>#{column}</b></td></tr>\n"
  result.each_hash do
    |row|
    user = User.new(row['id'])
    disp =
    if display != nil then display.call(row[metric])
    else row[metric] end
    $stats += "<tr>\n" +
      "<td>#{i}</td>" +
      "<td>#{user.link}</td>" +
      "<td>#{disp}</td>\n" +
      "<tr>\n"
    i += 1
  end
end

if type == "allinventories"
  order = "DESC" if order == nil
  query = "SELECT * FROM `users`, `inventories` " +
    "WHERE `users`.`id` = `inventories`.`user_id` " +
    if clause != nil then " AND #{clause} " else '' end +
    "ORDER BY `#{metric}` #{order} " +
    "LIMIT 0, 200"
  result = $mysql.query(query)
  i = 1
  column = metric.capitalize if column == nil
  $stats = "<tr>" +
    "<td><b>Rank</b></td>" +
    "<td><b>Name</b></td>" +
    "<td><b>#{column}</b></td></tr>\n"
  result.each_hash do
    |row|
    user = User.new(row['id'])
    disp =
    if display != nil then display.call(row[metric])
    else row[metric] end
    $stats += "<tr>\n" +
      "<td>#{i}</td>" +
      "<td>#{user.link}</td>" +
      "<td>#{disp}</td>\n" +
      "<tr>\n"
    i += 1
  end
end

if type == "settlements"
  result = mysql_select_all('settlements')
  settlements = []
  result.each_hash {|row| settlements << Settlement.new(row['id'])}
  settlements.sort! {|x, y| y.send(metric) <=> x.send(metric)}
  settlements.reverse! if order == "ASC"

  column = metric.capitalize if column == nil
  $stats = "<tr>" +
    "<td><b>Rank</b></td>" +
    "<td><b>Name</b></td>" +
    "<td><b>Region</b></td>" +
    "<td><b>#{column}</b></td></tr>\n"
  settlements.each_with_index do
    |settlement, i|
    disp =
    if display != nil then display.call(settlement.send(metric))
    else settlement.send(metric) end
    $stats += "<tr>\n" +
      "<td>#{i + 1}</td>" +
      "<td>#{settlement.link}</td>" +
      "<td><i>#{settlement.region_name}</i></td>" +
      "<td>#{disp}</td>\n" +
      "<tr>\n"
  end
end

puts <<ENDTEXT
<html>
<head>
<link rel="icon" 
      type="image/png" 
      href="images/favicon.ico">
<link rel='stylesheet' type='text/css' href='lightrising.css' />
<title>Light Rising - Statistics</title>

</head>
<h1>Light Rising - Statistics</h1>

<div class='adbox_stats'>
<!-- Project Wonderful Ad Box Code -->
<div id="pw_adbox_56766_1_0"></div>
<script type="text/javascript"></script>
<noscript><map name="admap56766" id="admap56766"><area href="http://www.projectwonderful.com/out_nojs.php?r=0&c=0&id=56766&type=1" shape="rect" coords="0,0,468,60" title="" alt="" target="_blank" /></map>
<table cellpadding="0" cellspacing="0" style="width:468px;border-style:none;background-color:#ffffff;"><tr><td><img src="http://www.projectwonderful.com/nojs.php?id=56766&type=1" style="width:468px;height:60px;border-style:none;" usemap="#admap56766" alt="" /></td></tr><tr><td style="background-color:#ffffff;" colspan="1"><center><a style="font-size:10px;color:#0000ff;text-decoration:none;line-height:1.2;font-weight:bold;font-family:Tahoma, verdana,arial,helvetica,sans-serif;text-transform: none;letter-spacing:normal;text-shadow:none;white-space:normal;word-spacing:normal;" href="http://www.projectwonderful.com/advertisehere.php?id=56766&type=1" target="_blank">Ads by Project Wonderful!  Your ad here, right now: $0.02</a></center></td></tr></table>
</noscript>
<!-- End Project Wonderful Ad Box Code -->
</div>

<body style="background:#cccccc">

<!-- Project Wonderful Ad Box Loader -->
<!-- Put this after the <body> tag at the top of your page -->
<script type="text/javascript">
   (function(){function pw_load(){
      if(arguments.callee.z)return;else arguments.callee.z=true;
      var d=document;var s=d.createElement('script');
      var x=d.getElementsByTagName('script')[0];
      s.type='text/javascript';s.async=true;
      s.src='//www.projectwonderful.com/pwa.js';
      x.parentNode.insertBefore(s,x);}
   if (window.attachEvent){
    window.attachEvent('DOMContentLoaded',pw_load);
    window.attachEvent('onload',pw_load);}
   else{
    window.addEventListener('DOMContentLoaded',pw_load,false);
    window.addEventListener('load',pw_load,false);}})();
</script>
<!-- End Project Wonderful Ad Box Loader -->

<div class='bigbox' style='height:90px;background:#cccccc'>
<table width="1126">
<tr>
<td>
<div class='adbox_stats'>
<!-- Project Wonderful Ad Box Code -->
<div id="pw_adbox_56766_1_0"></div>
<script type="text/javascript"></script>
<noscript><map name="admap56766" id="admap56766"><area href="http://www.projectwonderful.com/out_nojs.php?r=0&c=0&id=56766&type=1" shape="rect" coords="0,0,468,60" title="" alt="" target="_blank" /></map>
<table cellpadding="0" cellspacing="0" style="width:468px;border-style:none;background-color:#ffffff;"><tr><td><img src="http://www.projectwonderful.com/nojs.php?id=56766&type=1" style="width:468px;height:60px;border-style:none;" usemap="#admap56766" alt="" /></td></tr><tr><td style="background-color:#ffffff;" colspan="1"><center><a style="font-size:10px;color:#0000ff;text-decoration:none;line-height:1.2;font-weight:bold;font-family:Tahoma, verdana,arial,helvetica,sans-serif;text-transform: none;letter-spacing:normal;text-shadow:none;white-space:normal;word-spacing:normal;" href="http://www.projectwonderful.com/advertisehere.php?id=56766&type=1" target="_blank">Ads by Project Wonderful!  Your ad here, right now: $0.02</a></center></td></tr></table>
</noscript>
<!-- End Project Wonderful Ad Box Code -->
</div>

</td>


<hr>
It is Year #{game_year} a.A., #{month.to_s} ----- 
ENDTEXT
query = "SELECT COUNT(*) FROM `users` WHERE `active` = 1"
result = $mysql.query(query).fetch_hash
puts "Active Users (7 Days): #{result['COUNT(*)']}"
puts <<ENDTEXT
<hr>


<table border="1">
ENDTEXT

query = "SELECT COUNT(*) FROM `users` WHERE `active` = 1 AND `lastaction` > DATE_SUB(NOW(), INTERVAL 1 HOUR)"
result = $mysql.query(query).fetch_hash
puts "<tr><td><b>Users Online:</b><td><b> #{result['COUNT(*)']}</b></td><td></td>"

query = "SELECT COUNT(type_id) FROM `animals` WHERE `type_id` = 16"
result = $mysql.query(query).fetch_hash
puts "<td><b>Oolims:</b><td><b> #{result['COUNT(type_id)']}</b></td><td></td>"

query = "SELECT COUNT(type_id) FROM `animals` WHERE `type_id` = 22"
result = $mysql.query(query).fetch_hash
puts "<td><b>Tesh Mounds:</b><td><b> #{result['COUNT(type_id)']}</b></td></tr>"

query = "SELECT COUNT(*) FROM `users` WHERE `active` = 1 AND `lastaction` > DATE_SUB(NOW(), INTERVAL 1 DAY)"
result = $mysql.query(query).fetch_hash
puts "<tr><td><b>Users (Today):</b><td><b> #{result['COUNT(*)']}</b></td><td></td>"

query = "SELECT COUNT(type_id) FROM `animals` WHERE `type_id` = 17"
result = $mysql.query(query).fetch_hash
puts "<td><b>Slirth:</b><td><b> #{result['COUNT(type_id)']}</b></td><td></td>"

query = "SELECT COUNT(type_id) FROM `animals` WHERE `type_id` = 23"
result = $mysql.query(query).fetch_hash
puts "<td><b>Chainsaw Bots:</b><td><b> #{result['COUNT(type_id)']}</b></td></tr>"

query = "SELECT COUNT(*) FROM `users` WHERE `active` = 1"
result = $mysql.query(query).fetch_hash
puts "<tr><td><b>Users (7 Days):</b><td><b> #{result['COUNT(*)']}</b></td><td></td>"

query = "SELECT COUNT(type_id) FROM `animals` WHERE `type_id` = 18"
result = $mysql.query(query).fetch_hash
puts "<td><b>Thylkerr:</b><td><b> #{result['COUNT(type_id)']}</b></td><td></td>"

query = "SELECT COUNT(type_id) FROM `animals` WHERE `type_id` = 24"
result = $mysql.query(query).fetch_hash
puts "<td><b>Mutant Miners:</b><td><b> #{result['COUNT(type_id)']}</b></td></tr>"

query = "SELECT COUNT(*) FROM `users`"
result = $mysql.query(query).fetch_hash
puts "<tr><td><b>Total Users:</b><td><b> #{result['COUNT(*)']}</b></td><td></td>"

query = "SELECT COUNT(type_id) FROM `animals` WHERE `type_id` = 19"
result = $mysql.query(query).fetch_hash
puts "<td><b>Ascension Guards:</b><td><b> #{result['COUNT(type_id)']}</b></td><td></td>"

query = "SELECT COUNT(type_id) FROM `animals` WHERE `type_id` = 25"
result = $mysql.query(query).fetch_hash
puts "<td><b>Sumerian Assault Troops:</b><td><b> #{result['COUNT(type_id)']}</b></td></tr>"

query = "SELECT COUNT(*) FROM `settlements`"
result = $mysql.query(query).fetch_hash
puts "<tr><td><b>Settlements:</b><td><b> #{result['COUNT(*)']}</b></td><td></td>"

query = "SELECT COUNT(type_id) FROM `animals` WHERE `type_id` = 20"
result = $mysql.query(query).fetch_hash
puts "<td><b>Mutant Guards:</b><td><b> #{result['COUNT(type_id)']}</b></td><td></td>"

query = "SELECT COUNT(type_id) FROM `animals` WHERE `type_id` = 26"
result = $mysql.query(query).fetch_hash
puts "<td><b>Sumerian Assault Captains:</b><td><b> #{result['COUNT(type_id)']}</b></td></tr>"

query = "SELECT COUNT(*) FROM `grid`"
result = $mysql.query(query).fetch_hash
puts "<tr><td><b>Map:</b><td><b> #{result['COUNT(*)']} tiles</b></td><td></td>"

query = "SELECT COUNT(type_id) FROM `animals` WHERE `type_id` = 21"
result = $mysql.query(query).fetch_hash
puts "<td><b>Storage Bots:</b><td><b> #{result['COUNT(type_id)']}</b></td><td></td>"

query = "SELECT COUNT(type_id) FROM `animals` WHERE `type_id` = 29"
result = $mysql.query(query).fetch_hash
puts "<td><b>Ascension (Badass) Monks:</b><td><b> #{result['COUNT(type_id)']}</b></td></tr>"

query = "SELECT COUNT(type_id) FROM `animals` WHERE `type_id` = 30"
result = $mysql.query(query).fetch_hash
puts "<td><b>Rats:</b><td><b> #{result['COUNT(type_id)']}</b></td><td></td>"

query = "SELECT COUNT(type_id) FROM `animals` WHERE `type_id` = 27"
result = $mysql.query(query).fetch_hash
puts "<td><b>Zombie Prisoners:</b><td><b> #{result['COUNT(type_id)']}</b></td><td></td>"

query = "SELECT COUNT(type_id) FROM `animals` WHERE `type_id` = 28"
result = $mysql.query(query).fetch_hash
puts "<td><b>Ascension Monks:</b><td><b> #{result['COUNT(type_id)']}</b></td></tr>"

query = "SELECT COUNT(*) FROM `animals`"
result = $mysql.query(query).fetch_hash
puts "<tr><td><b>NPCs:</b><td><b> #{result['COUNT(*)']}</b></td><td></td><td> - </td><td> - </td><td></td>"

query = "SELECT COUNT(type_id) FROM `animals` WHERE `type_id` = 31"
result = $mysql.query(query).fetch_hash
puts "<td><b>Oolim Batur:</b><td><b> #{result['COUNT(type_id)']}</b></td><td></td>"

query = "SELECT SUM(amount) FROM `inventories` WHERE `item_id` = 215"
result = $mysql.query(query).fetch_hash
puts "<tr><td><b>User Held Credits:</b><td><b> #{result['SUM(amount)']}</b></td><td></td><td> - </td><td> - </td><td></td><td> - </td><td> - </td></tr>"

# query = "SELECT SUM(amount) FROM `stockpiles` WHERE `item_id` = 215"
# result = $mysql.query(query).fetch_hash
# puts "<b>Total Storage Unit Held Credits: #{result['SUM(amount)']}</b>"
#
# puts "<br>"
#
# query = "SELECT SUM(amount) FROM `inventories` WHERE `item_id` = 31"
# result = $mysql.query(query).fetch_hash
# puts "<b>Total User Held Gold Coins: #{result['SUM(amount)']}</b>"
# 
# puts "<br>"
#
# query = "SELECT SUM(amount) FROM `stockpiles` WHERE `item_id` = 31"
# result = $mysql.query(query).fetch_hash
# puts "<b>Total Storage Unit Held Gold Coins: #{result['SUM(amount)']}</b>"
#
# puts "<br>"
#
# query = "SELECT SUM(amount) FROM `inventories` WHERE `item_id` = 261"
# result = $mysql.query(query).fetch_hash
# puts "<b>Total User Held Gold Nuggets: #{result['SUM(amount)']}</b>"
#
# puts "<br>"
#
# query = "SELECT SUM(amount) FROM `stockpiles` WHERE `item_id` = 261"
# result = $mysql.query(query).fetch_hash
# puts "<b>Total Storage Unit Held Gold Nuggets: #{result['SUM(amount)']}</b>"
#
# puts "<br>"
#
# query = "SELECT `user_id`, `amount`, SUM(amount) FROM `inventories` WHERE `item_id` = 215 GROUP BY `user_id` LIMIT 5"
# result = $mysql.query(query).fetch_hash
# puts "<b>Total User Held Credits: #{result['user_id','SUM(amount)']}</b>"

puts <<ENDTEXT
</table>

<hr>
<a class='buttonlink' href='game.cgi'>Return</a>
<hr>
<form method='get' action='stats.cgi'>
<b>Rank by:</b> 
<select width='300px' name='metric'>

<option value='deaths'>Deaths - Top 200 Active</option>
<option value='kills'>Kills - Top 200 Active</option>
<option value='revives'>Players Revived - Top 200 Active</option>
<option value='younguns'>Newest players - Top 200 Active</option>
<option value='oldies'>Oldest players - Top 200 Active</option>
<option value='survival'>Longest surviving players - Top 200 Active</option>
<option value=''>-----</option>
<option value='oldtowns'>Oldest Settlements</option>
<option value='newtowns'>Newest Settlements</option>
<option value='bigtowns'>Most Populous Settlements</option>
<option value=''>-----</option>
<option value='credits'>Credits - Top 200 Active</option>
<option value='goldcoins'>Gold Coins - Top 200 Active</option>
<option value='goldnuggets'>Gold Nuggets - Top 200 Active</option>
<option value='severedheads'>Severed Heads - Top 200 Active</option>
<option value='plasmahellfireorbs'>Plasma HellFire Orbs - Top 200 Active</option>
<option value=''>-----</option>
<option value='allplayers'>All Players</option>
<option value='alldeaths'>Deaths - All Time Top 200</option>
<option value='allkills'>Kills - All Time Top 200</option>
<option value='allrevives'>Players Revived - All Time Top 200</option>
<option value='allcredits'>Credits - All Time Top 200</option>
</select> 
<input type='submit' value='View' />
</form>
<i>#{blurb}</i>
<hr>
<table>

#{$stats}

</table>
</table>


</body>
</html>
ENDTEXT

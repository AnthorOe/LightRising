#!/usr/local/bin/ruby -w
print "Content-type: text/html\r\n\r\n"
require 'cgi'
require 'cgi/session'
load 'functions.cgi'
$cgi = CGI.new

user_id = get_validated_id
$user = User.new(user_id) if user_id

rank = $cgi['metric']
rank = 'frags' if rank == nil

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
	
	
end

if type == "players"
  order = "DESC" if order == nil
  query = "SELECT * FROM `users`, `accounts` " +
    "WHERE `users`.`id` = `accounts`.`id` " +
    if clause != nil then " AND #{clause} " else '' end +
    "ORDER BY `#{metric}` #{order} " +
    "LIMIT 0, 200"
  result = $mysql.query(query)
  i = 1
  column = metric.capitalize if column == nil
  $rankings = "<tr>" +
    "<td><b>Rank</b></td>" +
    "<td><b>Name</b></td>" +
    "<td><b>#{column}</b></td></tr>\n"
  result.each_hash do
    |row|
    user = User.new(row['id'])
    disp =
    if display != nil then display.call(row[metric])
    else row[metric] end
    $rankings += "<tr>\n" +
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
    "ORDER BY `#{metric}` #{order} " +
    "LIMIT 0, 200"
  result = $mysql.query(query)
  i = 1
  column = metric.capitalize if column == nil
  $rankings = "<tr>" +
    "<td><b>Rank</b></td>" +
    "<td><b>Name</b></td>" +
    "<td><b>#{column}</b></td></tr>\n"
  result.each_hash do
    |row|
    user = User.new(row['id'])
    disp =
    if display != nil then display.call(row[metric])
    else row[metric] end
    $rankings += "<tr>\n" +
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
  $rankings = "<tr>" +
    "<td><b>Rank</b></td>" +
    "<td><b>Name</b></td>" +
    "<td><b>Region</b></td>" +
    "<td><b>#{column}</b></td></tr>\n"
  settlements.each_with_index do
    |settlement, i|
    disp =
    if display != nil then display.call(settlement.send(metric))
    else settlement.send(metric) end
    $rankings += "<tr>\n" +
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
<title>Light Rising - Rankings</title>

</head>
<h1>Light Rising - Rankings</h1>
<body style="background:#cccccc">
<div class='bigbox' style='height:640px;background:#cccccc'>
<table width="1126">
<tr>
<td>

</td>


<hr>
It is Year #{game_year} a.A., #{month.to_s} ----- 
ENDTEXT
query = "SELECT COUNT(*) FROM `users` WHERE `active` = 1"
result = $mysql.query(query).fetch_hash
puts "Active Users (7 Days): #{result['COUNT(*)']}"
puts <<ENDTEXT
<hr>
<a class='buttonlink' href='game.cgi'>Return</a>
<hr>
<form method='get' action='rankings.cgi'>
<b>Rank by:</b> 
<select width='300px' name='metric'>

<option value='deaths'>Deaths</option>
<option value='kills'>Kills</option>
<option value='revives'>Players Revived</option>
<option value='younguns'>Newest players</option>
<option value='oldies'>Oldest players</option>
<option value='survival'>Longest surviving players</option>
<option value=''>-----</option>
<option value='oldtowns'>Oldest Settlements</option>
<option value='newtowns'>Newest Settlements</option>
<option value='bigtowns'>Most Populous Settlements</option>
<option value=''>-----</option>
<option value='credits'>Credits</option>
<option value='goldcoins'>Gold Coins</option>
<option value='goldnuggets'>Gold Nuggets</option>
<option value='severedheads'>Severed Heads</option>
</select> 
<input type='submit' value='View' />
</form>
<i>#{blurb}</i>
<hr>
<table>

#{$rankings}

</table>
</table>
</body>
</html>
ENDTEXT

#!/usr/local/bin/ruby -w
#print "Content-type: text/html\r\n\r\n"
require 'cgi'
require 'cgi/session'
load 'functions.cgi'

$cgi = CGI.new
UserID = get_validated_id
if UserID != false
  $header = {'cookie' => [$cookie], 'type' => 'text/html'}
else
  puts $cgi.header('Location'=>'index.cgi?msg=bad_pw')
  exit
end

puts $cgi.header($header)
$user = User.new(UserID)

if not ["Anthor"].include?($user.name)
puts <<ENDTEXT
You are not allowed to print out a map.
ENDTEXT
exit
end

if $cgi['minY'] == "" || $cgi['minX'] == "" || $cgi['maxY'] == "" || $cgi['maxX'] == ""
puts "No map area selected"
exit
end

q= (($cgi['size'].to_i+$cgi['border'].to_i)*($cgi['maxX'].to_i-$cgi['minX'].to_i)+$cgi['size'].to_i+$cgi['border'].to_i*2)

puts <<ENDTEXT
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<body bgcolor = "938e4a">
<style type="text/css">
<!--
td.border 
{
border-width: #{$cgi['border']}px;
border-color: #{$cgi['bcolor']};
border-style: solid;
}
-->
</style>
<table cellpadding= 0 cellspacing= 0 style="border-collapse: collapse" border=#{$cgi['border']} bordercolor="#{$cgi['bcolor']}" width=
ENDTEXT
puts q
puts "height="
puts (($cgi['size'].to_i+$cgi['border'].to_i)*($cgi['maxY'].to_i-$cgi['minY'].to_i)+$cgi['size'].to_i+$cgi['border'].to_i*2)
puts ">"

#  for x in [minX..maxX]
for y in ($cgi['minY'].to_i..$cgi['maxY'].to_i)
puts "<tr>"
#	 for y in [minY..maxY]
for x in ($cgi['minX'].to_i..$cgi['maxX'].to_i)
puts <<ENDTEXT
<td class="border" bgcolor="
ENDTEXT

  tile = mysql_row('grid',{'x'=>x,'y'=>y})
  if tile == nil
			puts '000000'
	elsif tile['terrain'] == "1"
puts '018D11'

else 
  case tile['terrain']
	when "1","4","24"
	puts '018D11'
	when "2","6","7"
	puts '1F6C17'
	when "21","22","23"
	puts '548E4D'
	when "3"
	puts '000000'


	when "5","52","55","151"
	puts '7592e1'
	when "6","23"
	puts '243f1e'
	when "7","21"
	puts '3d591e'

	when "8","81","82"
	puts 'aaa85b'
	when "9"
	puts '8c8960'
	when "10"
	puts '76d790'

	when "11"
	puts 'c4c2a9'
	when "31"
	puts '99b256'
	when "32"
	puts 'a8c670'

	when "33"
	puts 'c4c2a9'
	when "41"
	puts '8dad3e'
	when "42"
	puts 'acc186'

	when "43"
	puts 'aac582'
	when "44","45"
	puts '2a2a22'
	when "51","111"
	puts '99978a'

	when "53","56"
	puts '6280a4'
	when "54","57"
	puts '8ebdd9'
	when "58"
	puts 'ebe6c9'

	when "59"
	puts '6b6ed5'
	when "91","92"
	puts 'd0bd3d'
	when "99"
	puts 'b16c2b'

	when "101"
	puts 'FBC101'
	when "110"
	puts 'adac90'
	when "152"
	puts '475767'
	
	when "200","201","202","203","204"
	puts 'C4C4C4'
	when "205"
	puts '767676'
	when "206"
	puts 'FF01EF'
	when "207"
	puts 'B088AD'
	when "208","209","210","215","216","237","238"
	puts 'FF9500'
	
	when "211","212","213","214"
	puts '4F9283'
	when "217"
	puts "DF1E00"
	when "218","219","220","221","222","223","224"
	puts "5A5945"
	
	when "225"
	puts "BF1B02"
	when "226"
	puts "D0C1BE"
	
	when "227"
	puts "BCC9CD"
	when "228"
	puts "DAEBF0"
	when "229"
	puts "429AB7"
	
	when "230"
	puts "C9F0EA"
	when "231"
	puts "C0EBE5"
	when "232"
	puts "B5E4DD"
	when "233"
	puts "D3E4E6"
	when "234"
	puts "B7D5D7"
	when "235"
	puts "ABD4D7"
	when "236"
	puts "9AC7CB"
	
	when "239","240","241","242","243","244"
	puts "FF8409"
	when "245"
	puts "FFFEBB"
	

    when "0"
    puts '999999'

	else 
	puts 'ffffff'
  end
end
puts <<ENDTEXT
"></td>
ENDTEXT
end
puts "</tr>"
end
puts "</table>"

puts <<ENDTEXT
<br><br>
<b>
<font color='63a251'>Region 01 ████████████████████ :name => <font color="black"> '#{db_field(:region, 1, :name)}'<br>
<font color='24531f'>Region 02 ████████████████████ :name => <font color="black"> '#{db_field(:region, 2, :name)}'<br>
<font color='c39e6a'>Region 03 ████████████████████ :name => <font color="black"> '#{db_field(:region, 3, :name)}'<br>

<font color='99b256'>Region 04 ████████████████████ :name => <font color="black"> '#{db_field(:region, 4, :name)}'<br>
<font color='7592e1'>Region 05 ████████████████████ :name => <font color="black"> '#{db_field(:region, 5, :name)}'<br>
<font color='243f1e'>Region 06 ████████████████████ :name => <font color="black"> '#{db_field(:region, 6, :name)}'<br>
	
<font color='3d591e'>Region 07 ████████████████████ :name => <font color="black"> '#{db_field(:region, 7, :name)}'<br>
<font color='aa985b'>Region 08 ████████████████████ :name => <font color="black"> '#{db_field(:region, 8, :name)}'<br>
<font color='8c6980'>Region 09 ████████████████████ :name => <font color="black"> '#{db_field(:region, 9, :name)}'<br>
	
<font color='76d790'>Region 10 ████████████████████ :name => <font color="black"> '#{db_field(:region, 10, :name)}'<br>
<font color='c4a269'>Region 11 ████████████████████ :name => <font color="black"> '#{db_field(:region, 11, :name)}'<br>
<font color='a8d670'>Region 12 ████████████████████ :name => <font color="black"> '#{db_field(:region, 12, :name)}'<br>
	
<font color='b4e2a9'>Region 13 ████████████████████ :name => <font color="black"> '#{db_field(:region, 13, :name)}'<br>
<font color='6ddd3e'>Region 14 ████████████████████ :name => <font color="black"> '#{db_field(:region, 14, :name)}'<br>
<font color='bcc156'>Region 15 ████████████████████ :name => <font color="black"> '#{db_field(:region, 15, :name)}'<br>
	
<font color='dad592'>Region 16 ████████████████████ :name => <font color="black"> '#{db_field(:region, 16, :name)}'<br>
<font color='99b7ba'>Region 17 ████████████████████ :name => <font color="black"> '#{db_field(:region, 17, :name)}'<br>
<font color='6280a4'>Region 18 ████████████████████ :name => <font color="black"> '#{db_field(:region, 18, :name)}'<br>
	
<font color='8ebdd9'>Region 19 ████████████████████ :name => <font color="black"> '#{db_field(:region, 19, :name)}'<br>
<font color='dbb6c9'>Region 20 ████████████████████ :name => <font color="black"> '#{db_field(:region, 20, :name)}'<br>
<font color='6b6ed5'>Region 21 ████████████████████ :name => <font color="black"> '#{db_field(:region, 21, :name)}'<br>

<font color='d0bd3d'>Region 22 ████████████████████ :name => <font color="black"> '#{db_field(:region, 22, :name)}'<br>
<font color='b88c90'>Region 23 ████████████████████ :name => <font color="black"> '#{db_field(:region, 23, :name)}'<br>
<font color='475767'>Region 24 ████████████████████ :name => <font color="black"> '#{db_field(:region, 24, :name)}'<br>
	
<font color='d0ff3d'>Region 25 ████████████████████ :name => <font color="black"> '#{db_field(:region, 25, :name)}'<br>
<font color='adff90'>Region 26 ████████████████████ :name => <font color="black"> '#{db_field(:region, 26, :name)}'<br>
<font color='47ff67'>Region 27 ████████████████████ :name => <font color="black"> '#{db_field(:region, 27, :name)}'<br>
	
<font color='d0bdff'>Region 28 ████████████████████ :name => <font color="black"> '#{db_field(:region, 28, :name)}'<br>
<font color='adacff'>Region 29 ████████████████████ :name => <font color="black"> '#{db_field(:region, 29, :name)}'<br>
	
<font color='999999'>Region 00 ████████████████████ :name => <font color="black"> '#{db_field(:region, 0, :name)}'<br>
<br><br> 
ENDTEXT

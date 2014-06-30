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

puts "Y: ("+$cgi['minY']+" , "+$cgi['maxY']+")<br>X: ("+$cgi['minX']+" , "+$cgi['maxX']+")"
q= (($cgi['size'].to_i+$cgi['border'].to_i)*($cgi['maxX'].to_i-$cgi['minX'].to_i)+$cgi['size'].to_i+$cgi['border'].to_i*2)

puts <<ENDTEXT
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
<table cellpadding= 0 cellspacing= 0 style="border-collapse: collapse" align="left" border= #{$cgi['border']} bordercolor= #{$cgi['bcolor']} width=
ENDTEXT
puts q
puts "height="
puts (($cgi['size'].to_i+$cgi['border'].to_i)*($cgi['maxY'].to_i-$cgi['minY'].to_i)+$cgi['size'].to_i+$cgi['border'].to_i*2)
puts ">"

for y in ($cgi['minY'].to_i..$cgi['maxY'].to_i)
puts "<tr>"
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

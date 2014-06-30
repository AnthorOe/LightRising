#!/usr/local/bin/ruby -w
# index.cgi
puts "Content-Type: text/html"
require 'rubygems'
require 'cgi'
require 'cgi/session'
load 'functions.cgi'
$cgi = CGI.new
$params = $cgi.str_params

UserID = get_validated_id
if UserID != false
  $header = {'cookie' => [$cookie], 'type' => 'text/html'}
else
  puts $cgi.header('Location'=>'index.cgi?msg=bad_pw')
  exit
end

puts $cgi.header($header)
$user = User.new(UserID)

if not ["Anthor", "Ted the Badass", "makisakedoodah"].include?($user.name)
puts <<ENDTEXT
You cannot edit the map.
ENDTEXT
exit
end


def input_action(action)
  case action
    when "north"
      $y = $y - ($size - 1)
    when "south"
      $y = $y + ($size - 1)
    when "west"
      $x = $x - ($size - 1)
    when "east"
      $x = $x + ($size - 1)

    when "location"
      $y = $cgi['y'].to_i
      $x = $cgi['x'].to_i

    when "edit"
      coords_re = /(-?[0-9]+),(-?[0-9]+)/
      $params.each do
        |name, value|
coords = coords_re.match(name)
next if !coords
x, y = coords[1], coords[2]
update_tile(x, y, value)
      end
  end
end

def update_tile(x, y, new_terrain)
  x, y, new_terrain = x.to_i, y.to_i, new_terrain.to_i
  tile = Tile.new(x, y)
  if !tile.exists? && new_terrain != 3 && new_terrain != 0
    mysql_insert('grid',{'x'=>x,'y'=>y,
      'terrain'=>new_terrain,'region_id'=>$params['option']})
  else
      if tile.terrain == new_terrain
      nil
    elsif new_terrain == 0
      mysql_delete('grid',{'x'=>x,'y'=>y})
    else
      mysql_update('grid',{'x'=>x,'y'=>y},
        {'terrain'=>new_terrain,'region_id'=>$params['option']})
    end
  end
end

$x = $params['x'].to_i || 0
$y = $params['y'].to_i || 0
$size = $params['size'].to_i
$size = 19 if $size == 0
input_action($params['action'])
$tile = Tile.new($x, $y)

Hidden =
  html_hidden('x',$x) + html_hidden('y',$y) +
  html_hidden('size',$size)

Map = html_map($tile, $size, nil, :show_occupants) do
  |tile|
  "<div class=\"small\">#{tile.region_name}</div>" +
  "<input type=\"text\" " +
  "class=\"text\" " +
  "name=\"#{tile.x},#{tile.y}\" " +
  "maxlength=\"3\" " +
  "style=\"width:3em\" " +
  "value=\"#{tile.terrain}\" /><br>"
end

Move_Forms =
  html_action_form('West',:inline,nil,'edit-map.cgi') {Hidden} +
  html_action_form('North',:inline,nil,'edit-map.cgi') {Hidden} +
  html_action_form('South',:inline,nil,'edit-map.cgi') {Hidden} +
  html_action_form('East',:inline,nil,'edit-map.cgi') {Hidden} + " | " +
  html_action_form('Goto Coordinates',:inline,nil,'edit-map.cgi') {
  "X:<input type='text' class='text' name='x' maxlength='6' style='width:100px' value='#{$x}'> Y:<input type='text' class='text' name='y' maxlength='6' style='width:100px' value='#{$y}'>
Don't use values beyond -32768 to 32767 (the database uses smallint for x and y)"}

regions = db_table(:region).values
region_ids = regions.map {|r| r[:id]}

Region_Select =
  html_select(region_ids, $params['option'].to_i) do
    |id| db_field(:region, id, :name) end

puts <<ENDTEXT
<html>
<head><title>Light Rising - Edit Map</title>
<link rel="stylesheet" type="text/css" href="lightrising.css" />
</head>
<body>
<h1>Edit Map</h1>
<a class='buttonlink' href='game.cgi'>Return</a>
<hr>
#{Move_Forms}
<hr><select id="type" name="type">
<option value="0">grassland</option>
<option value="1">marsh</option>
<option value="2">ruins_ascension_statue</option>
<option value="3">rocky_flat</option>
<option value="4">cliff_bottom</option>
<option value="5">low_cliff_face</option>
<option value="6">shallow_sea</option>
<option value="7">deep_sea</option>
<option value="8">forest</option>
<option value="9">corridor_grid</option>
<option value="10">corridor_grid_rusted</option>
<option value="11">corridor_dplate</option>
<option value="12">corridor_grating_lighted</option>
<option value="13">corridor_grid_lighted_damaged</option>
<option value="14">bulkhead_wall</option>
<option value="15">bulkhead_door</option>
<option value="16">bulkhead_door_damaged</option>
<option value="17">space_station_weapons_closet</option>
<option value="18">space_station_med_closet</option>
<option value="19">pine_forest_1</option>
<option value="20">space_station_storage_closet</option>
<option value="21">grass_grid_rusted_covered</option>
<option value="22">grass_grid_rusted_covered2</option>
<option value="23">grass_grid_rusted_covered3</option>
<option value="24">grass_dplate_rusted_covered</option>
<option value="25">space_station_storage_closet_damaged</option>
<option value="26">space_station_tool_closet</option>
<option value="27">bulkhead_door_red_level</option>
<option value="28">grass_crevasse_angled_left</option>
<option value="29">grass_crevasse_left_middle</option>
<option value="30">pine_forest_2</option>
<option value="31">grass_crevasse_left_bridge</option>
<option value="32">grass_crevasse_bottomless_left</option>
<option value="33">grass_crevasse_bottomless</option>
<option value="34">grass_crevasse_bottomless_right</option>
<option value="35">grass_crevasse_angled_left2</option>
<option value="36">maintenance_duct_entrance_grating</option>
<option value="37">maintenance_duct</option>
<option value="38">ice_lake_shore</option>
<option value="39">ice_lake_shallow</option>
<option value="40">ice_lake_deep</option>
<option value="41">pine_forest_3</option>
<option value="42">grassland_snow_covered</option>
<option value="43">grassland_snow_covered2</option>
<option value="44">grassland_snow_covered3</option>
<option value="45">ice_glacier_bottom</option>
<option value="46">ice_glacier_face</option>
<option value="47">ice_glacier_face_high</option>
<option value="48">ice_glacier_plateau</option>
<option value="49">space_station_weapons_closet_stocked</option>
<option value="50">space_station_trash_pile</option>
<option value="51">ice_glacier_volcano_summit</option>
<option value="52">cleared_pine</option>
<option value="53">ice_glacier_lava_flow_start</option>
<option value="54">ice_glacier_lava_flow</option>
<option value="55">ice_glacier_lava_flow1</option>
<option value="56">ice_glacier_lava_flow2</option>
<option value="57">ice_glacier_lava_flow3</option>
<option value="58">mine_ruins</option>
<option value="59">sumerian_ship_wall</option>
<option value="60">sumerian_ship_airlock_door</option>
<option value="61">sumerian_corridor_grid_patchwork</option>
<option value="62">sumerian_corridor_grid_patchwork_blood</option>
<option value="63">bamboo_forest</option>
<option value="64">sumerian_corridor_grid_patchwork_blood2</option>
<option value="65">sumerian_corridor_grid_patchwork_blood3</option>
<option value="66">sumerian_corridor_grid</option>
<option value="67">sumerian_corridor_grid2</option>
<option value="68">sumerian_corridor_grid3</option>
<option value="69">sumerian_corridor_grid_blood</option>
<option value="70">sumerian_corridor_grid_blood2</option>
<option value="71">sumerian_corridor_grid_blood3</option>
<option value="72">sumerian_ship_cell_tiles</option>
<option value="73">sumerian_ship_cell_tiles_blood</option>
<option value="74">sumerian_ship_cell_tiles_blood2</option>
<option value="75">sumerian_ship_cell_tiles_blood_help</option>
<option value="76">sumerian_ship_bridge_console</option>
<option value="77">sumerian_ship_bridge_reactor_core</option>
<option value="78">sumerian_ship_weapons_closet</option>
<option value="79">sumerian_ship_med_closet</option>
<option value="80">sumerian_ship_storage_closet</option>
<option value="81">dead_space</option>
<option value="82">grid_grass_path</option>
<option value="83">dplate_grass_path</option>
<option value="84">paved_road</option>
<option value="85">asteroid2</option>
<option value="86">asteroid4</option>
<option value="87">sumerian_ship_wall_secret</option>
<option value="88">low_hillside</option>
<option value="89">mid_hillside</option>
<option value="90">high_hillside</option>
<option value="91">bulkhead_wall_secret</option>
<option value="92">oolim_ruins</option>
<option value="93">golden_oolim_statue</option>
<option value="94">cleared_wood</option>
<option value="95">low_hilltop</option>
<option value="96">mid_hilltop</option>
<option value="97">high_hilltop</option>
<option value="98">wall</option>
<option value="99">wall_low</option>
<option value="100">wall_low_guardstand</option>
<option value="101">gate_open</option>
<option value="102">gate</option>
<option value="103">stream</option>
<option value="104">lake_shore</option>
<option value="105">shallow_lake</option>
<option value="106">deep_lake</option>
<option value="107">rapids</option>
<option value="108">shallow_river</option>
<option value="109">deep_river</option>
<option value="110">flood_plain</option>
<option value="111">sand_beach</option>
<option value="112">hot_spring</option>
<option value="113">thick_forest</option>
<option value="114">woodland</option>
<option value="115">dirt_track</option>
<option value="116">track_forest</option>
<option value="117">track_pine</option>
<option value="118">empty_field</option>
<option value="119">wheat_field</option>
<option value="120">wheat_field_watered</option>
<option value="121">ruins</option>
</select>
<form action="edit-map.cgi" method="post">
<input type="Submit" value="Update" />
<input type="hidden" name="action" value="edit" />
#{Hidden}
 | #{Region_Select} <i>(Edited tiles will join this region)</i> | <b>(Use the number 0 to delete a tile.)</b>
 | See terrain.cgi for list of regions/terrains.
<br>
<hr>
#{Map}
</body>
<script>
tiles=['grass','marsh','ruins_ascension_statue','lightgrey','grey','rshore','river','ocean','forest','grid','grid_rusted','dplate','grating_lighted','grid_lighted_damaged','bulkhead_wall','bmetal_plate','bulkhead_door_damaged','weapons_floor','med_floor','lightpineforest','storage_floor','grid_rusted_covered','grid_rusted_covered2','grid_rusted_covered3','dplate_rusted_covered','storage_floor_covered','tool_floor','bulkhead_door_red_level','grass_crevasse_angled_left','crevasse_bottomless_left_middle','pineforest','crevasse_bottomless_left_bridge','crevasse_bottomless_left','crevasse_bottomless','crevasse_bottomless_right','grass_crevasse_angled_left2','maintenance_duct_entrance_grating','maintenance_duct','rshore','river','dwater','densepineforest','grass_snow_covered','grass_snow_covered2','grass_snow_covered3','grey_snow','grey_snow2','grey_snow3','grey_snow_plateau','weapons_floor','grid_garbage','volcano_summit','grass','lava_flow_start','lava_flow','lava_flow1','lava_flow2','lava_flow3','ruins_mine','sumerian_ship_wall','sumerian_ship_airlock_door_open','sumerian_ship_grid_patchwork','sumerian_ship_grid_patchwork_blood','bamboo2','sumerian_ship_grid_patchwork_blood2','sumerian_ship_grid_patchwork_blood3','sumerian_ship_grid','sumerian_ship_grid2','sumerian_ship_grid3','sumerian_ship_grid_blood','sumerian_ship_grid_blood2','sumerian_ship_grid_blood3','sumerian_ship_cell_tiles','sumerian_ship_cell_tiles_blood','sumerian_ship_cell_tiles_blood2','sumerian_ship_cell_tiles_blood_help','sumerian_ship_bridge_console','sumerian_ship_reactor_core','weapons_floor','med_floor','storage_floor','starfield','grid_grass_path','dplate_grass_path','paved8','asteroid2','asteroid4','sumerian_ship_wall','hill1_side','hill2_side','hill3_side','bulkhead_wall','oolim_ruins','golden_oolim_statue','grass','hill1_top','hill2_top','hill3_top','wall','wall','guardstand','river','rshore','river','dwater','rapids','river','dwater','rapids','beach','spring','denseforest','lightforest','dirt','dirt','dirt','efield','sfield','sfield','ruins']; numbers=['1','10','101','11','110','111','151','152','2','200','201','202','203','204','205','206','207','208','209','21','210','211','212','213','214','215','216','217','218','219','22','220','221','222','223','224','225','226','227','228','229','23','230','231','232','233','234','235','236','237','238','239','24','240','241','242','243','244','245','246','247','248','249','25','250','251','252','253','254','255','256','257','258','259','260','261','262','263','264','265','266','3','300','301','302','303','304','305','31','32','33','333','334','335','4','41','42','43','44','45','46','47','48','5','51','52','53','54','55','56','57','58','59','6','7','8','81','82','9','91','92','99'];
n=0;
mouseDown=false;
document.body.onmousedown=function(){
mouseDown=true;
}
document.body.onmouseup=function(){
mouseDown=false;
}
tds=document.getElementsByTagName("td");
function setType(mapObject,isit){
childrenM=mapObject.children;
input=childrenM[childrenM.length-2].value;
if(mouseDown){
document.title=input;
 document.elementFromPoint(x,y).style.backgroundImage;
if(isIt){
if(tiles[n]!="bamboo2"){
document.elementFromPoint(x,y).style.backgroundImage="url('images/p_"+tiles[n]+".jpg')";
} else {
document.elementFromPoint(x,y).style.backgroundImage="url('images/p_"+tiles[n]+".png')";
}
document.elementFromPoint(x,y).children[document.elementFromPoint(x,y).children.length-2].value=numbers[n];
}
else{

if(tiles[n]!="bamboo2"){
document.elementFromPoint(x,y).parentNode.style.backgroundImage="url('images/p_"+tiles[n]+".jpg')";
} else {
document.elementFromPoint(x,y).parentNode.style.backgroundImage="url('images/p_"+tiles[n]+".png')";
}
document.elementFromPoint(x,y).parentNode.children[document.elementFromPoint(x,y).children.length-2].value=numbers[n];
}
}
else{
document.title=input;
}
}
var x;
var y;
onOver=function(event){
n=document.getElementById("type").value;
x=event.clientX;
y=event.clientY;
atPoint=document.elementFromPoint(x,y);
overGrid=false;
if(atPoint.className=="map"){
isIt=true;
overGrid=true;
atGrid=atPoint;
}
if(atPoint.parentNode.className=="map"){
isIt=false;
overGrid=true;
atGrid=atPoint.parentNode;
}
if(overGrid){
setType(atGrid,isIt);
}
}
theLength=document.getElementsByTagName("td").length;
for(i=0;i<theLength;i++){
document.getElementsByTagName("td")[i].onmousemove=function(event){onOver(event)};
}
</script>
</html>
ENDTEXT

#!/usr/local/bin/ruby -w -I /home/content/a/n/t/anthor/html/lr/game
# index.cgi
require 'rubygems'
require 'cgi'
load '/home/content/a/n/t/anthor/html/lr/game/functions.cgi'

def tick_restore_search
  tiles = mysql_select_all('grid')
  tiles.each_hash {
    |tile|
    restore_odds = db_field(:terrain, tile['terrain'], :restore_odds)
    restore_odds = 10 if restore_odds == nil
    if rand(100) < restore_odds
      case tile['terrain']
      when "8" # 8 -> 'dirt track'
	  mysql_update('grid',{'x'=>tile['x'],'y'=>tile['y']},
	    {'hp'=>1, 'terrain' => 1})
	else
	  mysql_bounded_update('grid','hp',
	    {'x'=>tile['x'],'y'=>tile['y']}, +1, 3)
      end
    end
  }
  'Search rates restored!'
end

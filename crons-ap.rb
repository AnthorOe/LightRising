#!/usr/local/bin/ruby -w -I /home/content/a/n/t/anthor/html/lr/game
# index.cgi
require 'rubygems'
require 'cgi'
load '/home/content/a/n/t/anthor/html/lr/game/functions-tick.rb'
puts tick_restore_ap
puts tick_settlement_membership
puts tick_campfires
puts tick_move_animals
puts tick_delete_empty_data

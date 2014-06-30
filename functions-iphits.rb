#!/usr/local/bin/ruby -w -I /home/content/a/n/t/anthor/html/lr/game
# index.cgi
require 'rubygems'
require 'cgi'
load '/home/content/a/n/t/anthor/html/lr/game/functions.cgi'

def tick_restore_ip
  query = "UPDATE 'ips' SET 'hits'=0 WHERE 'hits'>0"
  $mysql.query(query)
  'IP limits reset!'
end

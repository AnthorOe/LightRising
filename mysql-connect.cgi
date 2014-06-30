#!/usr/local/bin/ruby -w
# index.cgi
require 'rubygems'
require 'cgi'
require 'mysql'

def mysql_connect(db_name='lightrising')
  begin
    # connect to the MySQL server

    $mysql = Mysql.real_connect('lightrising.yourserver.com', 
                                'lightrising', 
                                'yourDBPassword', 
                                db_name)
    # print 'Successfully connected to MySQL.'
    $mysql
  rescue Exception => e
    # print "Error code: ", e.errno, "\n"
    print "Error message: ", e.to_s, "\n"
  end
end

$mysql_debug = false

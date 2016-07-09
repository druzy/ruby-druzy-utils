require 'socket'

module Druzy
  module Utils
    
    def self.get_local_public_ipv4
      Socket.ip_address_list.detect{|intf| intf.ipv4? and !intf.ipv4_loopback? and !intf.ipv4_multicast?}.ip_address
    end
    
  end
end

if $0 == __FILE__
  puts Druzy::Utils.get_local_public_ipv4
end
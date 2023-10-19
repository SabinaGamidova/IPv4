ipv4_address_validation = lambda do |given_ip|
  octet = '(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)'
  pattern = /^(?!0)(?!.*\.{2})(#{octet})\.(?!0)(?!.*\.{2})(#{octet})\.(?!0)(?!.*\.{2})(#{octet})\.(?!0)(?!.*\.{2})(#{octet})$/
  given_ip.match?(pattern)
end

ip_address = ARGV.empty? ? (print "IPv4-address: "; gets.chomp) : ARGV[0]
puts ipv4_address_validation.call(ip_address)
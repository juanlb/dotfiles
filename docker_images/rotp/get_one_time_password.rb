require 'rotp'

puts ROTP::TOTP.new(ENV['PASSWORD'], issuer: ENV['ISSUER']).now
# encoding: utf-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Unit::TestCase
  def test_non_empty_string
    Encoding.list.each do |enc|
      begin
        assert(RegexpM17N.non_empty?('.'.encode(enc)))
      rescue
        puts "No encoder for #{enc} in current ruby version"
      end
    end
  end
end

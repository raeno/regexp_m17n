module RegexpM17N
  def self.non_empty?(str)
    str.bytes.to_a.map(&:chr).join =~ /^.+$/
  end
end
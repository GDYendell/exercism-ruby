module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    if /(OIL)|(GAS)/.match(ship_identifier)
      :A
    else
      :B
    end
  end
end

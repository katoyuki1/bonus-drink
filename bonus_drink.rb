class BonusDrink
  
  @@total = 0
  def self.total_count_for(amount)
    @@total += amount
    if @@total >= 3
      present = @@total / 3
      amount = amount + present
    end

    return amount
  end
end

require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash
  @@current_inventory_count = 0

  def initialize(args = {})
    @sodas = Soda.new(@brand, @price)
    @cash = args[:cash]
    @@current_inventory_count += 1
  end

  def self.current_inventory_count
    @@current_inventory_count
  end

  # def find_soda(soda_brand)
  #   return soda_brand if @sodas.has_value?(soda_brand)
  # else
  #   nil
  # end
  # end

  # def sell(soda_brand)
  #   if find_soda(soda_brand) == true
  #     @cash[soda_brand] = #cash +  && @sodas.delete[soda.brand]
  #   else
  #     nil
  #   end
  # end
end

pepsi = Soda.new(brand: "Pepsi", price: 0.65)
p @@current_inventory_count
mountain_dew = Soda.new(brand: "MD", price: 0.66)
p @@current_inventory_count

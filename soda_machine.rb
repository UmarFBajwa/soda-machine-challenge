class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

# Same as above, but args allow for any order. Also remember hash...
# def initialize(sodas, cash)
#   @sodas = sodas
#   @cash = cash

# Line 9 in Soda_machine_spec and spec_helper allows you to do this...
  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    return @sodas.find { |soda| soda.brand == soda_brand }
  end

  def sell(soda_brand)
    soda = find_soda(soda_brand)
# Returns nil if soda returns nil
    return nil if soda == nil
# Add price to cash
    @cash += soda.price
# Deletes the soda from the hash. Remember that we set soda = to something above
    @sodas.delete(soda)

  end

end

class House
  attr_accessor :address, :square_feet, :num_bedrooms, :num_baths, :cost, :down_payment, :sold, :short_sale, :has_tenants

  def initialize(house_options = {})
    @address = house_options[:address] || 'n/a'
    @square_feet = house_options[:square_feet] || 'n/a'
    @num_bedrooms = house_options[:num_bedrooms] || 3
    @num_baths = house_options[:num_baths] || 2
    @cost = house_options[:cost] || 320_000
    @down_payment = house_options[:down_payment] || 0.20
    @sold = house_options.fetch(:sold) { false }
    @short_sale = house_options[:short_sale] || 'n/a'
    @has_tenants = house_options.fetch(:has_tenants) { false }
  end


  def obscure_address
    @address.sub(/\A\d*/, '****')
  end

  def buy!(money, good_credit)
    @sold = true if money >= down_payment && good_credit
  end

  def down_payment
    cost * @down_payment
  end

  def to_s
    "#{obscure_address} : #{square_feet} sq. ft., #{num_bedrooms} bed, #{num_baths} bath. $#{cost}"
  end
end

casita = House.new({address: "Av Caracas # 22 - 69", square_feet: "100 feets", num_bedrooms: 26, num_baths: 5, cost: 800_000, down_payment: 0.10, sold: false, short_sale: 500_000, has_tenants: false})


# Pon driver code aca para probar que todo este funcionando.
###### DRIVER CODE ########





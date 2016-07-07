#class Product

#def initialize(id, name, price)
#  @id = id
#  @name = name
#  @price = price.to_i
#end


prod1 = {id: 1, name: "creyons", price: 12.36}
prod2 = {id: 2, name: "glue", price: 2.45}
prod3 = {id: 3, name: "pencil", price: 1.23}

@products = [prod1, prod2, prod3]

@levels = [ { prod_id: 1, level: 10 }, { prod_id: 2, level: 20 }, { prod_id: 3, level: 30 }]

@basket = []

def add_to_basket(i)
  selected_product = @products.find { |o| o[:id] == i }
  selected_product[:quantity] = 1
  if basket.detect { |p| p[:id] == i} allow_blank: false
  
  else
  @basket << selected_product
  @levels.map { |n| (n[level] - 1) if n[:prod_id] == i }
  end
end

def remove_from_basket(i)
  @basket.delete_if { |p| p[:id] == i }
  @levels.map { |n| (n[:level] + 1) if n[:prod_id] == i }
end

def load_basket
  @basket.each do |n|
    puts n
  end
end

def price_gross(i)
  selected_product = @products.find { |o| o[:id] == i }
  selected_product[:price] * 1.23
end

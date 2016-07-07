class Shop
  @@id = 0
  def initialize
    @id = id_next
  end

  private
  def id_next
    @@id +=1
  end
end

class Factory
  def create(owner)
    p = create_product(owner)
    register_product(p)
    p
  end

  private

  def create_product ;end

  def register_product ;end
end
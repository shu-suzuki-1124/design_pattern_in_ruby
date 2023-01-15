class Builder
  def make_title
    raise NotImplementedError
  end

  def make_string
    raise NotImplementedError
  end

  def make_items
    raise NotImplementedError
  end

  def close
    raise NotImplementedError
  end
end
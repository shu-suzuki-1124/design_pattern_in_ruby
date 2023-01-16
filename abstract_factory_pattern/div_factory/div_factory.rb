require "./factory/factory.rb"
require "./div_factory/div_link.rb"
require "./div_factory/div_page.rb"
require "./div_factory/div_tray.rb"

class DivFactory < Factory
  def create_link(caption, url)
    DivLink.new(caption, url)
  end

  def create_tray(caption)
    DivTray.new(caption)
  end

  def create_page(title, author)
    DivPage.new(title, author)
  end
end

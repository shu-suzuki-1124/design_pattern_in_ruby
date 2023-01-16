require "./factory/factory.rb"
require "./list_factory/list_link.rb"
require "./list_factory/list_tray.rb"
require "./list_factory/list_page.rb"

class ListFactory < Factory
  def create_link(caption, url)
    ListLink.new(caption, url)
  end

  def create_tray(caption)
    ListTray.new(caption)
  end

  def create_page(title, author)
    ListPage.new(title, author)
  end
end

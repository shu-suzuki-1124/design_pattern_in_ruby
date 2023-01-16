require "./factory/factory.rb"
require "./list_factory/list_factory.rb"
require "./div_factory/div_factory.rb"

class Main
  def self.call(filename, klass)
    new.call(filename, klass)
  end

  def call(filename, klass)
    factory = Factory.factory(klass)

    # Blog
    blog1 = factory.create_link("Blog1", "https://example.com/blog1")
    blog2 = factory.create_link("Blog2", "https://example.com/blog2")
    blog3 = factory.create_link("Blog3", "https://example.com/blog3")
    blog_tray = factory.create_tray("Blog Site")
    blog_tray.add(blog1)
    blog_tray.add(blog2)
    blog_tray.add(blog3)

    # News
    news1 = factory.create_link("Blog1", "https://example.com/news1")
    news2 = factory.create_link("Blog1", "https://example.com/news2")
    news3 = factory.create_tray("News 3")
    news3.add(factory.create_link("News3(US)", "https://example.com/news3us"))
    news3.add(factory.create_link("News3(JP)", "https://example.com/news3jp"))
    news_tray = factory.create_tray("News Site")
    news_tray.add(news1)
    news_tray.add(news2)
    news_tray.add(news3)

    # Page
    page = factory.create_page("Blog and News2", "Shu Suzuki")
    page.add(blog_tray)
    page.add(news_tray)

    page.output(filename)
  end
end

Main.call("sample", ListFactory)
Main.call("sample2", DivFactory)
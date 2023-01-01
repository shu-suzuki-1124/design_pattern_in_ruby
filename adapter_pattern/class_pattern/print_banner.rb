require './print.rb'
require './banner.rb'

class PrintBanner < Banner
  include Print

  def print_weak
    show_with_paren
  end

  def print_strong
    show_with_aster
  end
end
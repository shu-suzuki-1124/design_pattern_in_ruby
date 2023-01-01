class AbstractDisplay
  def display
    # openはサブクラスで定義する
    print open

    # printはサブクラスで定義する
    5.times do
      print printout
    end
    # closeはサブクラスで定義する
    puts close
  end
end
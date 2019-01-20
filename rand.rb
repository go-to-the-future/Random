

random = Random.new()
print "数値を入力してください:"
a = gets.to_i

a.times do
  File.open("rand.csv","a") do |text|
    text.puts("#{random.rand(1.0)},#{random.rand(1.0)}\n")
  end
end

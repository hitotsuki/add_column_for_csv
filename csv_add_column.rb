require 'csv'
  
# 一旦配列に入れておく
tests = []
CSV.foreach("/path.csv") do |row|
    tests << row
end

#カラム名が必要であれば入れておく
output = []

tests.each do |test|
    output << ["#{test[0]}","#{test[1]}","#{test[2]}#{test[3]}#{test[4]}#{test[5]}","#{test[6]}"]
end

CSV.open('hoge.csv','w') do |csv| 
    output.each do |bo|
        csv << bo
    end
end

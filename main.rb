# Act 10 
def mark_evaluation(average_score, final_exam_score, final_project_score) 
  print "your mark is: "; puts (average_score * 0.55 + final_exam_score * 0.30 + final_project_score * 0.15)
end 

mark_evaluation(7,3,4)

# Act 11
def distance_1_dimension(object_1, object_2) 
  print "the distance is: ";  object_1 >= object_2 ? (puts object_1 - object_2) : (puts object_2 - object_1); print "m"
end 

distance_1_dimension(2,5)

# Act 12 
def distance_2_dimension(object_1, object_2) 
    x = (object_2[0].to_i - object_1[0].to_i)
    y = (object_2[1].to_i - object_1[1].to_i)
    puts "the distance is:"
  puts Math.sqrt(x**2+ y**2)
end 

distance_2_dimension([1.5], [5,8])

# Act 13

def square_and_cube_root_of_a_number(number)
  print "square: "; puts number * number 
  print "cube_root:"; puts number * number * number 
end 

square_and_cube_root_of_a_number(8)

#Act 14

def reverse_num_or_string(num)
  print "the reversed string/number is: "; puts num.reverse()
end 

reverse_num_or_string("988786761")
reverse_num_or_string("asdfdasfs")

#Act 15 

def exchange_variable_value(a,b)
  puts "task completed, results are the following: "

  print "a = "; puts a = b
  print "b = "; puts b = a 
end 

exchange_variable_value(3,34)

#Act 16 

def time_to_catch_b(position_1, speed_1, position_2, speed_2)
  print "time needed: "; puts ((position_2 - position_1) / (speed_1 - speed_2)) * 60; puts "min"
end 

time_to_catch_b(1,5,6,4)

#Act 17 


def time_to_arrive(hour_i, second_spent)

  hour = (second_spent.to_f / 3600).to_i
  minute = (second_spent.to_f / 60) % 60
  second = second_spent % 60

  now_hour = hour_i[0] + hour
  now_minute = hour_i[1] + minute.to_i
  now_second = hour_i[2] + second

  loop do 
    if now_hour >= 24 
      now_hour -= 24
      now_hour.append("0") if now_hour.to_s.length() == 1 
    elsif now_minute >= 60
     now_minute -= 60 
     now_hour += 1 
    elsif now_second >= 60 
     now_second -= 60
     now_minute += 1
    end
  break if now_hour < 24 and now_minute < 60 and now_second < 60
  end 

  print "hour: "; print now_hour
  print " minute: "; print now_minute
  print " second: "; print now_second
end 

time_to_arrive([00,00,00], 7227)


#Act 18
def personal_info(name, family_name)
  puts name[0], family_name[0]
end 

#Act 19 
def test(mark_and_round = 5)
  mark = mark_and_round * 5

  mark_and_round.times do 
    x = rand(100)
    y = rand(100)

    print "\nx = "; puts x 
    print "y = "; puts y 

    puts "x + y = ?" 
    puts "the answer is: "

    answer = gets.chomp().to_i.strip

    unless answer == (x + y).to_i
        mark -= 5
        mark -= 1 unless answer == "" #un punto por fallar + 5 puntos de la respuesta correcta
    end 
  end 

  puts "Your mark is" ; puts mark
end 

test()

#act 20 
def act_20()
  total = 0

  [2,1,0.5, 0.2, 0.1].each do |i|

    print "Amount of coin "; print i; puts "$"
    
    coin = gets.chomp().to_i
    
    total += coin * i 

  end 

  print "euros:"; puts total.to_i
  print "cents:"; puts ((total - total.to_i) * 100).to_i
end 

act_20()

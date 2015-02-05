movie_lengths = [5,10,15,5,20]

def find_movies_with_exact_flight_length(flight_length,movie_lengths)
  seen_it_hash = {}
  movie_lengths.each do |length|
    length1 = length
    required_length2 = flight_length - length1
    return true if seen_it_hash[required_length2] != nil

    seen_it_hash[length1] = true
  end

  false
end

def nested_loops_solution(flight_length,movie_lengths)
  flag = false
  
  movie_lengths.each do |length|
    desired_time = flight_length - length
    movie_lengths.each do |length2|
      if length2 == desired_time
        flag = true
        break
      end
    end
  end

  flag == true 
end



puts find_movies_with_exact_flight_length(20,movie_lengths)
puts find_movies_with_exact_flight_length(10,movie_lengths)
puts find_movies_with_exact_flight_length(7,movie_lengths)
puts find_movies_with_exact_flight_length(35,movie_lengths)

puts nested_loops_solution(20,movie_lengths)
puts nested_loops_solution(10,movie_lengths)
puts nested_loops_solution(7,movie_lengths)
puts nested_loops_solution(35,movie_lengths)

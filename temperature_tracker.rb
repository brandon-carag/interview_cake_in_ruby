class TempTracker
  attr_accessor :temps

  def initialize
    @temps = []
    @frequency_hash = {}
    @current_frequency
    @current_mode = "no mode"
    @current_sum
    @current_size
    @current_mean
  end

  def insert(temp)
    @temps.push(temp)

    #Mode Calculation
    if @frequency_hash[temp] == nil
      @frequency_hash[temp] = 1
    else
      @frequency_hash[temp] += 1
      if @frequency_hash[temp] > @current_frequency
        @current_frequency = @frequency_hash[temp]
        @current_mode = @frequency_hash[temp]
      end
    end

    #Mean Calculation
    @current_sum += @frequency_hash[temp]
    @current_size += 1
    @current_mean += @current_sum.to_f / @current_size
  end

  def get_max
    return "No max" if @temps.size == 0
    max_temp = 0
    @temps.each do |temp|
      max_temp = temp if temp >= max_temp
    end

    max_temp
  end

  def get_min
    return "No min" if @temps.size == 0
    min_temp = 100 
    @temps.each do |temp|
      min_temp = temp if temp <= min_temp
    end

    min_temp
  end

  def get_mean
    @current_mean
  end

  def get_mode
    @current_mode
  end

end

temp_tracker = TempTracker.new
temp_tracker.temps = [10,100,10,7,7,3]
puts temp_tracker.get_max #100
puts temp_tracker.get_min #3
puts temp_tracker.get_mean #37.666666
puts temp_tracker.get_mode


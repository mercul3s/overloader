# simple class to time a method call or request

class Timer
  def start
    @start_time = Time.now
  end

  def end
    @end_time = Time.now
  end

  def elapsed
    if @start_time != nil and @end_time != nil
      @elapsed = @end_time - @start_time
    end
    return @elapsed
  end
end
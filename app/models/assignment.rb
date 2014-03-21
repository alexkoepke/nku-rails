class Assignment < ActiveRecord::Base
  def percentage
    (score / total.to_f) * 100
  end
  def average_percentage
    @count = 0
    @ass_tot = 0
    all.each do |a|
      @ass_tot += a.percentage
      @count += 1
    end
    return(@ass_tot / @count)
  end
end

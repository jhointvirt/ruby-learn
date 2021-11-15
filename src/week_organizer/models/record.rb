class Record
  def initialize(title, description)
    @title = title
    @description = description
    @date = Time.now
  end

  def date
    return @date
  end

  def title
    return @title
  end

  def description
    return @description
  end
end
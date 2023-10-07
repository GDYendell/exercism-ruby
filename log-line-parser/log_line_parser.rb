class LogLineParser
  def initialize(line)
    match = /\[(\w+)\]:\s*([\w ]*)\b/.match(line)
    @log_level = match[1].downcase
    @message = match[2]
  end

  def message
    @message
  end

  def log_level
    @log_level
  end

  def reformat
    "#{message} (#{log_level})"
  end
end

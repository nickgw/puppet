require 'pathspec/spec'

class RegexSpec < BSpec
  def initialize(regex)
    @regex = Regexp.compile regex

    super
  end

  def inclusive?
    true
  end

  def match(path)
    @regex.match(path) if @regex
  end
end

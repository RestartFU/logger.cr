module Color
  extend self
  BLACK   = "\033[30m"

  def black(s) : String
    fmt(BLACK, s)
  end

  RED = "\033[31m"

  def red(s) : String
    fmt(RED, s)
  end

  GREEN = "\033[32m"

  def green(s) : String
    fmt(GREEN, s)
  end

  ORANGE = "\033[33m"

  def orange(s) : String
    fmt(ORANGE, s)
  end

  BLUE = "\033[34m"

  def blue(s) : String
    fmt(BLUE, s)
  end

  MAGENTA = "\033[35m"

  def magenta(s) : String
    fmt(MAGENTA, s)
  end

  CYAN = "\033[36m"

  def cyan(s) : String
    fmt(CYAN, s)
  end

  RESET = "\033[0m"

  module Background
    extend self
    BLACK   = "\033[40m"

    def black(s) : String
      fmt(BLACK, s)
    end

    RED = "\033[41m"

    def red(s) : String
      fmt(RED, s)
    end

    GREEN = "\033[42m"

    def green(s) : String
      fmt(GREEN, s)
    end

    ORANGE = "\033[43m"

    def orange(s) : String
      fmt(ORANGE, s)
    end

    BLUE = "\033[44m"

    def blue(s) : String
      fmt(BLUE, s)
    end

    MAGENTA = "\033[45m"

    def magenta(s) : String
      fmt(MAGENTA, s)
    end

    CYAN = "\033[46m"

    def cyan(s) : String
      fmt(CYAN, s)
    end

    YELLOW = "\033[103m"

    def yellow(s) : String
      fmt(YELLOW, s)
    end

    WHITE = "\033[107m"

    def white(s) : String
      fmt(WHITE, s)
    end
  end
end

private def fmt(cl, s) : String
    "#{cl}#{s}#{Color::RESET}"
  end
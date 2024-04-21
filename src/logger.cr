require "./color"

private SEP   = Color.cyan(" | ")
private INFO  = "#{Color::Background.yellow(Color.black("INFO"))}#{SEP}"
private DEBUG = "#{Color::Background.cyan(Color.black("DEBU"))}#{SEP}"
private ERROR = "#{Color::Background.red(Color.black("ERRO"))}#{SEP}"
private FATAL = "#{Color::Background.orange(Color.black("FATA"))}#{SEP}"

module Logger
  extend self

  module Utils
    extend self

    def clear_line
      print "\x1b[2K"
    end

    def cursor_up
      print "\x1b[1A"
    end

    def cursor_beg
      print "\r"
    end
  end

  def debug(s)
    print "#{Color::RESET}#{DEBUG}#{s}"
  end
  def debugln(s)
    puts "#{Color::RESET}#{DEBUG}#{s}"
  end

  def error(s)
    print "#{Color::RESET}#{ERROR}#{s}"
  end
  def errorln(s)
    puts "#{Color::RESET}#{ERROR}#{s}"
  end

  def info(s)
    print "#{Color::RESET}#{INFO}#{s}"
  end
  def infoln(s)
    puts "#{Color::RESET}#{INFO}#{s}"
  end

  def fatal(s)
    print "#{Color::RESET}#{FATAL}#{s}"
    exit(1)
  def fatalln(s)
    puts "#{Color::RESET}#{FATAL}#{s}"
    exit(1)
end

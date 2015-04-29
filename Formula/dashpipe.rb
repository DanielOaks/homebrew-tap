# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb

class Dashpipe < Formula
  homepage "https://github.com/DanielOaks/dashpipe"
  head "https://github.com/DanielOaks/dashpipe.git"

  def install
    system "pod2man dashpipe.pod dashpipe.1"
    system "PREFIX=#{prefix} make install"
  end

  test do
    system "#{bin}/dashpipe"
  end
end

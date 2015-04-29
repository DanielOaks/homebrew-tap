# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb

class Civetweb < Formula
  homepage "https://github.com/bel2125/civetweb"
  head "https://github.com/bel2125/civetweb.git"

  def install
    ENV["TARGET_OS"] = "OSX"

    system "make build WITH_LUA=1 WITH_IPV6=1 WITH_WEBSOCKET=1 WITH_CPP=1 PREFIX=#{prefix}"

    bin.install "civetweb"
    include.install "include" => "civetweb"
    doc.install "CREDITS.md"
    doc.install "LICENSE.md"
    doc.install "README.md"
    doc.install "RELEASE_NOTES.md"
  end

  test do
    system "#{bin}/civetweb"
  end
end

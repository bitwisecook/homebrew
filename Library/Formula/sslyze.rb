# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Sslyze < Formula
  homepage "https://github.com/nabla-c0d3/sslyze"
  url "https://github.com/nabla-c0d3/sslyze/releases/download/release-0.10/sslyze-0_10-osx64.zip"
  version "0.10"
  sha1 "57ddf9083aa0e32fd31662af4735aa9f94ef499e"

  
  depends_on :python => ["2.7"]

  def install
    prefix.install Dir['*']
    bin.install_symlink "#{prefix}/sslyze.py" => "sslyze"
  end

  test do
    system "#{bin}/sslyze --regular github.com"
  end
end

require 'formula'

class AllureCommandline < Formula
  desc 'Allure Commandline client'
  homepage 'http://allure.qatools.ru/'
  url 'https://github.com/allure-framework/allure-core/releases/download/allure-core-1.4.23/allure-commandline.zip'
  head 'https://github.com/allure-framework/allure-core.git'
  sha1 '4bc0984a0c178b8abe6cc1f036ae658aa087bbc7'
  version "1.4.23"

  def install
    # Remove windows files
    rm_rf Dir["bin/*.bat"]
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/allure"
  end

  test do
    system "#{bin}/allure help"
  end
end

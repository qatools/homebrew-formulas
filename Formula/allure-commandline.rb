require 'formula'

class AllureCommandline < Formula
  desc 'Allure Commandline client'
  homepage 'http://allure.qatools.ru/'
  url 'https://github.com/allure-framework/allure-core/releases/download/allure-core-1.4.22/allure-commandline.zip'
  head 'https://github.com/allure-framework/allure-core.git'
  sha1 'c90c0fe84d9ae0e4f87be864ce3359ac11a6a0a7'
  version "1.4.22"

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

require 'formula'

class AllureCommandline < Formula
  desc 'Allure Commandline client'
  homepage 'http://allure.qatools.ru/'
  url 'https://github.com/allure-framework/allure-core/releases/download/allure-core-1.4.20/allure-commandline.zip'
  head 'https://github.com/allure-framework/allure-core.git'
  sha1 '7af28014db57c5eaaba3a328fd0a4b7ec0f4b55a'
  version "1.4.20"

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

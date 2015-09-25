require 'formula'

class AllureCommandline < Formula
  desc 'Allure Commandline client'
  homepage 'http://allure.qatools.ru/'
  url 'https://github.com/allure-framework/allure-core/releases/download/allure-core-1.4.19/allure-commandline.zip'
  head 'https://github.com/allure-framework/allure-core.git'
  sha1 'd31556f484e082423089c8454d41ab4375c7ef4b'
  version "1.4.18"
  conflicts_with "allure-cli", :because => "the old version of Allure commandline was installed"

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

require 'formula'

class AllureCommandline < Formula
  desc 'Allure Commandline client'
  homepage 'http://allure.qatools.ru/'
  url 'https://github.com/allure-framework/allure-core/releases/download/allure-core-1.4.18/allure-commandline.zip'
  head 'https://github.com/allure-framework/allure-core.git'
  sha1 '013c6a69bb67dbd9696b0b7c1c8ccb33c4725850'
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

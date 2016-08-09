require 'formula'

class AllureCommandline < Formula
  desc 'Allure Commandline client'
  homepage 'http://allure.qatools.ru/'
  url 'https://github.com/allure-framework/allure-core/releases/download/allure-core-1.4.23/allure-commandline.zip'
  head 'https://github.com/allure-framework/allure-core.git'
  sha256 '030cf84ce0bbbb3475f2ab26f3ccac4df99b539f85238687ece12c087d3d70c9'
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

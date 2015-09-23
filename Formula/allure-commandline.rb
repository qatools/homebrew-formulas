require 'formula'

class AllureCli < Formula
  homepage 'https://github.com/allure-framework/'
  url 'https://github.com/allure-framework/allure-core/releases/download/allure-core-1.4.18/allure-commandline.zip'
  head 'https://github.com/allure-framework/allure-core.git'
  sha1 '013c6a69bb67dbd9696b0b7c1c8ccb33c4725850'
  version "1.4.18"


  def install
    jarname = 'allure-commandline.jar'
    libexec.install "lib/#{jarname}"
    bin.write_jar_script libexec/jarname, "allure"
  end

  test do
    system "#{bin}/allure help"
  end
end

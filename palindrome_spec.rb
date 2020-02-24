class Palindrome
  def is_palindrome(str)
    str.casecmp?(str.reverse) 
  end
end

RSpec.describe Palindrome do
  palindrome = Palindrome.new
  context "Basic tests" do
    it "Testing for 'a'" do
      expect(palindrome.is_palindrome("a")).to be true
    end
    it "Testing for 'aba'" do
      expect(palindrome.is_palindrome("aba")).to be true
    end
    it "Testing for 'Abba'" do
      expect(palindrome.is_palindrome("Abba")).to be true
    end
    it "Testing for 'hello'" do
      expect(palindrome.is_palindrome("hello")).to be false
    end
    it "Testing for 'hello'" do
      expect(palindrome.is_palindrome("hello")).to be false
    end
    it "Testing for 'Bob'" do
      expect(palindrome.is_palindrome("Bob")).to be true
    end
    it "Testing for 'Madam'" do
      expect(palindrome.is_palindrome("Madam")).to be true
    end
    it "Testing for 'AbBa'" do
      expect(palindrome.is_palindrome("AbBa")).to be true
    end
    it "Testing for ''" do
      expect(palindrome.is_palindrome("")).to be true
    end
  end

  context "Random tests" do
    it "Testing for 'KCajpKxKKWmZEKeYyEKEZMWKkXKPJACk'" do
      expect(palindrome.is_palindrome("KCajpKxKKWmZEKeYyEKEZMWKkXKPJACk")).to be true
    end
    it "Testing for 'SfSWqqvHkkhVQqWsfs'" do
      expect(palindrome.is_palindrome("SfSWqqvHkkhVQqWsfs")).to be true
    end
    it "Testing for 'RRCRzbDxJmnKDRCEO'" do
      expect(palindrome.is_palindrome("RRCRzbDxJmnKDRCEO")).to be false
    end
    it "Testing for 'MpzEzgZTc'" do
      expect(palindrome.is_palindrome("MpzEzgZTc")).to be false
    end
    it "Testing for 'ZpDEGMVDFefTfGnlcaaCINGFTFefDVMgedpZ'" do
      expect(palindrome.is_palindrome("ZpDEGMVDFefTfGnlcaaCINGFTFefDVMgedpZ")).to be false
    end
    it "Testing for 'AYXRTPbifvfoHStRggRtShoFvfIbPTrXYa'" do
      expect(palindrome.is_palindrome("AYXRTPbifvfoHStRggRtShoFvfIbPTrXYa")).to be true
    end
    it "Testing for 'GyXjxcybdoqoVuClsKfFksLCUVOQoDbyCxJXyg'" do
      expect(palindrome.is_palindrome("GyXjxcybdoqoVuClsKfFksLCUVOQoDbyCxJXyg")).to be true
    end
    it "Testing for 'JaccGFrI'" do
      expect(palindrome.is_palindrome("JaccGFrI")).to be false
    end
    it "Testing for 'OyEUOoUeyo'" do
      expect(palindrome.is_palindrome("OyEUOoUeyo")).to be true
    end
  end
end

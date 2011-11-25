require 'spec_helper'

describe QuoteMedia do
  before(:all) do
    @url = QuoteMedia.create_chart_url(symbol: 'abc')
  end

  describe '#create_chart_url' do
    it "should give a url string" do
      @url.class.should == String
      @url.should match(/http:\/\/app\.quotemedia\.com\//)
    end

    it "should raise an error if not given a symbol" do
      lambda do
        QuoteMedia.create_chart_url
      end.should raise_error
    end

    it "should return a url with all the default parameters if given no others" do
      @url.should match(/webmasterId=500/)
      # webmasterId=500 chscale=5d&chtype=AreaChart&chfrmon=on&chfrm=ffffff&chbdron=on&chbdr=cccccc&chbg=ffffff&chbgch=ffffff&chln=465665&chfill=1B57AA&chfill2=c0c9d2&chgrdon=on&chgrd=cccccc&chton=on&chtcol=000000&chxyc=111111&chpcon=on&chpccol=ee0000&chmrg=2&chhig=250&chwid=380
    end

    it "should replace default parameters with given parameters" do
      QuoteMedia.create_chart_url(symbol: 'abc', webmasterId: '321', chgrdon: 'off').should match(/webmasterId=321.+chgrdon=off/)
    end
  end
end

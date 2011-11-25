require 'spec_helper'

describe QuoteMedia do
  describe '#create_chart_url' do
    it "should give a url" do
      QuoteMedia.create_chart_url(symbol: 'abc').should match('fuzzy donkeys')
    end

    it "should raise an error if not given a symbol" do
      lambda do
        QuoteMedia.create_chart_url
      end.should raise_error
    end

    it "should return a url with all the default parameters"

    it "should replace default parameters with given parameters"
  end
end

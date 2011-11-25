require 'spec_helper'

describe Chart do
  describe "#new" do
    # it "should store params" do
    #   puts Chart.new(symbol: 'abc')
    # end

    it "should raise an error when no symbol is given" do
      lambda { Chart.new }.should raise_error
    end
  end

  describe '#url' do
    it "should give a url containing all the given parameters" do
      custom_params = { symbol: 'abc',
                        webmasterId: '321',
                        chscale: '2d',
                        chpcon: 'off',
                        chtype: 'candle',
                        chmrg: '7',
                        chhig: '100',
                        chwid: '150'
      }

      url = Chart.new(custom_params).url
      custom_params.each do |k,v|
        url.should match(/#{k}=#{v}/)
      end
    end
  end
end

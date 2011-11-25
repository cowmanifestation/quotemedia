require_relative "quotemedia/version"

module QuoteMedia
  # QuoteMedia chart parameters reference:
  # http://www.quotemedia.com/content_solutions/module_resources.php
  # QuoteMedia Chart Builder: http://www.quotemedia.com/demoarea/chartbuilder-cookiebased.php

  # TODO put default styling here that Chris selects
  CHART_DEFAULTS = {
    webmasterId: "500",

    # We don't want a default symbol - each chart should have its own.
    # symbol: nil, # i.e. ^DOW

    # This is the chart title; you can specify whatever you want, or leave it empty.
    # QuoteMedia makes suggestions based on the symbol which can be seen when using the QuoteMedia Chart Builder - http://www.quotemedia.com/demoarea/chartbuilder-cookiebased.php
    # Or it can be left empty, in which case the symbol will be used as the title, unless the title (chton) is off.
    #chsym: nil,
    # date range - for example, 1d, 5d, 1y etc.
    chscale: '5d',
    # previous close is on/off
    chpcon: 'on',
    # Chart type - Options: bar, candle, compare, dot, hlc, line, mountain, ohlc, LineChart, BarChart, CandleStickChart, AreaChart, FinancialLine, FinancialBar, FinancialCandleStick
    chtype: 'AreaChart',
    # The frame around the image canvas on/off
    chfrmon: 'on',
    # frame color
    chfrm: 'ffffff',
    # border around plot area on/off
    chbdron: 'on',
    # border color around plot area
    chbdr: 'cccccc',
    # background color
    chbg: 'ffffff',
    # background color of chart plot area
    chbgch: 'ffffff',
    # line color
    chln: '465665',
    # primary fill color for area charts, and candlestick (and volume bars)
    chfill: '1B57AA',
    # gradient fill color turns on gradient-fill area charts
    chfill2: 'c0c9d2',
    # plot area grid on/of
    chgrdon: 'on',
    # grid color
    chgrd: 'cccccc',
    # chart title is visible on/off
    chton: 'on',
    # chart title color
    chtcol: '000000',
    # xy label and tick color
    chxyc: '111111',
    # previous close line color
    chpccol: 'ee0000',
    # margin padding
    chmrg: '2',
    # chart height
    chhig: '250',
    # chart width
    chwid: '380',
  }

  def self.create_chart_url(params)
    # TODO: Raise error for parameters that don't exist, i.e. misspelled things
    unless params[:symbol]
      raise ArgumentError, "No symbol specified."
    end

    url = 'http://app.quotemedia.com/quotetools/getChart.go?'

    url << CHART_DEFAULTS.merge(params).to_a.map {|a| a.join("=")}.join("&")
  end
end

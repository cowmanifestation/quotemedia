autoload :VERSION, "quotemedia/version"
autoload :chart, "chart"

module QuoteMedia
  def self.create_chart_url(params)
    chart = Chart.new(params)
    chart.url
  end
end

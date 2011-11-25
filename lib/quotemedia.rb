require_relative "quotemedia/version"
require_relative "chart"

module QuoteMedia
  def self.create_chart_url(params)
    chart = Chart.new(params)
    chart.url
  end
end

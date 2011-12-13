module Quotemedia
  autoload :VERSION, "quotemedia/version"
  autoload :Chart, "quotemedia/chart"
  def self.create_chart_url(params)
    chart = Chart.new(params)
    chart.url
  end
end

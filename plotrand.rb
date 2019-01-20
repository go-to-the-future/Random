require 'daru'
require 'statsample'

df = Daru::DataFrame.from_csv 'rand.csv', {col_sep: ','}
rb = ReportBuilder.new
ds = df['left random','right random']
rb.add(ds.corr.to_s)
rb.add(Statsample::Graph::Scatterplot.new(df['left random'], df['right random']))
rb.save_html('result.html')

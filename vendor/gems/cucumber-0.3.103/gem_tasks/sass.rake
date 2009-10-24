desc 'Generate the stylesheets for the html formatter from sass'
task :sass do
  sh 'sass -t expanded lib/cucumber/formatter/cucumber.sass > lib/cucumber/formatter/cucumber.stylesheets'
end
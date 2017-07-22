source 'https://rubygems.org'

require 'json'
require 'open-uri'
versions = JSON.parse(open('https://pages.github.com/versions.json').read)

gem 'github-pages', versions['github-pages']

gem 'jekyll'
gem 'sass'
gem 'jekyll-sass-converter'
gem 'nokogiri', '1.6.7'
gem 'jekyll-gist'
gem 'jekyll-redirect-from'
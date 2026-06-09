#!/usr/bin/env ruby
# frozen_string_literal: true

require 'yaml'
require 'fileutils'

ROOT = File.expand_path('..', __dir__)
GAMES_DIR = File.join(ROOT, '_games')
DATA_FILE = File.join(ROOT, '_data', 'games.yml')

def slugify(name)
  name
    .gsub(/&lt;|&gt;/, '')
    .gsub(/[^a-zA-Z0-9\s-]/, '')
    .strip
    .downcase
    .gsub(/\s+/, '-')
    .gsub(/-+/, '-')
end

def normalize_list(value)
  return [] if value.nil? || value == ''

  Array(value).flatten.compact
end

games = YAML.load_file(DATA_FILE)
used_slugs = {}

games.each do |game|
  slug = slugify(game['name'])
  slug = "#{slug}-#{used_slugs[slug]}" if used_slugs.key?(slug)
  used_slugs[slug] = (used_slugs[slug] || 0) + 1

  events = normalize_list(game['events'])
  gm = normalize_list(game['gm'])
  abstract = game['abstract']
  abstract = abstract.strip if abstract.is_a?(String)

  front_matter = {
    'title' => game['name'],
    'events' => events,
  }
  front_matter['gm'] = gm unless gm.empty?

  body = ''
  if abstract.is_a?(String) && !abstract.empty?
    body = if abstract.include?("\n") || abstract.include?('<')
             abstract
           else
             "#{abstract}\n"
           end
  end

  yaml = front_matter.to_yaml.sub(/^---\n/, '')
  content = "---\n#{yaml}---\n\n#{body}"

  path = File.join(GAMES_DIR, "#{slug}.md")
  File.write(path, content)
  puts "Wrote #{path}"
end

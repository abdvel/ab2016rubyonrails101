use Rack::Static,
    :urls => %w(/assets /images /javascripts /stylesheets),
    :root => 'public',
    :index => 'index.html'

run Rack::File.new('public')
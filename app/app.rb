class Base < Padrino::Application
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers

  enable :sessions

  post "/awesome" do
    [
      "http://fc02.deviantart.net/fs48/f/2009/194/2/3/Mr__Awesome_face_lol_XD__D_by_Cookietotheminimum.png",
      "http://fc09.deviantart.net/fs26/f/2008/183/1/e/Awesome_Overload_by_Mr_Stamp.gif",
      "http://fc04.deviantart.net/fs37/f/2008/244/1/5/Awesome_by_Styyn.jpg",
      "http://fc02.deviantart.net/fs28/f/2008/088/6/c/Awesome_by_Foxxie_Chan.png",
      "http://fc03.deviantart.net/fs37/f/2008/285/6/a/Picard__being_awesome__by_0x70616E6461.gif",
      "http://fc07.deviantart.net/fs70/i/2010/139/b/1/Release_the_Awesome_by_Complimentoverload.jpg",
      "http://4.bp.blogspot.com/_qpxM4N6J0LQ/TFre1GeTAvI/AAAAAAAAAXA/eDOq6XiuUbM/s1600/awesome.jpg",
      "http://www.21stcenturyabe.org/wp-content/uploads/2009/03/lincoln_awesome.jpg",
      "http://www.teamawesome.net/awesome.jpg",
      "http://newsimg.ngfiles.com/97000/97703_He_is_THAT_awesome.jpg",
      "http://farm1.static.flickr.com/39/91500993_f01ca66390.jpg",
      "http://jessenoller.com/wp-content/uploads/2010/01/holy-shit-awesome-2.jpg",
      "http://www.whoframedruelfox.com/wfrf/wp-content/uploads/2010/11/Mr__Awesome_by_Known_Prime_by_treehousesociety.jpg",
      "http://wuerzburg90210.files.wordpress.com/2008/10/awesomeness_by_ertunc1.jpg",
      "http://djbogtrotter.co.uk/comics/2009-06-12-Awesome.png",
      "http://cache.gawkerassets.com/assets/images/2010/10/custom_1286555355463_self-esteem-is-awesome.jpg",
      "http://4.bp.blogspot.com/_j6sck65rEmk/SmDeM1vWm_I/AAAAAAAAA5M/1ZnzExiquaU/s320/barney+awesome.jpg",
      "http://www.maniacworld.com/most-awesome-robot.jpg",
      "http://www.bennadel.com/resources/uploads/coldfusion_9_its_like_awesome_to_the_power_of_four.jpg",
      "http://alfredhitzkopf.al.funpic.de/sonstiges/awesomeness.jpg",
      "http://omgunmen.de/wp-content/uploads/2010/07/how-to-be-awesome.jpg",
      "http://knowyourmeme.com/i/288/original/Fucking_awesome_sparta.jpg",
      "http://www.comixconnection.com/uploaded_images/Awesome[1]-775337.jpg",
    ].sample
  end
  
  post "/jack" do
    [
      "http://cl.ly/0v3W451W0H1c2c3M1B1S/121_24jack_bauer1.jpeg",
      "http://geekgirlonthestreet.files.wordpress.com/2010/02/jack-bauer-2.jpg",
      "http://www.dizidizi.net/wp-content/uploads/2009/04/jack_bauer.jpg",
      "http://kkjames.files.wordpress.com/2008/08/jack-bauer.jpg",
      "http://geekgirlonthestreet.files.wordpress.com/2010/02/jack-bauer.jpg"
    ].sample
  end
  
  ##
  # Caching support
  #
  # register Padrino::Cache
  # enable :caching
  #
  # You can customize caching store engines:
  #
  #   set :cache, Padrino::Cache::Store::Memcache.new(::Memcached.new('127.0.0.1:11211', :exception_retry_limit => 1))
  #   set :cache, Padrino::Cache::Store::Memcache.new(::Dalli::Client.new('127.0.0.1:11211', :exception_retry_limit => 1))
  #   set :cache, Padrino::Cache::Store::Redis.new(::Redis.new(:host => '127.0.0.1', :port => 6379, :db => 0))
  #   set :cache, Padrino::Cache::Store::Memory.new(50)
  #   set :cache, Padrino::Cache::Store::File.new(Padrino.root('tmp', app_name.to_s, 'cache')) # default choice
  #

  ##
  # Application configuration options
  #
  # set :raise_errors, true     # Raise exceptions (will stop application) (default for test)
  # set :dump_errors, true      # Exception backtraces are written to STDERR (default for production/development)
  # set :show_exceptions, true  # Shows a stack trace in browser (default for development)
  # set :logging, true          # Logging in STDOUT for development and file for production (default only for development)
  # set :public, "foo/bar"      # Location for static assets (default root/public)
  # set :reload, false          # Reload application files (default in development)
  # set :default_builder, "foo" # Set a custom form builder (default 'StandardFormBuilder')
  # set :locale_path, "bar"     # Set path for I18n translations (default your_app/locales)
  # disable :sessions           # Disabled sessions by default (enable if needed)
  # disable :flash              # Disables rack-flash (enabled by default if Rack::Flash is defined)
  # layout  :my_layout          # Layout can be in views/layouts/foo.ext or views/foo.ext (default :application)
  #

  ##
  # You can configure for a specified environment like:
  #
  #   configure :development do
  #     set :foo, :bar
  #     disable :asset_stamp # no asset timestamping for dev
  #   end
  #

  ##
  # You can manage errors like:
  #
  #   error 404 do
  #     render 'errors/404'
  #   end
  #
  #   error 505 do
  #     render 'errors/505'
  #   end
  #
end
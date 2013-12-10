OmniAuth Appfigures
==============

This gem contains the AppFigures strategy for OmniAuth.

For more information about the AppFigures api: http://docs.appfigures.com/

How To Use It
-------------

If you are using rails, you need to add the gem to your `Gemfile`:

    gem 'omniauth-appfigures'

You can pull them in directly from github e.g.:

    gem "omniauth-appfigures", :git => "git://github.com/triaged/omniauth-appfigures.git"

Once these are in, you need to add the following to your `config/initializers/omniauth.rb`:

    Rails.application.config.middleware.use OmniAuth::Builder do
    	provider :appFigures, 'consumer_key', 'consumer_secret'
    end


You will have to put in your key and secret, which you can get from https://appfigures.com/developers/keys


After you have the gem running and the configuration is done, you can get to the follow url to log the user in:

	http://localhost:3000/auth/appFigures

Now just follow the README at: https://github.com/intridea/omniauth

Questions
---------

For any question, fell free to send me a tweet [@triagedco](http://twitter.com/triagedco)


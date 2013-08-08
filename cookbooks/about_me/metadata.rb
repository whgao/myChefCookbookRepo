name             'about_me'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures about_me'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "rightscale"

# Required #
attribute "about_me/favorite/hobby",
   :display_name => "Hobby",
   :description => "My favorite hobby.",
   :required => "required",
   :recipes => ["about_me::default"]

recipe "about_me::default",
       "Prints my first name and several of my favorite things as output."


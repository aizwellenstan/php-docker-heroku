heroku buildpacks:add heroku/php
heroku buildpacks:set heroku/php
heroku plugins:install heroku-container-tools
heroku container:init
heroku container:release
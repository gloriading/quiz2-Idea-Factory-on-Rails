# GREAT IDEAS by Gloria

> rails new great_idea
> rails db:create
Gemfile and bundle
Added Bootstrap
(on branch idea)
> rails g rspec:install


* welcome controller : home page
> reals g controller welcome --no-assets --no-helper


* idea model and ideas controller : crud
> rails g model idea title description:text
> rails g controller ideas --no-helper --no-assets


* review model and reviews controller: association, create and destroy
> rails g model review body:text idea:references
> rails g controller reviews --no-helper --no-assets

* user model
>rails g model user first_name last_name email password_digest

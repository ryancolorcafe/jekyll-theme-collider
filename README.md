# jekyll-theme-simplicity

This readme is currently under construction, but for now here is a basic guide to installing this theme as a gem:

Add this to your Gemfile:  
`gem "jekyll-theme-simplicity"`

Cd into your directory and run the following commands:  
`rm index.md about.md`

`curl -L -O "https://github.com/ryancolorcafe/jekyll-theme-simplicity/raw/master/index.md"`

`mkdir _blog_posts _blog_tags pages tags`

`cd pages && curl -L -O "https://github.com/ryancolorcafe/jekyll-theme-simplicity/raw/master/pages/{about.html,blog.html,contact.html,thanks.html}"`

`cd ../tags && curl -L -O "https://github.com/ryancolorcafe/jekyll-theme-simplicity/raw/master/tags/{nonprofit.md,painting.md}"`

`cd ../_blog_tags && curl -L -O "https://github.com/ryancolorcafe/jekyll-theme-simplicity/raw/master/_blog_tags/{nonprofit.md,painting.md}"`

While not necessary, you may want some example posts in order to see the use of jekyll-paginate-v2 in action:  
`cd ../_blog_posts && curl -L -O "https://github.com/ryancolorcafe/jekyll-theme-simplicity/raw/master/_blog_posts/{2015-08-15-transition-projects.md,2016-09-30-disjecta.md,2016-10-27-the-nature-conservancy.md,2017-09-27-nice-little-clouds.md,2017-11-10-caldera-arts.md,2018-02-10-the-nature-conservancy.md,2018-07-11-happy-little-trees.md}"`

Don't forget to go back to the root directory `cd ..`

Finally, add the following to config.yml:  
```
theme: jekyll-theme-simplicity

plugins:
  - jekyll-paginate-v2

collections:
  blog_posts:
    output: true
    permalink: /collection/:name
  blog_tags:

pagination:
  enabled: true
  per_page: 3
  permalink: '/:num/'
  title: ':title'
  limit: 0
  sort_field: 'date'
  sort_reverse: true
  collection: 'blog_posts'
  trail:
    before: 2
    after: 2
```

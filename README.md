# jekyll-theme-simplicity

## Installation
**Jekyll requirements**
* You must have Ruby installed:
    * https://www.ruby-lang.org/en/downloads/
* Install Jekyll and Bundler:
    * `gem install jekyll bundler`

**Create a local copy of the site**
* Download this site:
    * `git clone https://github.com/ryancolorcafe/jekyll-theme-simplicity.git`
* Move into directory:
    * `cd jekyll-theme-simplicity`
* Install required gems:
    * `bundle install`
* Verify it's working:
    * `bundle exec jekyll serve`
    * Browse to http://localhost:4000

**Install theme using gem**
* Add this line to your Gemfile:
    * `gem "jekyll-theme-simplicity"`
* Install running this command in your terminal:
    * `bundle install`
* Remove the default index.md and about.md files:
    * `rm index.md about.md`
* Download the index.md file:
    * `curl -L -O "https://github.com/ryancolorcafe/jekyll-theme-simplicity/raw/master/index.md"`
* Create the nec·essary folders:
    * `mkdir _blog_posts _blog_tags pages tags`
* Download pages files:
    * `cd pages && curl -L -O "https://github.com/ryancolorcafe/jekyll-theme-simplicity/raw/master/pages/{about.html,blog.html,contact.html,thanks.html}"`


* While not necessary to download the following, you may want to in order to see an example of the use of tags, and to have enough posts to see the jekyll-paginate-v2 plugin in action. Run each command one at a time:
  * `cd ../tags && curl -L -O "https://github.com/ryancolorcafe/jekyll-theme-simplicity/raw/master/tags/{nonprofit.md,painting.md}"`

  * `cd ../_blog_tags && curl -L -O "https://github.com/ryancolorcafe/jekyll-theme-simplicity/raw/master/_blog_tags/{nonprofit.md,painting.md}"`

  * `cd ../_blog_posts && curl -L -O "https://github.com/ryancolorcafe/jekyll-theme-simplicity/raw/master/_blog_posts/{2015-08-15-transition-projects.md,2016-09-30-disjecta.md,2016-10-27-the-nature-conservancy.md,2017-09-27-nice-little-clouds.md,2017-11-10-caldera-arts.md,2018-02-10-the-nature-conservancy.md,2018-07-11-happy-little-trees.md}"`

* Don't forget to go back to the root directory `cd ..`

* Finally, add the following to config.yml:

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

* Run your server and you should be good to go!  
  * `bundle exec jekyll serve`

**Troubleshooting:**
* The `curl -L -O` commands may not have fully downloaded each file. Even if it seems the file was fully downloaded, open each one to make sure that it doesn't just contain a 503 error inside. Delete the files with errors and retry the curl commands.  
* You may need to restart your server in order for your changes to take effect.

## Site configuration

**Tags:**
To create a new tag, make a new file in the `tags` directory with the name of the tag you'd like to use. The structure of each is the following:

```
---
layout: blog
title: Jekyll
permalink: /jekyll
color: purple
pagination:
  enabled: true
  collection: all
  tag: jekyll
---

All posts tagged with _Jekyll_
```
If you're familiar with Jekyll, most of this will look familiar. The parts unique to this theme are the color and the pagination configurations. The color will determine what the header of the tag page is and is based on SCSS color settings, meaning it's not just the default CSS purple color being used here. More on that in another section.

The pagination settings are necessary to set for the jekyll-pagination-v2 plugin. The only one you'll likely want to ever modify here is the `tag:` setting, where you simply put the tag name you'd like to use in lowercase.

You'll also want to create a new file in the `_blog_tags` directory that is also named after the tag you'd like to use. This is to set the color of the actual tags themselves.
```
---
color: purple
---
```

**More info on the site structure and configuration coming soon...**

# jekyll-theme-simplicity

## About
This theme has two main nifty features, the use of [particles.js](https://vincentgarreau.com/particles.js/) and the [jekyll-paginate-v2 plugin](https://github.com/sverrirs/jekyll-paginate-v2/tree/master/examples). For those who don't know, the jekyll-paginate-v2 plugin allows you to do cool things like paginate within a given collection, which the current jekyll-paginate gem does not allow.

I'm also using the powers of [ITCSS](https://github.com/ahmadajmi/awesome-itcss) and [BEM](http://getbem.com/introduction/) in an attempt to keep the SCSS as clean as possible. You may also notice that I'm trying to avoid the use of any libraries to keep things nice and simple. This also allows for greater learning opportunities.

The font I'm using is a favorite of mine, [Operator Mono SSm](https://www.typography.com/fonts/operator/styles/operatormonoscreensmart). Also notice the fun use of colors on tags and each page, these are easily customizable by design and is detailed below.

Please [contact me](https://www.ryandevelops.com/contact) if you are interested in contributing to this theme or have any ideas for improvement!

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

**Config file:**

Be sure to add your own site title, email, github username, etc. in config.yml.

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
If you're familiar with Jekyll, most of this will look familiar. The parts unique to this theme are the color and the pagination configurations. The color configured here will determine the color of the tag page header and is based on SCSS color settings, meaning it's not just the default CSS purple color being used here. More on that in another section.

The pagination settings are necessary to set for the jekyll-pagination-v2 plugin. The only one you'll likely want to ever modify here is the `tag:` setting, where you simply put the tag name you'd like to use in lowercase.

You'll also want to create a new file in the `_blog_tags` directory that is also named after the tag you'd like to use. This is to set the color of the actual tags themselves, and only the color needs to be set as below:
```
---
color: purple
---
```

**Colors**

If using this theme as a gem, see [overriding theme defaults](https://jekyllrb.com/docs/themes/#overriding-theme-defaults) in the Jekyll docs as you will need to make a copy of the following files.

To set up a new color variable in the SCSS, you may do so in `settings/_color.scss`. To create a new reusable color class that can be used for tag pages and the tags themselves, go to `elements/_colors.scss`. The structure a new color classes should look like the following:

```
.orange {
  color: $channel-orange;
  &.icon {
    fill: $channel-orange;
  }
}

.bg--orange {
  background: $channel-orange;
  color: $white;
}

a.bg--orange:hover {
  background: darken($channel-orange, $darken--button);
}
```

This is what would allow you to simply configure `color: orange` in your `tags` and `_blog_tags` directory files. For an example of what is happening under the hood, you can take a look at the `_includes/header.html` file, lines 1-15.

## Future projects

* Add comments to posts using Disqus  
* A portfolio/work page using CSS Grid  
* Search bar for articles in blog  
* Modular scale typography  

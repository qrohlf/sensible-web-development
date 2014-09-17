---
subtitle: About This Site
summary: How this site is built.
layout: default
index: 12.2
---

If you're curious about the technology behind this website, here's what makes it tick:

## Page Generation & Styling

The site content is built from a collection of [markdown](http://daringfireball.net/projects/markdown/) files into static HTML with a tool called [Jekyll](http://jekyllrb.com). I'm using [Twitter Bootstrap](http://getbootstrap.com) and [SASS](http://sass-lang.com) for styling. The header background images are generated client-side with a JavaScript library that I wrote called [Trianglify](http://qrohlf.com/trianglify/).

## Deployment

This page is deployed Amazon's cloud using [Heroku](https://www.heroku.com). Jekyll generates the site's static files during asset compilation and then I use [Puma](http://puma.io) and Rack::TryStatic to serve the compiled site. I trigger the deployments through a script I wrote called [booyah](https://github.com/qrohlf/dotfiles/blob/master/functions/booyah.sh) to make sure that the Github repo and the depoyed site are both updated at the same time.

## Source

All of the source for this site is available on [GitHub](https://github.com/qrohlf/sensible-web-development), and you can submit corrections and suggestions using the [Issue Tracker](https://github.com/qrohlf/sensible-web-development).

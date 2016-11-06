# Get page DOM

Wrap the given content in the common HTML for each page.


## Library imports

Use [HyperScript](https://github.com/dominictarr/hyperscript) to simplify writing HTML.

	h = require 'hyperscript'

Use [Metah](https://github.com/MattMS/metah) for common HTML tags.
This uses HyperScript for handling the rendering.

	metah = require 'metah'

	meta = metah h


## Google analytics

	google_analytics_js = '''
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
	ga('create', 'UA-28026518-3', 'auto');
	ga('send', 'pageview');
	'''


## Exports

	module.exports = (html_text)->
		h1 = html_text.match /<h1[^>]*>([^<]+)<\/h1>/

		title =
			if h1?
				h1[1]
			else
				'The world'

		article = h 'article.container'

		article.innerHTML = html_text

		h 'html',
			lang: 'en'
		, [
			h 'head', [
				meta.charset()
				meta.author 'Matt McKellar-Spence'
				meta.description 'Thoughts of Matt McKellar-Spence on various topics.'
				meta.viewport()
				meta.title "#{title}, thought by MattMS"
				meta.link_css '/style.css'
			]

			h 'body', [
				article

				h 'footer.container', [
					h 'hr'

					h 'ul', [
						h 'li', [
							h 'a', href: '/', 'Home'
						]

						h 'li', [
							h 'a', href: 'http://about.mattms.info', 'Read about me'
						]

						h 'li', [
							h 'a', href: 'https://github.com/MattMS/thoughts.mattms.info', 'View on GitHub'
						]
					]
				]

				meta.script google_analytics_js
			]
		]

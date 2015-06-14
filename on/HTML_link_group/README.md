# HTML link group

This is an idea for using alternative sources based on availability.
Load a different stylesheet on 404 of the default one.

Set the default stylesheet on a remote CDN:

	<link href="//example.com/default_remote.css" rel="stylesheet" type="text/css">

Add an alternative (local) stylesheet (works in Firefox):

	<link href="//example.com/remote/base.css" rel="stylesheet" type="text/css">
	<link href="./local/base.css" rel="alternate stylesheet" title="Local base" type="text/css">

Group the stylesheets to allow fallbacks on multiple resources:

	<link group="base" href="//example.com/remote/base.css" rel="stylesheet" type="text/css">
	<link group="base" href="./local/base.css" rel="alternate stylesheet" title="Local base" type="text/css">

	<link group="other" href="//example.com/remote/other.css" rel="stylesheet" type="text/css">
	<link group="other" href="./local/other.css" rel="alternate stylesheet" title="Local other" type="text/css">

Alternatively group them within a `group` tag:

	<group>
		<link href="//example.com/remote/base.css" rel="stylesheet" type="text/css">
		<link href="./local/base.css" rel="alternate stylesheet" title="Local base" type="text/css">
	</group>

	<group>
		<link href="//example.com/remote/other.css" rel="stylesheet" type="text/css">
		<link href="./local/other.css" rel="alternate stylesheet" title="Local other" type="text/css">
	</group>

This could be extended to scripts too.

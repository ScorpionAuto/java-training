<%@taglib uri="/WEB-INF/dostarttag.tld" prefix="dev" %>
<html>
<head>
<title>doStartTag() Example</title>
</head>
<body>

	Jsp page content before starting tag.
	<dev:doStart>
		<br><b>contents displayed after the custom tag's
		start tag is encountered.</b>
	</dev:doStart>
	<br>Jsp page content after closing tag.
	
</body>
</html>
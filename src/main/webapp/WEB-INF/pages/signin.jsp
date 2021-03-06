<%--
  User: alexnevsky
  Date: 15.01.14
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
	<meta name="description" content="Facemash. The Social Network. Who's Hotter? Click to Choose."/>
	<meta name="keywords" content="Facemash, Celebrities, Rating"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>Facemash - Sign In</title>
	<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/facemash-main.css" />"/>
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-21698633-1']);
		_gaq.push(['_trackPageview']);
		(function () {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
</head>
<body>
<table cellspacing="0" class="facemash">
	<tr class="facemash">
		<th class="facemash"><a href="<c:url value="/" />" class="facemash">FACEMASH</a></th>
	</tr>
	<tr class="facemash">
		<td class="facemash">
			<p class="firstline">Want to start? It's very easy!</p>

			<p class="seconline">Just enter the link to your Facebook profile!</p>

			<p>
				<img src="<c:url value="/resources/images/fb-profile-link.jpg" />" width="720" border="0"
				     alt="Facemash"
				     align="middle"/>
			</p>

			<form action="<c:url value="/registerFace" />" method="post" name="startGameForm">
				<input type="text" name="facebookUrl" maxlength="200" size="140"
				       placeholder="https://www.facebook.com/zuck - The link to Facebook profile">
				<br /> <br />
				<a href="#" onclick="document.forms['startGameForm'].submit(); return false;">Start Game!</a>
			</form>

			<span style="color:darkred;">&nbsp;&nbsp;<c:out value="${message}" escapeXml="false"/>&nbsp;&nbsp;</span>

			<div class="footer">
				<div class="container">
					<ul>
						<li><a href="<c:url value="/about" />" class="bottom">About</a></li>
						<li><a href="<c:url value="/" />" class="bottom">Facemash</a></li>
						<li><a href="<c:url value="/signin" />" class="bottom">Sign In</a></li>
						<li><a href="<c:url value="/top" />" class="bottom">Top 100</a></li>
						<li><a href="https://www.facebook.com/facemash.service" class="bottom">Facebook</a></li>
						<li>Terms</li>
						<li>Privacy</li>
						<li><a href="<c:url value="/myFace" />" class="bottom">My Face</a></li>
					</ul>
					<p class="copyright"><a href="http://www.alexnevsky.com" class="copyright">an Alex
						Nevsky production</a></p>

					<p class="copyright"><a href="http://www.atenwood.com" class="copyright">Atenwood
						&copy; 2013 &middot; From Russia with Love.</a></p>
				</div>
			</div>
		</td>
	</tr>
</table>
</body>
</html>

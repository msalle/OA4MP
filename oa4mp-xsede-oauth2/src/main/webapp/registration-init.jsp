<%--
  User: Jeff Gaynor
  Date: May 27, 2011
  Time: 10:36:41 AM
  Properties included:
     field names:
        * clientName
        * clientEmail
        * clientHomeUrl
        * clientErrorUrl
        * clientPublicKey
        * action
        * request
     Control flow:
        * actionToTake = url to invoke on submitting this form
        * action = name of hidden field containing the request property
        * request = contents of field with the state of this
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>XSEDE OAuth 2.0 OpenID Connect Client Regitration Request</title>
    <link rel="stylesheet" type="text/css" media="all" href="xup.css"/>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
</head>
<body>
<div id="topimgfill">
    <div id="topimg"></div>
</div>
<br clear="all"/>

<div class="floatleftbox">
    <form action="${actionToTake}" method="post">
        <div class="boxheader">Welcome to the XSEDE OpenID Connect Client Regitration Request Form</div>

        <div class="authbox">
            This page allows you to register your gateway/client with the XSEDE OAuth for MyProxy service
            for authentication of a user and delegation of a user certificate using OAuth 2.0 OIDC (OpenID Connect). To get your gateway/client approved for authentication and delegation
            please fill out the form below. Your request will be evaluated for approval. For more information,
            please make sure you read the
            <a href="http://grid.ncsa.illinois.edu/myproxy/oauth/client/manuals/registering-with-an-oauth2-server.xhtml"
               target="_blank">Gateway/Client Registration Document</a>.
            <p>
            <table>
                <tr>
                    <td>Gateway/Client Name:</td>
                    <td><input type="text" size="25" name="${clientName}"/></td>
                </tr>
                <tr>
                    <td>Contact email:</td>
                    <td><input type="text" size="25" name="${clientEmail}"/></td>
                </tr>
                <tr>
                    <td>Home URL:</td>
                    <td><input type="text" size="25" name="${clientHomeUrl}"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="checkbox" name="${clientProxyLimited}" value="true"/><span
                            title="Check this box for delegation of limited proxy certificates for use with Globus Toolkit GridFTP servers. Leave this box unchecked for delegation of general-use X.509 certificates.">Use Limited Proxy Certificates?</span>
                    </td>
                </tr>
                <tr>
                    <td>Callback URLs:</td>
                    <td>
                        <textarea id="${callbackURI}" rows="10" cols="80"
                          name="${callbackURI}">${callbackURIValue}</textarea>

                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="submit"/></td>
                </tr>
            </table>
            <input type="hidden" id="status" name="${action}"
                   value="${request}"/>
        </div>
    </form>


    <div class="footer">Please send any questions or comments about this site to
        <a href="mailto:help@xsede.org">help@xsede.org</a>.
    </div>

</div>

</body>
</html>

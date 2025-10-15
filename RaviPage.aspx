<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RaviPage.aspx.cs" Inherits="IREL.RaviPage" %>


<!DOCTYPE html>
<html lang="en" dir="ltr" class="no-js">
<head>

    <meta charset="utf-8">
    <!-- 
	Made with love by Crealistiques and Ursula Brandt from Kisters.

	This website is powered by TYPO3 - inspiring people to share!
	TYPO3 is a free open source Content Management Framework initially created by Kasper Skaarhoj and licensed under GNU/GPL.
	TYPO3 is copyright 1998-2022 of Kasper Skaarhoj. Extensions are copyright of their respective owners.
	Information and contribution at https://typo3.org/
-->


    <%--<link rel="shortcut icon" href="/typo3conf/ext/kisters/Resources/Public/Icons/FavIcons/favicon.ico" type="image/vnd.microsoft.icon">--%>

    <meta name="generator" content="TYPO3 CMS">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="index,follow">
    <meta name="google" content="notranslate">
    <meta name="apple-mobile-web-app-capable" content="no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="msvalidate.01" content="22FD68B21E195ACA4A06C40159D74EDC">
    <meta name="google-site-verification" content="1abFLT9db4j2j2Dr8mZ1leUQpfgAxrj7rtY3SQZMlbo">
    <%--    <meta property="og:title" content="KISTERS">
    <meta property="og:site_name" content="KISTERS AG">--%>
    <link rel="stylesheet" type="text/css" href="App_Themes/Ravi1.css" media="all">
    <script src="JS/Ravi1.js" type="text/javascript"></script>
    <script type="text/javascript">
        /*<![CDATA[*/
        /*_scriptCode*/

        // decrypt helper function
        function decryptCharcode(n, start, end, offset) {
            n = n + offset;
            if (offset > 0 && n > end) {
                n = start + (n - end - 1);
            } else if (offset < 0 && n < start) {
                n = end - (start - n - 1);
            }
            return String.fromCharCode(n);
        }
        // decrypt string
        function decryptString(enc, offset) {
            var dec = "";
            var len = enc.length;
            for (var i = 0; i < len; i++) {
                var n = enc.charCodeAt(i);
                if (n >= 0x2B && n <= 0x3A) {
                    dec += decryptCharcode(n, 0x2B, 0x3A, offset);	// 0-9 . , - + / :
                } else if (n >= 0x40 && n <= 0x5A) {
                    dec += decryptCharcode(n, 0x40, 0x5A, offset);	// A-Z @
                } else if (n >= 0x61 && n <= 0x7A) {
                    dec += decryptCharcode(n, 0x61, 0x7A, offset);	// a-z
                } else {
                    dec += enc.charAt(i);
                }
            }
            return dec;
        }
        // decrypt spam-protected emails
        function linkTo_UnCryptMailto(s) {
            location.href = decryptString(s, 3);
        }


        /*]]>*/
    </script>
    <style>
        .bg-image {
            background-repeat: no-repeat;
            background-size: cover;
            background-position: 50%;
        }

        .lazyloaded {
            opacity: 1;
        }
    </style>
    <%--link rel="alternate" hreflang="de" href="https://www.kisters.de/" />
    <link rel="alternate" hreflang="en" href="https://www.kisters.de/en/" />
    <link rel="alternate" hreflang="es" href="https://www.kisters.de/es/" />
    <link rel="alternate" hreflang="fr" href="https://www.kisters.de/fr/" />
    <link rel="apple-touch-icon" sizes="180x180" href="/typo3conf/ext/kisters/Resources/Public/Icons/FavIcons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/typo3conf/ext/kisters/Resources/Public/Icons/FavIcons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/typo3conf/ext/kisters/Resources/Public/Icons/FavIcons/favicon-16x16.png">
    <link rel="manifest" href="/typo3conf/ext/kisters/Resources/Public/Icons/FavIcons/manifest.json">
    <link rel="mask-icon" href="/typo3conf/ext/kisters/Resources/Public/Icons/FavIcons/safari-pinned-tab.svg" color="#00aba9">--%>
    <meta name="msapplication-config" content="/typo3conf/ext/kisters/Resources/Public/Icons/FavIcons/browserconfig.xml">
    <meta name="theme-color" content="#00aba9">
    <title>Esoft - Esoft AG</title>
    <meta name="title" content="Esoft - Esoft AG" />
    <meta name="date" content="2022-06-08" />
    <%--<link rel="canonical" href="https://www.kisters.de/en/" />--%>
    <%--<script id="cookieOptinData" type="application/json">{"cookieGroups":[{"groupName":"essential","label":"Essential","description":"Essential cookies are required for basic functions of the website. This ensures that the website functions properly.","required":true,"cookieData":[{"Name":"fe_typo_user","Provider":"TYPO3","Purpose":"This cookie is a standard session cookie from TYPO3. It stores the session ID in case of a user login. In this way, the logged-in user can be recognised and access to protected areas is granted.","Lifetime":"1 week","index":0,"crdate":1643459152,"tstamp":1648629850,"pseudo":false},{"Name":"cookie_optin","Provider":"TYPO3","Purpose":"Stores the chosen tracking optin settings.","Lifetime":"1 month","index":1,"crdate":1643459152,"tstamp":1648629850,"pseudo":false},{"Name":"__cfduid","Provider":"CloudFlare","Purpose":"Cookie associated with sites using CloudFlare, used to speed up page load times. According to CloudFlare it is used to override any security restrictions based on the IP address the visitor is coming from. It does not contain any user identification information.","Lifetime":"1 month","index":2,"crdate":1643459152,"tstamp":1648629850,"pseudo":false},{"Name":"creSelectedLanguage","Provider":"TYPO3","Purpose":"Cookie stores the language version of the website explicitly selected via the language selection menu.","Lifetime":"1 year","index":3,"crdate":1643459152,"tstamp":1648629850,"pseudo":false}],"scriptData":[],"loadingHTML":"","loadingJavaScript":""},{"groupName":"analytics","label":"Analytics & Performance","description":"This group includes all scripts for analytical tracking and associated cookies. It helps us to improve the user experience of our website to improve your handling of our website.","required":false,"cookieData":[{"Name":"_ga","Provider":"Google Analytics","Purpose":"This cookie is installed by Google Analytics. The cookie is used to calculate visitor, session and campaign data and to track website usage for the website analysis report. Cookies store information anonymously and assign a randomly generated number to identify unique visitors.","Lifetime":"2 years","index":0,"crdate":1643459152,"tstamp":1648629850,"pseudo":false},{"Name":"_gid","Provider":"Google Analytics","Purpose":"This cookie is installed by Google Analytics. The cookie is used to store information about how visitors use a website and to help us compile an analysis report on how the website is performing. The information collected includes the number of visitors, the source from which it originates, and the pages in anonymous form.","Lifetime":"1 day","index":1,"crdate":1643459152,"tstamp":1648629850,"pseudo":false},{"Name":"_gat","Provider":"Google Universal Analytics","Purpose":"These cookies are installed by Google Universal Analytics in order to reduce the request rate and limit data collection on websites with high data traffic.","Lifetime":"1 minute","index":2,"crdate":1643459152,"tstamp":1648629850,"pseudo":false},{"Name":"_gat_UA-XYZ","Provider":"Google Analytics","Purpose":"This is a pattern type cookie set by Google Analytics in which the pattern element in the name contains the unique identity number of the account or website to which it relates. It appears to be a variation of the _gat cookie that is used to limit the amount of data Google records on high-traffic websites.","Lifetime":"1 minute","index":3,"crdate":1643459152,"tstamp":1648629850,"pseudo":false}],"scriptData":[{"title":"Google Tag Manager","script":"document.TagManagerLoaded = document.TagManagerLoaded || 0;\r\nif (!document.TagManagerLoaded) {\r\n  document.TagManagerLoaded = 1;\r\n  (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0], j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='\/\/www.googletagmanager.com\/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-W3QZXPD');\r\n}","html":"","index":0}],"loadingHTML":"","loadingJavaScript":"\/fileadmin\/sg_cookie_optin\/siteroot-1\/analytics-1.js","crdate":1643459152,"tstamp":1648629850},{"groupName":"iframes","label":"External Content","description":"We use external content on our website to offer you additional information. By allowing external content you agree connecting to servers of third parties where your IP address becomes known and maybe logged. Though no cookies might be set, you may be tracked by a technique called browser fingerprinting.","required":false,"cookieData":[]}],"cssData":{"color_box":"#FFFFFF","color_headline":"#373737","color_text":"#373737","color_confirmation_background":"#C9FFC9","color_confirmation_text":"#208A20","color_checkbox":"#143D59","color_checkbox_required":"#A5A5A5","color_button_all":"#143D59","color_button_all_hover":"#2E6B96","color_button_all_text":"#FFFFFF","color_button_specific":"#A5A5A5","color_button_specific_hover":"#D7D7D7","color_button_specific_text":"#FFFFFF","color_button_essential":"#A5A5A5","color_button_essential_hover":"#D7D7D7","color_button_essential_text":"#FFFFFF","color_button_close":"#FFFFFF","color_button_close_hover":"#FFFFFF","color_button_close_text":"#373737","color_list":"#A5A5A5","color_list_text":"#FFFFFF","color_table":"#FFFFFF","color_Table_data_text":"#373737","color_table_header":"#F3F3F3","color_table_header_text":"#373737","color_full_box":"#143D59","color_full_headline":"#FFFFFF","color_full_text":"#FFFFFF","color_full_button_close":"#143D59","color_full_button_close_hover":"#143D59","color_full_button_close_text":"#FFFFFF","iframe_color_consent_box_background":"#D6D6D6","iframe_color_button_load_one":"#143D59","iframe_color_button_load_one_hover":"#2E6B96","iframe_color_button_load_one_text":"#FFFFFF","iframe_color_open_settings":"#373737","banner_color_box":"#DDDDDD","banner_color_text":"#373737","banner_color_link_text":"#373737","banner_color_button_settings":"#A5A5A5","banner_color_button_settings_hover":"#D7D7D7","banner_color_button_settings_text":"#FFFFFF","banner_color_button_accept":"#143D59","banner_color_button_accept_hover":"#2E6B96","banner_color_button_accept_text":"#FFFFFF"},"footerLinks":[],"iFrameGroup":{"groupName":"iframes","label":"External Content","description":"We use external content on our website to offer you additional information. By allowing external content you agree connecting to servers of third parties where your IP address becomes known and maybe logged. Though no cookies might be set, you may be tracked by a technique called browser fingerprinting.","required":false,"cookieData":[]},"settings":{"banner_enable":false,"banner_force_min_width":0,"version":1,"banner_position":0,"banner_show_settings_button":true,"cookie_lifetime":365,"session_only_essential_cookies":false,"iframe_enabled":true,"minify_generated_data":true,"show_button_close":true,"activate_testing_mode":false,"disable_powered_by":false,"disable_for_this_language":false,"set_cookie_for_domain":"kisters.de","save_history_webhook":"\/?eID=sg_cookie_optin_saveOptinHistory","cookiebanner_whitelist_regex":"","banner_show_again_interval":14,"identifier":1,"render_assets_inline":0,"consider_do_not_track":0},"textEntries":{"header":"Privacy settings","description":"Cookies are used on our website. Some of them are mandatory, while others allow us to improve your user experience on our website.","accept_all_text":"Accept All","accept_specific_text":"Save & Close","accept_essential_text":"Accept only essential cookies","extend_box_link_text":"Show further information","extend_box_link_text_close":"Hide further information","extend_table_link_text":"Show cookie information","extend_table_link_text_close":"Hide cookie information","cookie_name_text":"Name","cookie_provider_text":"Provider","cookie_purpose_text":"Purpose","cookie_lifetime_text":"Lifetime","iframe_button_allow_all_text":"Allow all external content","iframe_button_allow_one_text":"Allow once","iframe_button_reject_text":"Do not allow","iframe_button_load_one_text":"Load external content","iframe_open_settings_text":"Show settings","iframe_button_load_one_description":"","banner_button_accept_text":"Akzeptieren","banner_button_settings_text":"Einstellungen","banner_description":"Auf unserer Webseite werden Cookies verwendet. Einige davon werden zwingend ben\u00f6tigt, w\u00e4hrend es uns andere erm\u00f6glichen, Ihre Nutzererfahrung auf unserer Webseite zu verbessern.","save_confirmation_text":"Cookie settings saved successfully","user_hash_text":"User-Hash"},"placeholders":{"iframe_consent_description":"<p class=\"sg-cookie-optin-box-flash-message\"><\/p>"},"mustacheData":{"template":{"template_html":"<!--googleoff: index-->\n<div class=\"sg-cookie-optin-box\">\n\t{{#settings.show_button_close}}\n\t\t<span class=\"sg-cookie-optin-box-close-button\">\u2715<\/span>\n\t{{\/settings.show_button_close}}\n\n\t<strong class=\"sg-cookie-optin-box-header\">{{{textEntries.header}}}<\/strong>\n\t<p class=\"sg-cookie-optin-box-description\">{{{textEntries.description}}}<\/p>\n\n\t<ul class=\"sg-cookie-optin-box-cookie-list\">\n\t\t{{#cookieGroups}}\n\t\t\t<li class=\"sg-cookie-optin-box-cookie-list-item\">\n\t\t\t\t<label >\n\t\t\t\t\t<input tabindex=\"1\" class=\"sg-cookie-optin-checkbox\"\n\t\t\t\t\t   type=\"checkbox\"\n\t\t\t\t\t   name=\"cookies[]\"\n\t\t\t\t\t   value=\"{{groupName}}\"\n\t\t\t\t\t   {{#required}}checked=\"1\"{{\/required}}\n\t\t\t\t\t   {{#required}}disabled=\"1\"{{\/required}}>\n\t\t\t\t\t<span class=\"sg-cookie-optin-checkbox-label\">{{{label}}}<\/span>\n\t\t\t\t<\/label>\n\t\t\t<\/li>\n\t\t{{\/cookieGroups}}\n\t<\/ul>\n\n\t<div class=\"sg-cookie-optin-box-button\">\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-all\">{{{textEntries.accept_all_text}}}<\/button>\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-specific\">{{{textEntries.accept_specific_text}}}<\/button>\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-essential\">{{{textEntries.accept_essential_text}}}<\/button>\n\t<\/div>\n\n\t<ul class=\"sg-cookie-optin-box-cookie-detail-list\">\n\t\t{{#cookieGroups}}\n\t\t\t<li class=\"sg-cookie-optin-box-cookie-detail-list-item\">\n\t\t\t\t<strong class=\"sg-cookie-optin-box-cookie-detail-header\">{{{label}}}<\/strong>\n\t\t\t\t<p class=\"sg-cookie-optin-box-cookie-detail-description\">{{{description}}}<\/p>\n\n\t\t\t\t<div class=\"sg-cookie-optin-box-cookie-detail-sublist\">\n\t\t\t\t\t<table>\n\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t\t{{#cookieData}}\n\t\t\t\t\t\t\t\t{{^pseudo}}\n\t\t\t\t\t\t\t\t\t{{#index}}<tr class=\"divider\"><td colspan=\"2\">&nbsp;<\/td><\/tr>{{\/index}}\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>{{{textEntries.cookie_name_text}}}<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>{{{Name}}}<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>{{{textEntries.cookie_provider_text}}}<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>{{{Provider}}}<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>{{{textEntries.cookie_lifetime_text}}}<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>{{{Lifetime}}}<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>{{{textEntries.cookie_purpose_text}}}<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">{{{Purpose}}}<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t{{\/pseudo}}\n\t\t\t\t\t\t\t{{\/cookieData}}\n\t\t\t\t\t\t<\/tbody>\n\t\t\t\t\t<\/table>\n\t\t\t\t<\/div>\n\n\t\t\t\t{{#cookieData}}\n\t\t\t\t\t{{^index}}<a tabindex=\"1\" class=\"sg-cookie-optin-box-sublist-open-more-link\" href=\"#\">{{{textEntries.extend_table_link_text}}}<\/a>{{\/index}}\n\t\t\t\t{{\/cookieData}}\n\t\t\t<\/li>\n\t\t{{\/cookieGroups}}\n\t<\/ul>\n\n\t<div class=\"sg-cookie-optin-box-open-more\">\n\t\t<a class=\"sg-cookie-optin-box-open-more-link\" href=\"#\">{{{textEntries.extend_box_link_text}}}<\/a>\n\t<\/div>\n\n\t<div class=\"sg-cookie-optin-box-footer\">\n\t\t<div class=\"sg-cookie-optin-box-copyright\">\n\t\t\t<a tabindex=\"1\" class=\"sg-cookie-optin-box-copyright-link{{#settings.disable_powered_by}} sg-cookie-optin-box-copyright-link-hidden{{\/settings.disable_powered_by}}\"\n\t\t\t   href=\"https:\/\/www.sgalinski.de\/typo3-produkte-webentwicklung\/sgalinski-cookie-optin\/\"\n\t\t\t   rel=\"noopener\"\n\t\t\t   target=\"_blank\">\n\t\t\t\tPowered by<br>sgalinski Cookie Opt In\n\t\t\t<\/a>\n\t\t<\/div>\n\n\t\t<div class=\"sg-cookie-optin-box-footer-links\">\n\t\t\t{{#footerLinks}}\n\t\t\t\t{{#index}}\n\t\t\t\t\t<span class=\"sg-cookie-optin-box-footer-divider\"> | <\/span>\n\t\t\t\t{{\/index}}\n\n\t\t\t\t<a tabindex=\"1\" class=\"sg-cookie-optin-box-footer-link\" href=\"{{url}}\" target=\"_blank\">{{{name}}}<\/a>\n\t\t\t{{\/footerLinks}}\n\t\t<\/div>\n\n\t\t<div class=\"sg-cookie-optin-box-footer-user-hash-container\">\n\t\t\t{{{textEntries.user_hash_text}}}: <span class=\"sg-cookie-optin-box-footer-user-hash\"><\/span>\n\t\t<\/div>\n\t<\/div>\n<\/div>\n<!--googleon: index-->\n","template_overwritten":0,"template_selection":0,"markup":"<!--googleoff: index-->\n<div class=\"sg-cookie-optin-box\">\n\t\t<span class=\"sg-cookie-optin-box-close-button\">\u2715<\/span>\n\n\t<strong class=\"sg-cookie-optin-box-header\">Privacy settings<\/strong>\n\t<p class=\"sg-cookie-optin-box-description\">Cookies are used on our website. Some of them are mandatory, while others allow us to improve your user experience on our website.<\/p>\n\n\t<ul class=\"sg-cookie-optin-box-cookie-list\">\n\t\t\t<li class=\"sg-cookie-optin-box-cookie-list-item\">\n\t\t\t\t<label >\n\t\t\t\t\t<input tabindex=\"1\" class=\"sg-cookie-optin-checkbox\"\n\t\t\t\t\t   type=\"checkbox\"\n\t\t\t\t\t   name=\"cookies[]\"\n\t\t\t\t\t   value=\"essential\"\n\t\t\t\t\t   checked=\"1\"\n\t\t\t\t\t   disabled=\"1\">\n\t\t\t\t\t<span class=\"sg-cookie-optin-checkbox-label\">Essential<\/span>\n\t\t\t\t<\/label>\n\t\t\t<\/li>\n\t\t\t<li class=\"sg-cookie-optin-box-cookie-list-item\">\n\t\t\t\t<label >\n\t\t\t\t\t<input tabindex=\"1\" class=\"sg-cookie-optin-checkbox\"\n\t\t\t\t\t   type=\"checkbox\"\n\t\t\t\t\t   name=\"cookies[]\"\n\t\t\t\t\t   value=\"analytics\"\n\t\t\t\t\t   \n\t\t\t\t\t   >\n\t\t\t\t\t<span class=\"sg-cookie-optin-checkbox-label\">Analytics & Performance<\/span>\n\t\t\t\t<\/label>\n\t\t\t<\/li>\n\t\t\t<li class=\"sg-cookie-optin-box-cookie-list-item\">\n\t\t\t\t<label >\n\t\t\t\t\t<input tabindex=\"1\" class=\"sg-cookie-optin-checkbox\"\n\t\t\t\t\t   type=\"checkbox\"\n\t\t\t\t\t   name=\"cookies[]\"\n\t\t\t\t\t   value=\"iframes\"\n\t\t\t\t\t   \n\t\t\t\t\t   >\n\t\t\t\t\t<span class=\"sg-cookie-optin-checkbox-label\">External Content<\/span>\n\t\t\t\t<\/label>\n\t\t\t<\/li>\n\t<\/ul>\n\n\t<div class=\"sg-cookie-optin-box-button\">\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-all\">Accept All<\/button>\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-specific\">Save & Close<\/button>\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-essential\">Accept only essential cookies<\/button>\n\t<\/div>\n\n\t<ul class=\"sg-cookie-optin-box-cookie-detail-list\">\n\t\t\t<li class=\"sg-cookie-optin-box-cookie-detail-list-item\">\n\t\t\t\t<strong class=\"sg-cookie-optin-box-cookie-detail-header\">Essential<\/strong>\n\t\t\t\t<p class=\"sg-cookie-optin-box-cookie-detail-description\">Essential cookies are required for basic functions of the website. This ensures that the website functions properly.<\/p>\n\n\t\t\t\t<div class=\"sg-cookie-optin-box-cookie-detail-sublist\">\n\t\t\t\t\t<table>\n\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Name<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>fe_typo_user<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Provider<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>TYPO3<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Lifetime<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>1 week<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Purpose<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">This cookie is a standard session cookie from TYPO3. It stores the session ID in case of a user login. In this way, the logged-in user can be recognised and access to protected areas is granted.<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr class=\"divider\"><td colspan=\"2\">&nbsp;<\/td><\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Name<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>cookie_optin<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Provider<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>TYPO3<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Lifetime<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>1 month<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Purpose<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">Stores the chosen tracking optin settings.<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr class=\"divider\"><td colspan=\"2\">&nbsp;<\/td><\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Name<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>__cfduid<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Provider<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>CloudFlare<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Lifetime<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>1 month<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Purpose<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">Cookie associated with sites using CloudFlare, used to speed up page load times. According to CloudFlare it is used to override any security restrictions based on the IP address the visitor is coming from. It does not contain any user identification information.<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr class=\"divider\"><td colspan=\"2\">&nbsp;<\/td><\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Name<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>creSelectedLanguage<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Provider<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>TYPO3<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Lifetime<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>1 year<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Purpose<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">Cookie stores the language version of the website explicitly selected via the language selection menu.<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t<\/tbody>\n\t\t\t\t\t<\/table>\n\t\t\t\t<\/div>\n\n\t\t\t\t\t<a tabindex=\"1\" class=\"sg-cookie-optin-box-sublist-open-more-link\" href=\"#\">Show cookie information<\/a>\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t<\/li>\n\t\t\t<li class=\"sg-cookie-optin-box-cookie-detail-list-item\">\n\t\t\t\t<strong class=\"sg-cookie-optin-box-cookie-detail-header\">Analytics & Performance<\/strong>\n\t\t\t\t<p class=\"sg-cookie-optin-box-cookie-detail-description\">This group includes all scripts for analytical tracking and associated cookies. It helps us to improve the user experience of our website to improve your handling of our website.<\/p>\n\n\t\t\t\t<div class=\"sg-cookie-optin-box-cookie-detail-sublist\">\n\t\t\t\t\t<table>\n\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Name<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>_ga<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Provider<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>Google Analytics<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Lifetime<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>2 years<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Purpose<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">This cookie is installed by Google Analytics. The cookie is used to calculate visitor, session and campaign data and to track website usage for the website analysis report. Cookies store information anonymously and assign a randomly generated number to identify unique visitors.<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr class=\"divider\"><td colspan=\"2\">&nbsp;<\/td><\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Name<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>_gid<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Provider<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>Google Analytics<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Lifetime<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>1 day<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Purpose<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">This cookie is installed by Google Analytics. The cookie is used to store information about how visitors use a website and to help us compile an analysis report on how the website is performing. The information collected includes the number of visitors, the source from which it originates, and the pages in anonymous form.<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr class=\"divider\"><td colspan=\"2\">&nbsp;<\/td><\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Name<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>_gat<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Provider<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>Google Universal Analytics<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Lifetime<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>1 minute<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Purpose<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">These cookies are installed by Google Universal Analytics in order to reduce the request rate and limit data collection on websites with high data traffic.<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr class=\"divider\"><td colspan=\"2\">&nbsp;<\/td><\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Name<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>_gat_UA-XYZ<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Provider<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>Google Analytics<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Lifetime<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>1 minute<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Purpose<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">This is a pattern type cookie set by Google Analytics in which the pattern element in the name contains the unique identity number of the account or website to which it relates. It appears to be a variation of the _gat cookie that is used to limit the amount of data Google records on high-traffic websites.<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t<\/tbody>\n\t\t\t\t\t<\/table>\n\t\t\t\t<\/div>\n\n\t\t\t\t\t<a tabindex=\"1\" class=\"sg-cookie-optin-box-sublist-open-more-link\" href=\"#\">Show cookie information<\/a>\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t<\/li>\n\t\t\t<li class=\"sg-cookie-optin-box-cookie-detail-list-item\">\n\t\t\t\t<strong class=\"sg-cookie-optin-box-cookie-detail-header\">External Content<\/strong>\n\t\t\t\t<p class=\"sg-cookie-optin-box-cookie-detail-description\">We use external content on our website to offer you additional information. By allowing external content you agree connecting to servers of third parties where your IP address becomes known and maybe logged. Though no cookies might be set, you may be tracked by a technique called browser fingerprinting.<\/p>\n\n\t\t\t\t<div class=\"sg-cookie-optin-box-cookie-detail-sublist\">\n\t\t\t\t\t<table>\n\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t<\/tbody>\n\t\t\t\t\t<\/table>\n\t\t\t\t<\/div>\n\n\t\t\t<\/li>\n\t<\/ul>\n\n\t<div class=\"sg-cookie-optin-box-open-more\">\n\t\t<a class=\"sg-cookie-optin-box-open-more-link\" href=\"#\">Show further information<\/a>\n\t<\/div>\n\n\t<div class=\"sg-cookie-optin-box-footer\">\n\t\t<div class=\"sg-cookie-optin-box-copyright\">\n\t\t\t<a tabindex=\"1\" class=\"sg-cookie-optin-box-copyright-link\"\n\t\t\t   href=\"https:\/\/www.sgalinski.de\/typo3-produkte-webentwicklung\/sgalinski-cookie-optin\/\"\n\t\t\t   rel=\"noopener\"\n\t\t\t   target=\"_blank\">\n\t\t\t\tPowered by<br>sgalinski Cookie Opt In\n\t\t\t<\/a>\n\t\t<\/div>\n\n\t\t<div class=\"sg-cookie-optin-box-footer-links\">\n\t\t<\/div>\n\n\t\t<div class=\"sg-cookie-optin-box-footer-user-hash-container\">\n\t\t\tUser-Hash: <span class=\"sg-cookie-optin-box-footer-user-hash\"><\/span>\n\t\t<\/div>\n\t<\/div>\n<\/div>\n<!--googleon: index-->\n"},"banner":{"banner_html":"<div class=\"sg-cookie-optin-banner {{^settings.banner_position}}sg-cookie-optin-banner-bottom{{\/settings.banner_position}}\">\n\t<div class=\"sg-cookie-optin-box\">\n\t\t<div class=\"sg-cookie-optin-banner-content\">\n\t\t\t<p class=\"sg-cookie-optin-banner-description\">\n\t\t\t\t{{{textEntries.banner_description}}}\n\n\t\t\t\t{{#footerLinks}}\n\t\t\t\t\t{{#index}}\n\t\t\t\t\t\t(\n\t\t\t\t\t{{\/index}}\n\t\t\t\t{{\/footerLinks}}\n\n\t\t\t\t{{#footerLinks}}\n\t\t\t\t\t{{#index}}\n\t\t\t\t\t\t<span class=\"sg-cookie-optin-box-footer-divider\"> | <\/span>\n\t\t\t\t\t{{\/index}}\n\n\t\t\t\t\t<a class=\"sg-cookie-optin-box-footer-link\" href=\"{{url}}\" target=\"_blank\">{{{name}}}<\/a>\n\t\t\t\t{{\/footerLinks}}\n\n\t\t\t\t{{#footerLinks}}\n\t\t\t\t\t{{#index}}\n\t\t\t\t\t\t)\n\t\t\t\t\t{{\/index}}\n\t\t\t\t{{\/footerLinks}}\n\t\t\t<\/p>\n\n\t\t\t<div class=\"sg-cookie-optin-banner-button\">\n\t\t\t\t{{#settings.banner_show_settings_button}}\n\t\t\t\t\t<button class=\"sg-cookie-optin-banner-button-settings\">{{{textEntries.banner_button_settings_text}}}<\/button>\n\t\t\t\t{{\/settings.banner_show_settings_button}}\n\n\t\t\t\t<button class=\"sg-cookie-optin-banner-button-accept\">{{{textEntries.banner_button_accept_text}}}<\/button>\n\t\t\t<\/div>\n\t\t<\/div>\n\t<\/div>\n<\/div>\n","banner_overwritten":0,"banner_selection":0,"markup":"<div class=\"sg-cookie-optin-banner sg-cookie-optin-banner-bottom\">\n\t<div class=\"sg-cookie-optin-box\">\n\t\t<div class=\"sg-cookie-optin-banner-content\">\n\t\t\t<p class=\"sg-cookie-optin-banner-description\">\n\t\t\t\tAuf unserer Webseite werden Cookies verwendet. Einige davon werden zwingend ben\u00f6tigt, w\u00e4hrend es uns andere erm\u00f6glichen, Ihre Nutzererfahrung auf unserer Webseite zu verbessern.\n\n\n\n\t\t\t<\/p>\n\n\t\t\t<div class=\"sg-cookie-optin-banner-button\">\n\t\t\t\t\t<button class=\"sg-cookie-optin-banner-button-settings\">Einstellungen<\/button>\n\n\t\t\t\t<button class=\"sg-cookie-optin-banner-button-accept\">Akzeptieren<\/button>\n\t\t\t<\/div>\n\t\t<\/div>\n\t<\/div>\n<\/div>\n"},"iframe":{"iframe_html":"<div class=\"sg-cookie-optin-box\">\n\t{{#settings.show_button_close}}\n\t\t<span class=\"sg-cookie-optin-box-close-button\">\u2715<\/span>\n\t{{\/settings.show_button_close}}\n\n\t<strong class=\"sg-cookie-optin-box-header\">{{{iFrameGroup.label}}}<\/strong>\n\t<p class=\"sg-cookie-optin-box-description\">{{{iFrameGroup.description}}}<\/p>\n\n\t<div class=\"sg-cookie-optin-box-button\">\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-all\">{{{textEntries.iframe_button_allow_all_text}}}<\/button>\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-specific\">{{{textEntries.iframe_button_allow_one_text}}}<\/button>\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-iframe-reject\">{{{textEntries.iframe_button_reject_text}}}<\/button>\n\t<\/div>\n\n\t{{{placeholders.iframe_consent_description}}}\n\n\t<div class=\"sg-cookie-optin-box-footer\">\n\t\t<div class=\"sg-cookie-optin-box-copyright\">\n\t\t\t<a tabindex=\"1\" class=\"sg-cookie-optin-box-copyright-link{{#settings.disable_powered_by}} sg-cookie-optin-box-copyright-link-hidden{{\/settings.disable_powered_by}}\"\n\t\t\t   href=\"https:\/\/www.sgalinski.de\/typo3-produkte-webentwicklung\/sgalinski-cookie-optin\/\"\n\t\t\t   rel=\"noopener\"\n\t\t\t   target=\"_blank\">\n\t\t\t\tPowered by<br>sgalinski Cookie Opt In\n\t\t\t<\/a>\n\t\t<\/div>\n\n\t\t<div class=\"sg-cookie-optin-box-footer-links\">\n\t\t\t{{#footerLinks}}\n\t\t\t{{#index}}\n\t\t\t<span class=\"sg-cookie-optin-box-footer-divider\"> | <\/span>\n\t\t\t{{\/index}}\n\t\t\t<a tabindex=\"1\" class=\"sg-cookie-optin-box-footer-link\" href=\"{{url}}\" target=\"_blank\">{{{name}}}<\/a>\n\t\t\t{{\/footerLinks}}\n\t\t<\/div>\n\t<\/div>\n<\/div>\n","iframe_overwritten":0,"iframe_selection":0,"markup":"<div class=\"sg-cookie-optin-box\">\n\t\t<span class=\"sg-cookie-optin-box-close-button\">\u2715<\/span>\n\n\t<strong class=\"sg-cookie-optin-box-header\">External Content<\/strong>\n\t<p class=\"sg-cookie-optin-box-description\">We use external content on our website to offer you additional information. By allowing external content you agree connecting to servers of third parties where your IP address becomes known and maybe logged. Though no cookies might be set, you may be tracked by a technique called browser fingerprinting.<\/p>\n\n\t<div class=\"sg-cookie-optin-box-button\">\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-all\">Allow all external content<\/button>\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-specific\">Allow once<\/button>\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-iframe-reject\">Do not allow<\/button>\n\t<\/div>\n\n\t<p class=\"sg-cookie-optin-box-flash-message\"><\/p>\n\n\t<div class=\"sg-cookie-optin-box-footer\">\n\t\t<div class=\"sg-cookie-optin-box-copyright\">\n\t\t\t<a tabindex=\"1\" class=\"sg-cookie-optin-box-copyright-link\"\n\t\t\t   href=\"https:\/\/www.sgalinski.de\/typo3-produkte-webentwicklung\/sgalinski-cookie-optin\/\"\n\t\t\t   rel=\"noopener\"\n\t\t\t   target=\"_blank\">\n\t\t\t\tPowered by<br>sgalinski Cookie Opt In\n\t\t\t<\/a>\n\t\t<\/div>\n\n\t\t<div class=\"sg-cookie-optin-box-footer-links\">\n\t\t<\/div>\n\t<\/div>\n<\/div>\n"},"iframeReplacement":{"iframe_replacement_html":"<button class=\"sg-cookie-optin-iframe-consent-accept\">{{{textEntries.iframe_button_load_one_text}}}<\/button>\n{{{placeholders.iframe_consent_description}}}\n<a class=\"sg-cookie-optin-iframe-consent-link\">{{{textEntries.iframe_open_settings_text}}}<\/a>\n","iframe_replacement_overwritten":0,"iframe_replacement_selection":0,"markup":"<button class=\"sg-cookie-optin-iframe-consent-accept\">Load external content<\/button>\n<p class=\"sg-cookie-optin-box-flash-message\"><\/p>\n<a class=\"sg-cookie-optin-iframe-consent-link\">Show settings<\/a>\n"},"iframeWhitelist":{"iframe_whitelist_regex":"^https:\\\/\\\/www\\.google\\.com\\\/recaptcha\\\/\n","iframe_whitelist_overwritten":0,"iframe_whitelist_selection":0,"markup":"^https:\\\/\\\/www\\.google\\.com\\\/recaptcha\\\/\n"}}}</script>--%>
    <%--<link rel="preload" as="script" href="/fileadmin/sg_cookie_optin/siteroot-1/cookieOptin.js" data-ignore="1">--%>
    <%--  <script src="/fileadmin/sg_cookie_optin/siteroot-1/cookieOptin.js" data-ignore="1"></script>--%>
    <script id="cookieOptinData" type="application/json">{"cookieGroups":[{"groupName":"essential","label":"Essential","description":"Essential cookies are required for basic functions of the website. This ensures that the website functions properly.","required":true,"cookieData":[{"Name":"fe_typo_user","Provider":"TYPO3","Purpose":"This cookie is a standard session cookie from TYPO3. It stores the session ID in case of a user login. In this way, the logged-in user can be recognised and access to protected areas is granted.","Lifetime":"1 week","index":0,"crdate":1643459152,"tstamp":1648629850,"pseudo":false},{"Name":"cookie_optin","Provider":"TYPO3","Purpose":"Stores the chosen tracking optin settings.","Lifetime":"1 month","index":1,"crdate":1643459152,"tstamp":1648629850,"pseudo":false},{"Name":"__cfduid","Provider":"CloudFlare","Purpose":"Cookie associated with sites using CloudFlare, used to speed up page load times. According to CloudFlare it is used to override any security restrictions based on the IP address the visitor is coming from. It does not contain any user identification information.","Lifetime":"1 month","index":2,"crdate":1643459152,"tstamp":1648629850,"pseudo":false},{"Name":"creSelectedLanguage","Provider":"TYPO3","Purpose":"Cookie stores the language version of the website explicitly selected via the language selection menu.","Lifetime":"1 year","index":3,"crdate":1643459152,"tstamp":1648629850,"pseudo":false}],"scriptData":[],"loadingHTML":"","loadingJavaScript":""},{"groupName":"analytics","label":"Analytics & Performance","description":"This group includes all scripts for analytical tracking and associated cookies. It helps us to improve the user experience of our website to improve your handling of our website.","required":false,"cookieData":[{"Name":"_ga","Provider":"Google Analytics","Purpose":"This cookie is installed by Google Analytics. The cookie is used to calculate visitor, session and campaign data and to track website usage for the website analysis report. Cookies store information anonymously and assign a randomly generated number to identify unique visitors.","Lifetime":"2 years","index":0,"crdate":1643459152,"tstamp":1648629850,"pseudo":false},{"Name":"_gid","Provider":"Google Analytics","Purpose":"This cookie is installed by Google Analytics. The cookie is used to store information about how visitors use a website and to help us compile an analysis report on how the website is performing. The information collected includes the number of visitors, the source from which it originates, and the pages in anonymous form.","Lifetime":"1 day","index":1,"crdate":1643459152,"tstamp":1648629850,"pseudo":false},{"Name":"_gat","Provider":"Google Universal Analytics","Purpose":"These cookies are installed by Google Universal Analytics in order to reduce the request rate and limit data collection on websites with high data traffic.","Lifetime":"1 minute","index":2,"crdate":1643459152,"tstamp":1648629850,"pseudo":false},{"Name":"_gat_UA-XYZ","Provider":"Google Analytics","Purpose":"This is a pattern type cookie set by Google Analytics in which the pattern element in the name contains the unique identity number of the account or website to which it relates. It appears to be a variation of the _gat cookie that is used to limit the amount of data Google records on high-traffic websites.","Lifetime":"1 minute","index":3,"crdate":1643459152,"tstamp":1648629850,"pseudo":false}],"scriptData":[{"title":"Google Tag Manager","script":"document.TagManagerLoaded = document.TagManagerLoaded || 0;\r\nif (!document.TagManagerLoaded) {\r\n  document.TagManagerLoaded = 1;\r\n  (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0], j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='\/\/www.googletagmanager.com\/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-W3QZXPD');\r\n}","html":"","index":0}],"loadingHTML":"","loadingJavaScript":"\/fileadmin\/sg_cookie_optin\/siteroot-1\/analytics-1.js","crdate":1643459152,"tstamp":1648629850},{"groupName":"iframes","label":"External Content","description":"We use external content on our website to offer you additional information. By allowing external content you agree connecting to servers of third parties where your IP address becomes known and maybe logged. Though no cookies might be set, you may be tracked by a technique called browser fingerprinting.","required":false,"cookieData":[]}],"cssData":{"color_box":"#FFFFFF","color_headline":"#373737","color_text":"#373737","color_confirmation_background":"#C9FFC9","color_confirmation_text":"#208A20","color_checkbox":"#143D59","color_checkbox_required":"#A5A5A5","color_button_all":"#143D59","color_button_all_hover":"#2E6B96","color_button_all_text":"#FFFFFF","color_button_specific":"#A5A5A5","color_button_specific_hover":"#D7D7D7","color_button_specific_text":"#FFFFFF","color_button_essential":"#A5A5A5","color_button_essential_hover":"#D7D7D7","color_button_essential_text":"#FFFFFF","color_button_close":"#FFFFFF","color_button_close_hover":"#FFFFFF","color_button_close_text":"#373737","color_list":"#A5A5A5","color_list_text":"#FFFFFF","color_table":"#FFFFFF","color_Table_data_text":"#373737","color_table_header":"#F3F3F3","color_table_header_text":"#373737","color_full_box":"#143D59","color_full_headline":"#FFFFFF","color_full_text":"#FFFFFF","color_full_button_close":"#143D59","color_full_button_close_hover":"#143D59","color_full_button_close_text":"#FFFFFF","iframe_color_consent_box_background":"#D6D6D6","iframe_color_button_load_one":"#143D59","iframe_color_button_load_one_hover":"#2E6B96","iframe_color_button_load_one_text":"#FFFFFF","iframe_color_open_settings":"#373737","banner_color_box":"#DDDDDD","banner_color_text":"#373737","banner_color_link_text":"#373737","banner_color_button_settings":"#A5A5A5","banner_color_button_settings_hover":"#D7D7D7","banner_color_button_settings_text":"#FFFFFF","banner_color_button_accept":"#143D59","banner_color_button_accept_hover":"#2E6B96","banner_color_button_accept_text":"#FFFFFF"},"footerLinks":[],"iFrameGroup":{"groupName":"iframes","label":"External Content","description":"We use external content on our website to offer you additional information. By allowing external content you agree connecting to servers of third parties where your IP address becomes known and maybe logged. Though no cookies might be set, you may be tracked by a technique called browser fingerprinting.","required":false,"cookieData":[]},"settings":{"banner_enable":false,"banner_force_min_width":0,"version":1,"banner_position":0,"banner_show_settings_button":true,"cookie_lifetime":365,"session_only_essential_cookies":false,"iframe_enabled":true,"minify_generated_data":true,"show_button_close":true,"activate_testing_mode":false,"disable_powered_by":false,"disable_for_this_language":false,"set_cookie_for_domain":"kisters.de","save_history_webhook":"\/?eID=sg_cookie_optin_saveOptinHistory","cookiebanner_whitelist_regex":"","banner_show_again_interval":14,"identifier":1,"render_assets_inline":0,"consider_do_not_track":0},"textEntries":{"header":"Privacy settings","description":"Cookies are used on our website. Some of them are mandatory, while others allow us to improve your user experience on our website.","accept_all_text":"Accept All","accept_specific_text":"Save & Close","accept_essential_text":"Accept only essential cookies","extend_box_link_text":"Show further information","extend_box_link_text_close":"Hide further information","extend_table_link_text":"Show cookie information","extend_table_link_text_close":"Hide cookie information","cookie_name_text":"Name","cookie_provider_text":"Provider","cookie_purpose_text":"Purpose","cookie_lifetime_text":"Lifetime","iframe_button_allow_all_text":"Allow all external content","iframe_button_allow_one_text":"Allow once","iframe_button_reject_text":"Do not allow","iframe_button_load_one_text":"Load external content","iframe_open_settings_text":"Show settings","iframe_button_load_one_description":"","banner_button_accept_text":"Akzeptieren","banner_button_settings_text":"Einstellungen","banner_description":"Auf unserer Webseite werden Cookies verwendet. Einige davon werden zwingend ben\u00f6tigt, w\u00e4hrend es uns andere erm\u00f6glichen, Ihre Nutzererfahrung auf unserer Webseite zu verbessern.","save_confirmation_text":"Cookie settings saved successfully","user_hash_text":"User-Hash"},"placeholders":{"iframe_consent_description":"<p class=\"sg-cookie-optin-box-flash-message\"><\/p>"},"mustacheData":{"template":{"template_html":"<!--googleoff: index-->\n<div class=\"sg-cookie-optin-box\">\n\t{{#settings.show_button_close}}\n\t\t<span class=\"sg-cookie-optin-box-close-button\">\u2715<\/span>\n\t{{\/settings.show_button_close}}\n\n\t<strong class=\"sg-cookie-optin-box-header\">{{{textEntries.header}}}<\/strong>\n\t<p class=\"sg-cookie-optin-box-description\">{{{textEntries.description}}}<\/p>\n\n\t<ul class=\"sg-cookie-optin-box-cookie-list\">\n\t\t{{#cookieGroups}}\n\t\t\t<li class=\"sg-cookie-optin-box-cookie-list-item\">\n\t\t\t\t<label >\n\t\t\t\t\t<input tabindex=\"1\" class=\"sg-cookie-optin-checkbox\"\n\t\t\t\t\t   type=\"checkbox\"\n\t\t\t\t\t   name=\"cookies[]\"\n\t\t\t\t\t   value=\"{{groupName}}\"\n\t\t\t\t\t   {{#required}}checked=\"1\"{{\/required}}\n\t\t\t\t\t   {{#required}}disabled=\"1\"{{\/required}}>\n\t\t\t\t\t<span class=\"sg-cookie-optin-checkbox-label\">{{{label}}}<\/span>\n\t\t\t\t<\/label>\n\t\t\t<\/li>\n\t\t{{\/cookieGroups}}\n\t<\/ul>\n\n\t<div class=\"sg-cookie-optin-box-button\">\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-all\">{{{textEntries.accept_all_text}}}<\/button>\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-specific\">{{{textEntries.accept_specific_text}}}<\/button>\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-essential\">{{{textEntries.accept_essential_text}}}<\/button>\n\t<\/div>\n\n\t<ul class=\"sg-cookie-optin-box-cookie-detail-list\">\n\t\t{{#cookieGroups}}\n\t\t\t<li class=\"sg-cookie-optin-box-cookie-detail-list-item\">\n\t\t\t\t<strong class=\"sg-cookie-optin-box-cookie-detail-header\">{{{label}}}<\/strong>\n\t\t\t\t<p class=\"sg-cookie-optin-box-cookie-detail-description\">{{{description}}}<\/p>\n\n\t\t\t\t<div class=\"sg-cookie-optin-box-cookie-detail-sublist\">\n\t\t\t\t\t<table>\n\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t\t{{#cookieData}}\n\t\t\t\t\t\t\t\t{{^pseudo}}\n\t\t\t\t\t\t\t\t\t{{#index}}<tr class=\"divider\"><td colspan=\"2\">&nbsp;<\/td><\/tr>{{\/index}}\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>{{{textEntries.cookie_name_text}}}<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>{{{Name}}}<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>{{{textEntries.cookie_provider_text}}}<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>{{{Provider}}}<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>{{{textEntries.cookie_lifetime_text}}}<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>{{{Lifetime}}}<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>{{{textEntries.cookie_purpose_text}}}<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">{{{Purpose}}}<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t{{\/pseudo}}\n\t\t\t\t\t\t\t{{\/cookieData}}\n\t\t\t\t\t\t<\/tbody>\n\t\t\t\t\t<\/table>\n\t\t\t\t<\/div>\n\n\t\t\t\t{{#cookieData}}\n\t\t\t\t\t{{^index}}<a tabindex=\"1\" class=\"sg-cookie-optin-box-sublist-open-more-link\" href=\"#\">{{{textEntries.extend_table_link_text}}}<\/a>{{\/index}}\n\t\t\t\t{{\/cookieData}}\n\t\t\t<\/li>\n\t\t{{\/cookieGroups}}\n\t<\/ul>\n\n\t<div class=\"sg-cookie-optin-box-open-more\">\n\t\t<a class=\"sg-cookie-optin-box-open-more-link\" href=\"#\">{{{textEntries.extend_box_link_text}}}<\/a>\n\t<\/div>\n\n\t<div class=\"sg-cookie-optin-box-footer\">\n\t\t<div class=\"sg-cookie-optin-box-copyright\">\n\t\t\t<a tabindex=\"1\" class=\"sg-cookie-optin-box-copyright-link{{#settings.disable_powered_by}} sg-cookie-optin-box-copyright-link-hidden{{\/settings.disable_powered_by}}\"\n\t\t\t   href=\"https:\/\/www.sgalinski.de\/typo3-produkte-webentwicklung\/sgalinski-cookie-optin\/\"\n\t\t\t   rel=\"noopener\"\n\t\t\t   target=\"_blank\">\n\t\t\t\tPowered by<br>sgalinski Cookie Opt In\n\t\t\t<\/a>\n\t\t<\/div>\n\n\t\t<div class=\"sg-cookie-optin-box-footer-links\">\n\t\t\t{{#footerLinks}}\n\t\t\t\t{{#index}}\n\t\t\t\t\t<span class=\"sg-cookie-optin-box-footer-divider\"> | <\/span>\n\t\t\t\t{{\/index}}\n\n\t\t\t\t<a tabindex=\"1\" class=\"sg-cookie-optin-box-footer-link\" href=\"{{url}}\" target=\"_blank\">{{{name}}}<\/a>\n\t\t\t{{\/footerLinks}}\n\t\t<\/div>\n\n\t\t<div class=\"sg-cookie-optin-box-footer-user-hash-container\">\n\t\t\t{{{textEntries.user_hash_text}}}: <span class=\"sg-cookie-optin-box-footer-user-hash\"><\/span>\n\t\t<\/div>\n\t<\/div>\n<\/div>\n<!--googleon: index-->\n","template_overwritten":0,"template_selection":0,"markup":"<!--googleoff: index-->\n<div class=\"sg-cookie-optin-box\">\n\t\t<span class=\"sg-cookie-optin-box-close-button\">\u2715<\/span>\n\n\t<strong class=\"sg-cookie-optin-box-header\">Privacy settings<\/strong>\n\t<p class=\"sg-cookie-optin-box-description\">Cookies are used on our website. Some of them are mandatory, while others allow us to improve your user experience on our website.<\/p>\n\n\t<ul class=\"sg-cookie-optin-box-cookie-list\">\n\t\t\t<li class=\"sg-cookie-optin-box-cookie-list-item\">\n\t\t\t\t<label >\n\t\t\t\t\t<input tabindex=\"1\" class=\"sg-cookie-optin-checkbox\"\n\t\t\t\t\t   type=\"checkbox\"\n\t\t\t\t\t   name=\"cookies[]\"\n\t\t\t\t\t   value=\"essential\"\n\t\t\t\t\t   checked=\"1\"\n\t\t\t\t\t   disabled=\"1\">\n\t\t\t\t\t<span class=\"sg-cookie-optin-checkbox-label\">Essential<\/span>\n\t\t\t\t<\/label>\n\t\t\t<\/li>\n\t\t\t<li class=\"sg-cookie-optin-box-cookie-list-item\">\n\t\t\t\t<label >\n\t\t\t\t\t<input tabindex=\"1\" class=\"sg-cookie-optin-checkbox\"\n\t\t\t\t\t   type=\"checkbox\"\n\t\t\t\t\t   name=\"cookies[]\"\n\t\t\t\t\t   value=\"analytics\"\n\t\t\t\t\t   \n\t\t\t\t\t   >\n\t\t\t\t\t<span class=\"sg-cookie-optin-checkbox-label\">Analytics & Performance<\/span>\n\t\t\t\t<\/label>\n\t\t\t<\/li>\n\t\t\t<li class=\"sg-cookie-optin-box-cookie-list-item\">\n\t\t\t\t<label >\n\t\t\t\t\t<input tabindex=\"1\" class=\"sg-cookie-optin-checkbox\"\n\t\t\t\t\t   type=\"checkbox\"\n\t\t\t\t\t   name=\"cookies[]\"\n\t\t\t\t\t   value=\"iframes\"\n\t\t\t\t\t   \n\t\t\t\t\t   >\n\t\t\t\t\t<span class=\"sg-cookie-optin-checkbox-label\">External Content<\/span>\n\t\t\t\t<\/label>\n\t\t\t<\/li>\n\t<\/ul>\n\n\t<div class=\"sg-cookie-optin-box-button\">\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-all\">Accept All<\/button>\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-specific\">Save & Close<\/button>\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-essential\">Accept only essential cookies<\/button>\n\t<\/div>\n\n\t<ul class=\"sg-cookie-optin-box-cookie-detail-list\">\n\t\t\t<li class=\"sg-cookie-optin-box-cookie-detail-list-item\">\n\t\t\t\t<strong class=\"sg-cookie-optin-box-cookie-detail-header\">Essential<\/strong>\n\t\t\t\t<p class=\"sg-cookie-optin-box-cookie-detail-description\">Essential cookies are required for basic functions of the website. This ensures that the website functions properly.<\/p>\n\n\t\t\t\t<div class=\"sg-cookie-optin-box-cookie-detail-sublist\">\n\t\t\t\t\t<table>\n\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Name<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>fe_typo_user<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Provider<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>TYPO3<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Lifetime<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>1 week<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Purpose<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">This cookie is a standard session cookie from TYPO3. It stores the session ID in case of a user login. In this way, the logged-in user can be recognised and access to protected areas is granted.<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr class=\"divider\"><td colspan=\"2\">&nbsp;<\/td><\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Name<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>cookie_optin<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Provider<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>TYPO3<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Lifetime<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>1 month<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Purpose<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">Stores the chosen tracking optin settings.<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr class=\"divider\"><td colspan=\"2\">&nbsp;<\/td><\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Name<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>__cfduid<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Provider<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>CloudFlare<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Lifetime<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>1 month<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Purpose<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">Cookie associated with sites using CloudFlare, used to speed up page load times. According to CloudFlare it is used to override any security restrictions based on the IP address the visitor is coming from. It does not contain any user identification information.<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr class=\"divider\"><td colspan=\"2\">&nbsp;<\/td><\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Name<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>creSelectedLanguage<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Provider<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>TYPO3<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Lifetime<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>1 year<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Purpose<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">Cookie stores the language version of the website explicitly selected via the language selection menu.<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t<\/tbody>\n\t\t\t\t\t<\/table>\n\t\t\t\t<\/div>\n\n\t\t\t\t\t<a tabindex=\"1\" class=\"sg-cookie-optin-box-sublist-open-more-link\" href=\"#\">Show cookie information<\/a>\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t<\/li>\n\t\t\t<li class=\"sg-cookie-optin-box-cookie-detail-list-item\">\n\t\t\t\t<strong class=\"sg-cookie-optin-box-cookie-detail-header\">Analytics & Performance<\/strong>\n\t\t\t\t<p class=\"sg-cookie-optin-box-cookie-detail-description\">This group includes all scripts for analytical tracking and associated cookies. It helps us to improve the user experience of our website to improve your handling of our website.<\/p>\n\n\t\t\t\t<div class=\"sg-cookie-optin-box-cookie-detail-sublist\">\n\t\t\t\t\t<table>\n\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Name<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>_ga<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Provider<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>Google Analytics<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Lifetime<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>2 years<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Purpose<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">This cookie is installed by Google Analytics. The cookie is used to calculate visitor, session and campaign data and to track website usage for the website analysis report. Cookies store information anonymously and assign a randomly generated number to identify unique visitors.<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr class=\"divider\"><td colspan=\"2\">&nbsp;<\/td><\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Name<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>_gid<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Provider<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>Google Analytics<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Lifetime<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>1 day<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Purpose<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">This cookie is installed by Google Analytics. The cookie is used to store information about how visitors use a website and to help us compile an analysis report on how the website is performing. The information collected includes the number of visitors, the source from which it originates, and the pages in anonymous form.<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr class=\"divider\"><td colspan=\"2\">&nbsp;<\/td><\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Name<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>_gat<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Provider<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>Google Universal Analytics<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Lifetime<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>1 minute<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Purpose<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">These cookies are installed by Google Universal Analytics in order to reduce the request rate and limit data collection on websites with high data traffic.<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr class=\"divider\"><td colspan=\"2\">&nbsp;<\/td><\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Name<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>_gat_UA-XYZ<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Provider<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>Google Analytics<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Lifetime<\/th>\n\t\t\t\t\t\t\t\t\t\t<td>1 minute<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Purpose<\/th>\n\t\t\t\t\t\t\t\t\t\t<td class=\"sg-cookie-optin-box-table-reason\">This is a pattern type cookie set by Google Analytics in which the pattern element in the name contains the unique identity number of the account or website to which it relates. It appears to be a variation of the _gat cookie that is used to limit the amount of data Google records on high-traffic websites.<\/td>\n\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t<\/tbody>\n\t\t\t\t\t<\/table>\n\t\t\t\t<\/div>\n\n\t\t\t\t\t<a tabindex=\"1\" class=\"sg-cookie-optin-box-sublist-open-more-link\" href=\"#\">Show cookie information<\/a>\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t<\/li>\n\t\t\t<li class=\"sg-cookie-optin-box-cookie-detail-list-item\">\n\t\t\t\t<strong class=\"sg-cookie-optin-box-cookie-detail-header\">External Content<\/strong>\n\t\t\t\t<p class=\"sg-cookie-optin-box-cookie-detail-description\">We use external content on our website to offer you additional information. By allowing external content you agree connecting to servers of third parties where your IP address becomes known and maybe logged. Though no cookies might be set, you may be tracked by a technique called browser fingerprinting.<\/p>\n\n\t\t\t\t<div class=\"sg-cookie-optin-box-cookie-detail-sublist\">\n\t\t\t\t\t<table>\n\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t<\/tbody>\n\t\t\t\t\t<\/table>\n\t\t\t\t<\/div>\n\n\t\t\t<\/li>\n\t<\/ul>\n\n\t<div class=\"sg-cookie-optin-box-open-more\">\n\t\t<a class=\"sg-cookie-optin-box-open-more-link\" href=\"#\">Show further information<\/a>\n\t<\/div>\n\n\t<div class=\"sg-cookie-optin-box-footer\">\n\t\t<div class=\"sg-cookie-optin-box-copyright\">\n\t\t\t<a tabindex=\"1\" class=\"sg-cookie-optin-box-copyright-link\"\n\t\t\t   href=\"https:\/\/www.sgalinski.de\/typo3-produkte-webentwicklung\/sgalinski-cookie-optin\/\"\n\t\t\t   rel=\"noopener\"\n\t\t\t   target=\"_blank\">\n\t\t\t\tPowered by<br>sgalinski Cookie Opt In\n\t\t\t<\/a>\n\t\t<\/div>\n\n\t\t<div class=\"sg-cookie-optin-box-footer-links\">\n\t\t<\/div>\n\n\t\t<div class=\"sg-cookie-optin-box-footer-user-hash-container\">\n\t\t\tUser-Hash: <span class=\"sg-cookie-optin-box-footer-user-hash\"><\/span>\n\t\t<\/div>\n\t<\/div>\n<\/div>\n<!--googleon: index-->\n"},"banner":{"banner_html":"<div class=\"sg-cookie-optin-banner {{^settings.banner_position}}sg-cookie-optin-banner-bottom{{\/settings.banner_position}}\">\n\t<div class=\"sg-cookie-optin-box\">\n\t\t<div class=\"sg-cookie-optin-banner-content\">\n\t\t\t<p class=\"sg-cookie-optin-banner-description\">\n\t\t\t\t{{{textEntries.banner_description}}}\n\n\t\t\t\t{{#footerLinks}}\n\t\t\t\t\t{{#index}}\n\t\t\t\t\t\t(\n\t\t\t\t\t{{\/index}}\n\t\t\t\t{{\/footerLinks}}\n\n\t\t\t\t{{#footerLinks}}\n\t\t\t\t\t{{#index}}\n\t\t\t\t\t\t<span class=\"sg-cookie-optin-box-footer-divider\"> | <\/span>\n\t\t\t\t\t{{\/index}}\n\n\t\t\t\t\t<a class=\"sg-cookie-optin-box-footer-link\" href=\"{{url}}\" target=\"_blank\">{{{name}}}<\/a>\n\t\t\t\t{{\/footerLinks}}\n\n\t\t\t\t{{#footerLinks}}\n\t\t\t\t\t{{#index}}\n\t\t\t\t\t\t)\n\t\t\t\t\t{{\/index}}\n\t\t\t\t{{\/footerLinks}}\n\t\t\t<\/p>\n\n\t\t\t<div class=\"sg-cookie-optin-banner-button\">\n\t\t\t\t{{#settings.banner_show_settings_button}}\n\t\t\t\t\t<button class=\"sg-cookie-optin-banner-button-settings\">{{{textEntries.banner_button_settings_text}}}<\/button>\n\t\t\t\t{{\/settings.banner_show_settings_button}}\n\n\t\t\t\t<button class=\"sg-cookie-optin-banner-button-accept\">{{{textEntries.banner_button_accept_text}}}<\/button>\n\t\t\t<\/div>\n\t\t<\/div>\n\t<\/div>\n<\/div>\n","banner_overwritten":0,"banner_selection":0,"markup":"<div class=\"sg-cookie-optin-banner sg-cookie-optin-banner-bottom\">\n\t<div class=\"sg-cookie-optin-box\">\n\t\t<div class=\"sg-cookie-optin-banner-content\">\n\t\t\t<p class=\"sg-cookie-optin-banner-description\">\n\t\t\t\tAuf unserer Webseite werden Cookies verwendet. Einige davon werden zwingend ben\u00f6tigt, w\u00e4hrend es uns andere erm\u00f6glichen, Ihre Nutzererfahrung auf unserer Webseite zu verbessern.\n\n\n\n\t\t\t<\/p>\n\n\t\t\t<div class=\"sg-cookie-optin-banner-button\">\n\t\t\t\t\t<button class=\"sg-cookie-optin-banner-button-settings\">Einstellungen<\/button>\n\n\t\t\t\t<button class=\"sg-cookie-optin-banner-button-accept\">Akzeptieren<\/button>\n\t\t\t<\/div>\n\t\t<\/div>\n\t<\/div>\n<\/div>\n"},"iframe":{"iframe_html":"<div class=\"sg-cookie-optin-box\">\n\t{{#settings.show_button_close}}\n\t\t<span class=\"sg-cookie-optin-box-close-button\">\u2715<\/span>\n\t{{\/settings.show_button_close}}\n\n\t<strong class=\"sg-cookie-optin-box-header\">{{{iFrameGroup.label}}}<\/strong>\n\t<p class=\"sg-cookie-optin-box-description\">{{{iFrameGroup.description}}}<\/p>\n\n\t<div class=\"sg-cookie-optin-box-button\">\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-all\">{{{textEntries.iframe_button_allow_all_text}}}<\/button>\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-specific\">{{{textEntries.iframe_button_allow_one_text}}}<\/button>\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-iframe-reject\">{{{textEntries.iframe_button_reject_text}}}<\/button>\n\t<\/div>\n\n\t{{{placeholders.iframe_consent_description}}}\n\n\t<div class=\"sg-cookie-optin-box-footer\">\n\t\t<div class=\"sg-cookie-optin-box-copyright\">\n\t\t\t<a tabindex=\"1\" class=\"sg-cookie-optin-box-copyright-link{{#settings.disable_powered_by}} sg-cookie-optin-box-copyright-link-hidden{{\/settings.disable_powered_by}}\"\n\t\t\t   href=\"https:\/\/www.sgalinski.de\/typo3-produkte-webentwicklung\/sgalinski-cookie-optin\/\"\n\t\t\t   rel=\"noopener\"\n\t\t\t   target=\"_blank\">\n\t\t\t\tPowered by<br>sgalinski Cookie Opt In\n\t\t\t<\/a>\n\t\t<\/div>\n\n\t\t<div class=\"sg-cookie-optin-box-footer-links\">\n\t\t\t{{#footerLinks}}\n\t\t\t{{#index}}\n\t\t\t<span class=\"sg-cookie-optin-box-footer-divider\"> | <\/span>\n\t\t\t{{\/index}}\n\t\t\t<a tabindex=\"1\" class=\"sg-cookie-optin-box-footer-link\" href=\"{{url}}\" target=\"_blank\">{{{name}}}<\/a>\n\t\t\t{{\/footerLinks}}\n\t\t<\/div>\n\t<\/div>\n<\/div>\n","iframe_overwritten":0,"iframe_selection":0,"markup":"<div class=\"sg-cookie-optin-box\">\n\t\t<span class=\"sg-cookie-optin-box-close-button\">\u2715<\/span>\n\n\t<strong class=\"sg-cookie-optin-box-header\">External Content<\/strong>\n\t<p class=\"sg-cookie-optin-box-description\">We use external content on our website to offer you additional information. By allowing external content you agree connecting to servers of third parties where your IP address becomes known and maybe logged. Though no cookies might be set, you may be tracked by a technique called browser fingerprinting.<\/p>\n\n\t<div class=\"sg-cookie-optin-box-button\">\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-all\">Allow all external content<\/button>\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-accept-specific\">Allow once<\/button>\n\t\t<button tabindex=\"1\" class=\"sg-cookie-optin-box-button-iframe-reject\">Do not allow<\/button>\n\t<\/div>\n\n\t<p class=\"sg-cookie-optin-box-flash-message\"><\/p>\n\n\t<div class=\"sg-cookie-optin-box-footer\">\n\t\t<div class=\"sg-cookie-optin-box-copyright\">\n\t\t\t<a tabindex=\"1\" class=\"sg-cookie-optin-box-copyright-link\"\n\t\t\t   href=\"https:\/\/www.sgalinski.de\/typo3-produkte-webentwicklung\/sgalinski-cookie-optin\/\"\n\t\t\t   rel=\"noopener\"\n\t\t\t   target=\"_blank\">\n\t\t\t\tPowered by<br>sgalinski Cookie Opt In\n\t\t\t<\/a>\n\t\t<\/div>\n\n\t\t<div class=\"sg-cookie-optin-box-footer-links\">\n\t\t<\/div>\n\t<\/div>\n<\/div>\n"},"iframeReplacement":{"iframe_replacement_html":"<button class=\"sg-cookie-optin-iframe-consent-accept\">{{{textEntries.iframe_button_load_one_text}}}<\/button>\n{{{placeholders.iframe_consent_description}}}\n<a class=\"sg-cookie-optin-iframe-consent-link\">{{{textEntries.iframe_open_settings_text}}}<\/a>\n","iframe_replacement_overwritten":0,"iframe_replacement_selection":0,"markup":"<button class=\"sg-cookie-optin-iframe-consent-accept\">Load external content<\/button>\n<p class=\"sg-cookie-optin-box-flash-message\"><\/p>\n<a class=\"sg-cookie-optin-iframe-consent-link\">Show settings<\/a>\n"},"iframeWhitelist":{"iframe_whitelist_regex":"^https:\\\/\\\/www\\.google\\.com\\\/recaptcha\\\/\n","iframe_whitelist_overwritten":0,"iframe_whitelist_selection":0,"markup":"^https:\\\/\\\/www\\.google\\.com\\\/recaptcha\\\/\n"}}}</script>
</head>
<body id="p1" class="page-1 pagelevel-0 language-1 backendlayout-pagets__assets_homepage layout-0">

    <div id="page">
        <div id="top"></div>
        <div class="body-bg">
            <a class="sr-only sr-only-focusable" href="#content">Skip to main content
            </a>
            <section class="section nav-section is-fixed">
                <div class="navbar navbar-meta-top navbar-light hidden-md-down">
                    <div class="container">
                        <nav class="nav nav-inline">
                            <a class="nav-link level-1 "
                                href="/en/"
                                title="Home"
                                aria-haspopup=""
                                aria-expanded="false">
                                <span class="texticon-inner-icon fa fa-home"></span>
                                Home
                            </a>
                            <span class="divider">|</span>
                            <a class="nav-link level-1 "
                                href="/en/contact/contact-form/"
                                title="Contact"
                                aria-haspopup=""
                                aria-expanded="false">Contact
                            </a>
                            <span class="divider">|</span>
                            <a class="nav-link level-1 nav-link-search"
                                href="/en/find/"
                                title="Search"
                                aria-haspopup=""
                                aria-expanded="false">
                                <span class="texticon-inner-icon fa fa-search"></span>
                                Search
                            </a>
                            <span class="spacer"></span>
                            <span class="divider">|</span>
                            <a class="nav-link level-1 "
                                href="javascript:linkTo_UnCryptMailto(&#039;jxfiql7fkclXhfpqbop+ab&#039;);"
                                title="Email"
                                aria-expanded="false">
                                <span class="texticon-inner-icon fa fa-envelope"></span>
                                Email
                            </a>
                            <span class="divider">|</span>
                            <a class="nav-link level-1 "
                                href="tel:+91 9666 54 9595"
                                title="+49 2408 9385 0"
                                aria-expanded="false">
                                <span class="texticon-inner-icon fa fa-phone"></span>
                                +91 9666 54 9595
                            </a>
                            <span class="spacer meta-top-spacer-2"></span>
                            <span class="divider">|</span>
                            <a class="nav-link level-1 "
                                <%--href="https://serviceportal.kisters.de/en/"
                                target="_blank"
                                title="Login"
                                aria-haspopup=""--%>
                                aria-expanded="false">
                                <span class="texticon-inner-icon fa fa-user"></span>
                                Login
                            </a>
                        </nav>
                    </div>
                </div>
                <nav
                    class="navbar navbar-toggleable navbar-default navbar-has-image navbar-top"
                    role="navigation">
                    <div class="container">
                        <a class="navbar-brand navbar-brand-image" title="Homepage" href="/en/">
                            <img class="navbar-brand-logo-normal"
                                src="Images/esoft-logo-small.png" />
                            </a>
                            <ul id="mainnavigation" class="nav navbar-nav navbar-main">
                                <li class="nav-item  nav-item-35  flyout">
                                    <a href="/en/business-units/overview/" class="nav-link  level-1" aria-haspopup="true" aria-expanded="false">
                                        Business Units
                                        <b class="caret"></b>
                                        <span class="bar"></span>
                                    </a>
                                    <div class="flyout-menu">
                                        <div class="flyout-menu-inner">
                                            <div class="row">
                                                <div class="content-section col-lg-6">
                                                </div>
                                                <div class="nav-section col-lg-6">
                                                    <div class="nav-header h2">Business Units</div>
                                                    <ul class="nav">
                                                                        <li class="nav-item ">
                                                                            <a class="nav-link"
                                                                                href="/en/business-units/overview/"
                                                                                title="Overview"
                                                                            >
                                                                                Overview
                                                                            </a>
                                                                        </li>
                                                                        <li class="nav-item ">
                                                                            <a class="nav-link"
                                                                                href="/en/business-units/energy/"
                                                                                title="Energy"
                                                                            >
                                                                                Energy
                                                                            </a>
                                                                        </li>
                                                                        <li class="nav-item ">
                                                                            <a class="nav-link"
                                                                                href="/en/business-units/water/"
                                                                                title="Water"
                                                                            >
                                                                                Water
                                                                            </a>
                                                                        </li>
                                                                        <li class="nav-item ">
                                                                            <a class="nav-link"
                                                                                href="/en/business-units/monitoring-hyquest-solutions/"
                                                                                                           
                                                                                title="Monitoring | HyQuest Solutions"
                                                                            >
                                                                                Monitoring | HyQuest Solutions
                                                                            </a>
                                                                        </li>
                                                                        <li class="nav-item ">
                                                                            <a class="nav-link"
                                                                                href="/en/business-units/2d3d-visualisation/"
                                                                                                           
                                                                                title="2D/3D Visualisation"
                                                                            >
                                                                                2D/3D Visualisation
                                                                            </a>
                                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item  nav-item-300  flyout">
                                    <a href="/en/news-events/overview-news-events/" class="nav-link  level-1" aria-haspopup="true" aria-expanded="false">
                                        News &amp; Events
                                        <b class="caret"></b>
                                        <span class="bar"></span>
                                    </a>
                                    <div class="flyout-menu">
                                        <div class="flyout-menu-inner">
                                            <div class="row">
                                                        <div class="content-section col-lg-6">
                                                        </div>
                                                        <div class="nav-section col-lg-6">
                                                            <div class="nav-header h2">News &amp; Events</div>
                                                            <ul class="nav">
                                                                    <li class="nav-item ">
                                                                                    <a class="nav-link"
                                                                                        href="/en/news-events/news/"
                                                                                        title="News"
                                                                                    >
                                                                                        News
                                                                                    </a>
                                                                                </li>
                                                                                <li class="nav-item ">
                                                                                    <a class="nav-link"
                                                                                        href="/en/news-events/events/"
                                                                                                           
                                                                                        title="Events"
                                                                                    >
                                                                                        Events
                                                                                    </a>
                                                                                </li>
                                                                                <li class="nav-item ">
                                                                                    <a class="nav-link"
                                                                                        href="/en/news-events/it-security-notifications/"
                                                                                                           
                                                                                        title="IT Security Notifications"
                                                                                    >
                                                                                        IT Security Notifications
                                                                                    </a>
                                                                                </li>
                                                                                <li class="nav-item ">
                                                                                    <a class="nav-link"
                                                                                        href="https://serviceportal.kisters.de/en/newsletter/"
                                                                                        target="_blank"
                                                                                        title="Newsletter"
                                                                                    >
                                                                                        Newsletter
                                                                                    </a>
                                                                                </li>
                                                            </ul>
                                                        </div>
                                            </div>
                                        </div>
                                    </div>
                                    </li>
                                    <li class="nav-item  nav-item-124  flyout">
                                        <a href="/en/about-us/overview/" class="nav-link  level-1" aria-haspopup="true" aria-expanded="false">
                                            About us
                                            <b class="caret"></b>
                                            <span class="bar"></span>
                                        </a>
                                        <div class="flyout-menu">
                                                            <div class="flyout-menu-inner">
                                                                <div class="row">
                                                                            <div class="content-section col-lg-6">
                                                                                
                                                                            </div>
                                                                            <div class="nav-section col-lg-6">
                                                                                <div class="nav-header h2">About us</div>
                                                                                <ul class="nav">
                                                                                                    <li class="nav-item ">
                                                                                                        <a class="nav-link"
                                                                                                           href="/en/about-us/vision-and-objectives/"
                                                                                                           
                                                                                                           title="Vision and objectives"
                                                                                                        >
                                                                                                            Vision and objectives
                                                                                                        </a>
                                                                                                    </li>
                                                                                                    <li class="nav-item ">
                                                                                                        <a class="nav-link"
                                                                                                           href="/en/about-us/the-history-of-kisters/"
                                                                                                           
                                                                                                           title="The history of KISTERS"
                                                                                                        >
                                                                                                            The history of KISTERS
                                                                                                        </a>
                                                                                                    </li>
                                                                                                    <li class="nav-item ">
                                                                                                        <a class="nav-link"
                                                                                                           href="/en/about-us/success-factors/"
                                                                                                           
                                                                                                           title="Success factors"
                                                                                                        >
                                                                                                            Success factors
                                                                                                        </a>
                                                                                                    </li>
                                                                                                    <li class="nav-item ">
                                                                                                        <a class="nav-link"
                                                                                                           href="/en/about-us/corporate-culture/"
                                                                                                           
                                                                                                           title="Corporate culture"
                                                                                                        >
                                                                                                            Corporate culture
                                                                                                        </a>
                                                                                                    </li>
                                                                                                    <li class="nav-item ">
                                                                                                        <a class="nav-link"
                                                                                                           href="/en/about-us/certifications/"
                                                                                                           
                                                                                                           title="Certifications"
                                                                                                        >
                                                                                                            Certifications
                                                                                                        </a>
                                                                                                    </li>
                                                                                                    <li class="nav-item ">
                                                                                                        <a class="nav-link"
                                                                                                           href="/en/about-us/terms-and-conditions/"
                                                                                                           
                                                                                                           title="Terms and Conditions"
                                                                                                        >
                                                                                                            Terms and Conditions
                                                                                                        </a>
                                                                                                    </li>
                                                                                                    <li class="nav-item ">
                                                                                                        <a class="nav-link"
                                                                                                           href="/en/about-us/code-of-conduct/"
                                                                                                           
                                                                                                           title="Code of Conduct"
                                                                                                        >
                                                                                                            Code of Conduct
                                                                                                        </a>
                                                                                                    </li>
                                                                                                    <li class="nav-item ">
                                                                                                        <a class="nav-link"
                                                                                                           href="/en/about-us/modern-slavery-statement/"
                                                                                                           
                                                                                                           title="Modern Slavery Statement"
                                                                                                        >
                                                                                                            Modern Slavery Statement
                                                                                                        </a>
                                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                    </li>
                                    <li class="nav-item  nav-item-105  flyout">
                                        <a href="/en/career/job-offers/" class="nav-link  level-1" aria-haspopup="true" aria-expanded="false">
                                            Career
                                            <b class="caret"></b>
                                            <span class="bar"></span>
                                        </a>
                                        <div class="flyout-menu">
                                            <div class="flyout-menu-inner">
                                                <div class="row">
                                                            <div class="content-section col-lg-6">
                                                            </div>
                                                            <div class="nav-section col-lg-6">
                                                                <div class="nav-header h2">Career</div>
                                                                <ul class="nav">
                                                                    <li class="nav-item ">
                                                                        <a class="nav-link"
                                                                            href="/en/career/benefits/"
                                                                                                           
                                                                            title="Benefits"
                                                                        >
                                                                            Benefits
                                                                        </a>
                                                                    </li>
                                                                    <li class="nav-item ">
                                                                        <a class="nav-link"
                                                                            href="/en/career/job-offers/"
                                                                                                           
                                                                            title="Job offers"
                                                                        >
                                                                            Job offers
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="nav-item  nav-item-343  flyout">
                                        <a href="/en/contact/locations/" class="nav-link  level-1" aria-haspopup="true" aria-expanded="false">
                                            Contact
                                            <b class="caret"></b>
                                            <span class="bar"></span>
                                        </a>
                                        <div class="flyout-menu">
                                            <div class="flyout-menu-inner">
                                                <div class="row">
                                                    <div class="content-section col-lg-6">
                                                    </div>
                                                    <div class="nav-section col-lg-6">
                                                    <div class="nav-header h2">Contact</div>
                                                        <ul class="nav">
                                                            <li class="nav-item ">
                                                                <a class="nav-link"
                                                                    href="/en/contact/locations/"
                                                                                                           
                                                                    title="Locations"
                                                                >
                                                                    Locations
                                                                </a>
                                                            </li>
                                                            <li class="nav-item ">
                                                                <a class="nav-link"
                                                                    href="/en/contact/contact-form/"
                                                                                                           
                                                                    title="Contact form"
                                                                >
                                                                    Contact form
                                                                </a>
                                                            </li>
                                                            <li class="nav-item ">
                                                                <a class="nav-link"
                                                                    href="/en/contact/business-unit-water/"
                                                                                                           
                                                                    title="Business Unit Water"
                                                                >
                                                                    Business Unit Water
                                                                </a>
                                                            </li>
                                                            <li class="nav-item ">
                                                                <a class="nav-link"
                                                                    href="/en/contact/business-unit-monitoring-hyquest-solutions/"
                                                                                                           
                                                                    title="Business Unit Monitoring | HyQuest Solutions"
                                                                >
                                                                    Business Unit Monitoring | HyQuest Solutions
                                                                </a>
                                                            </li>
                                                            <li class="nav-item ">
                                                                <a class="nav-link"
                                                                    href="/en/contact/business-unit-2d3d-visualisation/"
                                                                                                           
                                                                    title="Business Unit 2D/3D Visualisation"
                                                                >
                                                                    Business Unit 2D/3D Visualisation
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <div class="dropdown nav-item">
                                        <a class="nav-link level-1 dropdown-toggle nav-link-language"
                                           href="#"
                                            title="Language"
                                            aria-haspopup="true"
                                            aria-expanded="false"
                                            data-toggle="dropdown"
                                            id="dropdown-15">
                                            
                                            <svg xmlns="http://www.w3.org/2000/svg" id="flag-icons" style="display:none;">
                                                <symbol id="icon-flag-de" viewBox="0 0 512 512"><path d="M15.923 345.043C52.094 442.527 145.929 512 256 512s203.906-69.473 240.077-166.957L256 322.783l-240.077 22.26z" fill="#ffda44"/><path d="M256 0C145.929 0 52.094 69.472 15.923 166.957L256 189.217l240.077-22.261C459.906 69.472 366.071 0 256 0z"/><path d="M15.923 166.957C5.633 194.69 0 224.686 0 256s5.633 61.31 15.923 89.043h480.155C506.368 317.31 512 287.314 512 256s-5.632-61.31-15.923-89.043H15.923z" fill="#d80027"/></symbol>
                                                <symbol id="icon-flag-gb" viewBox="0 0 512 512"><circle cx="256" cy="256" r="256" fill="#f0f0f0"/><g fill="#0052b4"><path d="M52.92 100.142c-20.109 26.163-35.272 56.318-44.101 89.077h133.178L52.92 100.142zM503.181 189.219c-8.829-32.758-23.993-62.913-44.101-89.076l-89.075 89.076h133.176zM8.819 322.784c8.83 32.758 23.993 62.913 44.101 89.075l89.074-89.075H8.819zM411.858 52.921c-26.163-20.109-56.317-35.272-89.076-44.102v133.177l89.076-89.075zM100.142 459.079c26.163 20.109 56.318 35.272 89.076 44.102V370.005l-89.076 89.074zM189.217 8.819c-32.758 8.83-62.913 23.993-89.075 44.101l89.075 89.075V8.819zM322.783 503.181c32.758-8.83 62.913-23.993 89.075-44.101l-89.075-89.075v133.176zM370.005 322.784l89.075 89.076c20.108-26.162 35.272-56.318 44.101-89.076H370.005z"/></g><g fill="#d80027"><path d="M509.833 222.609H289.392V2.167A258.556 258.556 0 0 0 256 0c-11.319 0-22.461.744-33.391 2.167v220.441H2.167A258.556 258.556 0 0 0 0 256c0 11.319.744 22.461 2.167 33.391h220.441v220.442a258.35 258.35 0 0 0 66.783 0V289.392h220.442A258.533 258.533 0 0 0 512 256c0-11.317-.744-22.461-2.167-33.391z"/><path d="M322.783 322.784L437.019 437.02a256.636 256.636 0 0 0 15.048-16.435l-97.802-97.802h-31.482v.001zM189.217 322.784h-.002L74.98 437.019a256.636 256.636 0 0 0 16.435 15.048l97.802-97.804v-31.479zM189.217 189.219v-.002L74.981 74.98a256.636 256.636 0 0 0-15.048 16.435l97.803 97.803h31.481zM322.783 189.219L437.02 74.981a256.328 256.328 0 0 0-16.435-15.047l-97.802 97.803v31.482z"/></g></symbol>
                                                <symbol id="icon-flag-es" viewBox="0 0 512 512"><path d="M0 256c0 31.314 5.633 61.31 15.923 89.043L256 367.304l240.077-22.261C506.367 317.31 512 287.314 512 256s-5.633-61.31-15.923-89.043L256 144.696 15.923 166.957C5.633 194.69 0 224.686 0 256z" fill="#ffda44"/><g fill="#d80027"><path d="M496.077 166.957C459.906 69.473 366.071 0 256 0S52.094 69.473 15.923 166.957h480.154zM15.923 345.043C52.094 442.527 145.929 512 256 512s203.906-69.473 240.077-166.957H15.923z"/></g></symbol>
                                                <symbol id="icon-flag-fr" viewBox="0 0 512 512"><circle cx="256" cy="256" r="256" fill="#f0f0f0"/><path d="M512 256c0-110.071-69.472-203.906-166.957-240.077v480.155C442.528 459.906 512 366.071 512 256z" fill="#d80027"/><path d="M0 256c0 110.071 69.473 203.906 166.957 240.077V15.923C69.473 52.094 0 145.929 0 256z" fill="#0052b4"/></symbol>
                                                <symbol id="icon-flag-it" viewBox="0 0 512 512"><circle cx="256" cy="256" r="256" fill="#f0f0f0"/><path d="M512 256c0-110.071-69.472-203.906-166.957-240.077v480.155C442.528 459.906 512 366.071 512 256z" fill="#d80027"/><path d="M0 256c0 110.071 69.472 203.906 166.957 240.077V15.923C69.472 52.094 0 145.929 0 256z" fill="#6da544"/></symbol>
                                                <symbol id="icon-flag-nl" viewBox="0 0 512 512"><path d="M15.923 345.043C52.094 442.527 145.929 512 256 512s203.906-69.473 240.077-166.957L256 322.783l-240.077 22.26z" fill="#21468B"/><path d="M256 0C145.929 0 52.094 69.472 15.923 166.957L256 189.217l240.077-22.261C459.906 69.472 366.071 0 256 0z" fill="#AE1C28"/><path d="M15.923 166.957C5.633 194.69 0 224.686 0 256s5.633 61.31 15.923 89.043h480.155C506.368 317.31 512 287.314 512 256s-5.632-61.31-15.923-89.043H15.923z" fill="#f0f0f0"/></symbol>
                                            </svg>
                                                    <div class="icon"><svg class="icon"><use xlink:href="#icon-flag-de" /></svg></div>
                                                    <div class="icon"><svg class="icon"><use xlink:href="#icon-flag-gb" /></svg></div>
                                                    <div class="icon"><svg class="icon"><use xlink:href="#icon-flag-es" /></svg></div>
                                                    <div class="icon"><svg class="icon"><use xlink:href="#icon-flag-fr" /></svg></div>
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="dropdown-15">
                                            <li class="">
                                                <a class="dropdown-item "
                                                   role="button"
                                                   href="/"
                                                   hreflang="de"
                                                   title="Deutsch"
                                                   onclick="cre.setCookie('creSelectedLanguage', 'de', '1');"
                                                >
                                                    <svg class="icon"><use xlink:href="#icon-flag-de" /></svg>
                                                    Deutsch
                                                </a>
                                            </li>
                                            <li class="active">
                                                <a class="dropdown-item active"
                                                    role="button"
                                                    href="/en/"
                                                    hreflang="en"
                                                    title="English"
                                                    onclick="cre.setCookie('creSelectedLanguage', 'en', '1');"
                                                >
                                                    <svg class="icon"><use xlink:href="#icon-flag-gb" /></svg>
                                                    English
                                                </a>
                                            </li>
                                            <li class="">
                                                <a class="dropdown-item "
                                                   role="button"
                                                   href="/es/"
                                                   hreflang="es-ES"
                                                   title="Español"
                                                   onclick="cre.setCookie('creSelectedLanguage', 'es', '1');"
                                                >
                                                    <svg class="icon"><use xlink:href="#icon-flag-es" /></svg>
                                                    Español
                                                </a>
                                            </li>
                                            <li class="">
                                                <a class="dropdown-item "
                                                   role="button"
                                                   href="/fr/"
                                                   hreflang="fr-FR"
                                                   title="Français"
                                                   onclick="cre.setCookie('creSelectedLanguage', 'fr', '1');"
                                                >
                                                    <svg class="icon"><use xlink:href="#icon-flag-fr" /></svg>
                                                    Français
                                                </a>
                                            </li>
                                        </div>
                                    </div>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </section>
        </div>
         <div id="content" class="content-section">
            <!--TYPO3SEARCH_begin-->
            <header class="section header-section">
            <div id="c2182" class="frame frame-type-teaser frame-layout-110 center-y">
                <div class="frame-inner">
                    <div class="frame-bg">
                        <div class="bg-image lazyload" data-bgset="/fileadmin/_processed_/3/a/csm_corporate-Splash_0c41a0dba7.jpeg 2400w 1600h, /fileadmin/_processed_/3/a/csm_corporate-Splash_8393d6ee4e.jpeg 1900w, /fileadmin/_processed_/3/a/csm_corporate-Splash_f11ce70145.jpeg 1400w, /fileadmin/_processed_/3/a/csm_corporate-Splash_4b2d293c62.jpeg 1140w, /fileadmin/_processed_/3/a/csm_corporate-Splash_6d8f5e6a55.jpeg 940w, /fileadmin/_processed_/3/a/csm_corporate-Splash_2caf862554.jpeg 720w, /fileadmin/_processed_/3/a/csm_corporate-Splash_c454becc47.jpeg 540w, /fileadmin/_processed_/3/a/csm_corporate-Splash_6728028761.jpeg 320w, /fileadmin/_processed_/3/a/csm_corporate-Splash_01526c86ab.jpeg 150w" data-sizes="auto" title="" data-preload="false" >
                        </div> <noscript> <img src="/fileadmin/_processed_/3/a/csm_corporate-Splash_2caf862554.jpeg" title="" alt="" /> </noscript>
                    </div>
                    <div class="frame-content">
                        <header class="header-n0">
                            <h2 class="header ">The Esoft Group</h2>
                            <h3 class="subheader ">Software. Hardware. Engineering services.</h3>
                        </header>
                    </div>
                </div>
            </div>
            </header>
            <div class="section main-section">
                <div id="c4115" class="frame frame-type-grid-container frame-layout-0 center-xy full-width bg-parallax mt-0 mb-0 pt-2 pb-0 bgcolor-100 bgcolor-inner-100 has-frame-bg  ">
                    <div class="frame-inner">
                        <div class="frame-content" data-opacity="70">
                            <div id="c4114" class="frame frame-type-text frame-layout-0 center-x width-75 pt-2 pr-1 pb-2 pl-1   ">
                                <div class="frame-inner">
                                    <div class="frame-content">
                                        <div class="bodytext">
                                            <p class="text-center">Esoft, a medium-sized company that was founded as an engineering office in 1963, develops software solutions for the sustainable resource management of energy, water and air, for environmental protection and safety, logistics, and 3D viewing and above that measuring instruments for environmental monitoring. Esoft hardware sales department supplies equipment such as large-format printers (2D and 3D) and scanners. The company is also still active in the area of engineering services.</p>
                                            <p class="text-center">Esoft is very much in-demand as a solutions partner in an international context. It has over 750 employees, is headquartered in Aachen, Germany, and has numerous international subsidiaries.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="c3435" class="frame frame-type-grid-flex_columns frame-layout-0 center-x center full-width mt-0 mb-0 pt-3 pb-0">
                <div class="frame-inner">
                    <div class="frame-content flexcols equalheight flexwidth cols-xs-12 cols-sm-12 cols-md-6 cols-lg-3 cols-xl-3">
                    </div>
                    <div id="c3427" class="frame frame-type-teaser frame-layout-100 height-1   ">
                        <div class="frame-inner">
                            <div class="frame-bg">
                                <a href="/en/business-units/energy/"> 
                                    <div class="bg-image lazyload" data-bgset="/fileadmin/_processed_/a/9/csm_csm_Fotolia_61326120_XXL_3cf1bec379_ca45d4ee13.jpg 2400w 1600h, /fileadmin/_processed_/a/9/csm_csm_Fotolia_61326120_XXL_3cf1bec379_5bd72848a6.jpg 1900w, /fileadmin/_processed_/a/9/csm_csm_Fotolia_61326120_XXL_3cf1bec379_2c11e70406.jpg 1400w, /fileadmin/_processed_/a/9/csm_csm_Fotolia_61326120_XXL_3cf1bec379_ade1232537.jpg 1140w, /fileadmin/_processed_/a/9/csm_csm_Fotolia_61326120_XXL_3cf1bec379_50b303d6c9.jpg 940w, /fileadmin/_processed_/a/9/csm_csm_Fotolia_61326120_XXL_3cf1bec379_c8c9d4b696.jpg 720w, /fileadmin/_processed_/a/9/csm_csm_Fotolia_61326120_XXL_3cf1bec379_ab87fc33ec.jpg 540w, /fileadmin/_processed_/a/9/csm_csm_Fotolia_61326120_XXL_3cf1bec379_db0b75b5d1.jpg 320w, /fileadmin/_processed_/a/9/csm_csm_Fotolia_61326120_XXL_3cf1bec379_60577d7151.jpg 150w" 
                                    data-sizes="auto" title="" data-preload="false" >
                            </div> <noscript> <img src="/fileadmin/_processed_/a/9/csm_csm_Fotolia_61326120_XXL_3cf1bec379_c8c9d4b696.jpg" title="" alt="" /> </noscript> </a>
                            </div>
                            <div class="frame-content">
                            </div>
                            <header class="header-n0"><h3 class="header "><a href="/en/business-units/energy/">Energy</a></h3></header>
                            <p><a href="/en/business-units/energy/">Market-compliant and pioneering software solutions</a></p>
                        </div>
                    </div>
                </div>
                <div id="c3428" class="frame frame-type-teaser frame-layout-100 height-1   ">
                    <div class="frame-inner">
                        <div class="frame-bg">
                            <a href="/en/business-units/water/"> 
                                <div class="bg-image lazyload" data-bgset="/fileadmin/_processed_/f/c/csm_csm_Fotolia_74374604_XL_19eeab5a6e_b383b9a942.jpg 2400w 1607h, /fileadmin/_processed_/f/c/csm_csm_Fotolia_74374604_XL_19eeab5a6e_738b308893.jpg 1900w, /fileadmin/_processed_/f/c/csm_csm_Fotolia_74374604_XL_19eeab5a6e_f06e13f694.jpg 1400w, /fileadmin/_processed_/f/c/csm_csm_Fotolia_74374604_XL_19eeab5a6e_515d5d2354.jpg 1140w, /fileadmin/_processed_/f/c/csm_csm_Fotolia_74374604_XL_19eeab5a6e_9000618088.jpg 940w, /fileadmin/_processed_/f/c/csm_csm_Fotolia_74374604_XL_19eeab5a6e_4d9e1b26fa.jpg 720w, /fileadmin/_processed_/f/c/csm_csm_Fotolia_74374604_XL_19eeab5a6e_6009298eb8.jpg 540w, /fileadmin/_processed_/f/c/csm_csm_Fotolia_74374604_XL_19eeab5a6e_e184ee2c1d.jpg 320w, /fileadmin/_processed_/f/c/csm_csm_Fotolia_74374604_XL_19eeab5a6e_6aaafbdb99.jpg 150w" 
                                data-sizes="auto" title="" data-preload="false" >
                        </div> <noscript> <img src="/fileadmin/_processed_/f/c/csm_csm_Fotolia_74374604_XL_19eeab5a6e_4d9e1b26fa.jpg" 
                            title="" alt="" /> </noscript> </a>
                        </div>
                        <div class="frame-content">
                        </div>
                        <header class="header-n0">
                            <h3 class="header ">
                                <a href="/en/business-units/water/">Water</a>
                            </h3>
                        </header>
                        <p><a href="/en/business-units/water/">Software for water management &amp; hydrology </a></p>
                    </div>
                </div>
            </div>
            <div id="c3429" class="frame frame-type-teaser frame-layout-100 height-1   ">
                <div class="frame-inner">
                    <div class="frame-bg">
                        <a href="/en/business-units/monitoring-hyquest-solutions/"> 
                        <div class="bg-image lazyload" data-bgset="/fileadmin/_processed_/a/4/csm_csm_170707_RainTrak_10_fdac051f53_b78076195b.jpg 2400w 1600h, /fileadmin/_processed_/a/4/csm_csm_170707_RainTrak_10_fdac051f53_c1f427f1b6.jpg 1900w, /fileadmin/_processed_/a/4/csm_csm_170707_RainTrak_10_fdac051f53_8b0bbecf71.jpg 1400w, /fileadmin/_processed_/a/4/csm_csm_170707_RainTrak_10_fdac051f53_c3ec298f2f.jpg 1140w, /fileadmin/_processed_/a/4/csm_csm_170707_RainTrak_10_fdac051f53_e293331a72.jpg 940w, /fileadmin/_processed_/a/4/csm_csm_170707_RainTrak_10_fdac051f53_5e060f0e4a.jpg 720w, /fileadmin/_processed_/a/4/csm_csm_170707_RainTrak_10_fdac051f53_749b28b8a5.jpg 540w, /fileadmin/_processed_/a/4/csm_csm_170707_RainTrak_10_fdac051f53_03794855a1.jpg 320w, /fileadmin/_processed_/a/4/csm_csm_170707_RainTrak_10_fdac051f53_2d2e5db518.jpg 150w" 
                            data-sizes="auto" title="" data-preload="false" >
                        </div> <noscript> <img src="/fileadmin/_processed_/a/4/csm_csm_170707_RainTrak_10_fdac051f53_5e060f0e4a.jpg" 
                            title="" alt="" /> </noscript> </a>
                    </div>
                    <div class="frame-content ">
                    </div>
                    <header class="header-n0">
                        <h3 class="header ">
                            <a href="/en/business-units/monitoring-hyquest-solutions/">Monitoring / HyQuest Solutions</a>
                        </h3>
                    </header>
                    <p><a href="/en/business-units/monitoring-hyquest-solutions/">Hardware &amp; software for environmental monitoring</a></p>
                </div>
            </div>
        <div id="c3434" class="frame frame-type-teaser frame-layout-100 height-1   ">
            <div class="frame-inner">
                <div class="frame-bg">
                    <a href="/en/business-units/2d3d-visualisation/"> 
                        <div class="bg-image lazyload" data-bgset="/fileadmin/_processed_/b/6/csm_csm_151117_Motiv-Web-Viewer_o_20cb76c6ae_61ec1805b5.jpg 2400w 993h, /fileadmin/_processed_/b/6/csm_csm_151117_Motiv-Web-Viewer_o_20cb76c6ae_d3c71cfd47.jpg 1900w, /fileadmin/_processed_/b/6/csm_csm_151117_Motiv-Web-Viewer_o_20cb76c6ae_047a5aab86.jpg 1400w, /fileadmin/_processed_/b/6/csm_csm_151117_Motiv-Web-Viewer_o_20cb76c6ae_c578b568ac.jpg 1140w, /fileadmin/_processed_/b/6/csm_csm_151117_Motiv-Web-Viewer_o_20cb76c6ae_87590639d6.jpg 940w, /fileadmin/_processed_/b/6/csm_csm_151117_Motiv-Web-Viewer_o_20cb76c6ae_12e0a25a3f.jpg 720w, /fileadmin/_processed_/b/6/csm_csm_151117_Motiv-Web-Viewer_o_20cb76c6ae_5261648e7d.jpg 540w, /fileadmin/_processed_/b/6/csm_csm_151117_Motiv-Web-Viewer_o_20cb76c6ae_b93525e14d.jpg 320w, /fileadmin/_processed_/b/6/csm_csm_151117_Motiv-Web-Viewer_o_20cb76c6ae_719d9cbe3f.jpg 150w" 
                            data-sizes="auto" title="" data-preload="false" >
                        </div> <noscript> <img src="/fileadmin/_processed_/b/6/csm_csm_151117_Motiv-Web-Viewer_o_20cb76c6ae_12e0a25a3f.jpg" 
                            title="" alt="" /> </noscript> </a>
                </div>
                <div class="frame-content"></div>
                <header class="header-n0">
                    <h3 class="header ">
                        <a href="/en/business-units/2d3d-visualisation/">2D/3D Visualisation</a>
                    </h3>
                </header>
                <p><a href="/en/business-units/2d3d-visualisation/">Viewer solutions</a></p>
            </div>
        </div>
         <div class="section meta-section meta-section-bottom">
            <nav class="navbar navbar-default navbar-has-image navbar-bottom" role="navigation">
            <div class="container">
                <a class="navbar-brand navbar-brand-image" title="Homepage" href="/en/">
                <img class="navbar-brand-logo-normal" src="/typo3conf/ext/kisters/Resources/Public/Images/Logo/kisters-logo.svg"
                    alt="KISTERS GROUP" width="180"/></a>
                <ul class="navbar-nav list-unstyled flex-row flex-wrap">
                    <li class="nav-item">
                        <a class="nav-link" href="/en/legal-disclosure/" title="Legal Disclosure">
                                Legal Disclosure
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/en/data-privacy-statement/" title="Data Privacy Statement">
                                Data Privacy Statement
                        </a>
                    </li>
                </ul>
            </div>
            </nav>
        </div>
    </div>

<script src="JS/Ravi2.js" type="text/javascript"></script>
</body>
</html>

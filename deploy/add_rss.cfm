<!-- Current Directory -->
<CFSET CurrentDir=GetDirectoryFromPath(ExpandPath("*.*"))>
<!-- New RSS File -->
<CFSET RSSInfo = new_xml>
<CFSET RSSName = targetURL>
<CFSET RSSFile = "#RSSName#">
<CFSET RSSPath = CurrentDir & RSSFile>
<!-- Save Files -->
<CFFILE ACTION="write" FILE="#RSSPath#" OUTPUT="#RSSInfo#">
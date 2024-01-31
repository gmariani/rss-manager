<!-- Current Directory -->
<CFSET CurrentDir=GetDirectoryFromPath(ExpandPath("*.*"))>
<!-- New RSS File -->
<CFSET RSSInfo = new_xml>
<CFSET RSSName = targetURL>
<CFSET RSSFile = "#RSSName#">
<CFSET RSSPath = CurrentDir & RSSFile>
<!-- Update Directory ->
<CFSET DirInfo = new_dir>
<CFSET DirFile = "directory.xml">
<CFSET DirPath = CurrentDir & DirFile>
<!-- Save Files -->
<CFFILE ACTION="write" FILE="#RSSPath#" OUTPUT="#RSSInfo#">
<CFFILE ACTION="write" FILE="#DirPath#" OUTPUT="#DirInfo#">
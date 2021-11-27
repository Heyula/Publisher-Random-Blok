# Publisher-Random-Blok
New Block for Publisher Module  With this code, you can pull content added to the publisher module wherever you want in your theme. 


Definitions in Code :
<br>
7th in line of code 
<br>
$limit = 3  : How many articles are published
<br>
$start = 0  : From which category (0 for all categories)
<br>


<{$title}> = Article Title
<br>
<{$itemid}> = Article ID
<br>
<{$body|truncate:230}> = Article Content
<br>
<{$xoops_url}>/modules/publisher/item.php?itemid=<{$itemid}> = Article Link
<br>
<{$image}> = Article Image
<br>
<{$votes}> = Article Votes

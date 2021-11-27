# Publisher-Random-Blok
New Block for Publisher Module  With this code, you can pull content added to the publisher module wherever you want in your theme. 


Definitions in Code :
<br>
7th in line of code 

$limit = 3  : How many articles are published
$start = 0  : From which category (0 for all categories)


<{$title}> = Article Title
<{$itemid}> = Article ID
<{$body|truncate:230}> = Article Content
<{$xoops_url}>/modules/publisher/item.php?itemid=<{$itemid}> = Article Link
<{$image}> = Article Image
<{$votes}> = Article Votes

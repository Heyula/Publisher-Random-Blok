<{php}>
use XoopsModules\Publisher;
use XoopsModules\Publisher\Constants;

$helper = Publisher\Helper::getInstance();
$myts =& MyTextSanitizer::getInstance();
$itemsObj = $helper->getHandler('Item')->getItems($limit = 3, $start = 0, [Constants::PUBLISHER_STATUS_PUBLISHED], -1, $sort = 'RAND()', $order='', '', true, $criteria = null);
$totalItems = count($itemsObj);

global $items;
$items = array();
if ($itemsObj) {
    for ( $i = 0; $i < $totalItems; $i++ ) {
        $newItems['itemid']       = $itemsObj[$i]->itemid();
        $newItems['title']        = $itemsObj[$i]->title();
        $newItems['body']         = $itemsObj[$i]->body();
        $newItems['votes']        = $itemsObj[$i]->votes();
		$newItems['counter']        = $itemsObj[$i]->counter();
		$newItems['comments']        = $itemsObj[$i]->comments();
        $newItems['image']        = XOOPS_URL . '/uploads/blank.gif';
        $images = $itemsObj[$i]->getImages();
        if (is_object($images['main'])) {
            $newItems['image'] = XOOPS_URL . '/uploads/' . $images['main']->getVar('image_name');
        }
    $items[] = $newItems;
    }
}
<{/php}>
<!-- Slider -->
		
		
            <{php}>
        foreach ( $GLOBALS['items'] as $myrow )
        {
            $GLOBALS['xoopsTpl']->assign('itemid', $myrow['itemid']);
            $GLOBALS['xoopsTpl']->assign('title', $myrow['title']);
            $GLOBALS['xoopsTpl']->assign('body', $myrow['body']);
            $GLOBALS['xoopsTpl']->assign('votes', $myrow['votes']);
			$GLOBALS['xoopsTpl']->assign('counter', $myrow['counter']);
			$GLOBALS['xoopsTpl']->assign('comments', $myrow['comments']);
            $GLOBALS['xoopsTpl']->assign('image', $myrow['image']);
        <{/php}>
<div class="col-lg-4 col-md-12 col-xl-4">
<div class="card">
				<div class="img-fix-height cover-image">
				<img src="<{$image}>">
				</div>
				<div class="card-body p-4">
					<a href="<{$xoops_url}>/modules/publisher/item.php?itemid=<{$itemid}>" class="text-dark"><h4 class="font-weight-semibold text-truncate mb-3"><{$title}></h4></a>
					<p class="fix-max-height"><{$body|truncate:230}></p>
					<br>
					<a class="btn btn-primary btn-teal" href="<{$xoops_url}>/modules/publisher/item.php?itemid=<{$itemid}>">Read more</a>
					<br>
					Rating:<{$votes}>
					<br>
					Reads:<{$counter}>
					<br>
					Comments:<{$comments}>		
				
				</div>
</div>
</div>
        <{php}>
        }
        <{/php}> 
		
		

<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Organique &middot; <?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($ogimage) { ?>
<meta property="og:image" content="<?php echo $ogimage; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/paperfold.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery.sticky.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="bower_components/animate.css/animate.min.css">
<!-- <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" /> -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href="catalog/view/theme/organiqueshop/stylesheet/main.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo $class; ?>">
  <div id="page">
  <div class="container">
    <nav id="top">
      <div class="row">
      <div class="col-sm-12">
        <div id="top-links" class="nav pull-right">
          <ul class="list-inline">
            <li>
              <form method="get" action="/image/catalog/pdf/organiqueshop-updated-catalog.pdf">
                <button class="download-cat-button" type="submit"><?php echo $text_button_download; ?></button>
              </form>
            </li>
            <li class="dropdown hidden"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
              <ul class="dropdown-menu dropdown-menu-right">
                <?php if ($logged) { ?>
                <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                <?php } else { ?>
                <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                <?php } ?>
              </ul>
            </li>
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li class="hidden"><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li class="hidden"><a href="<?php echo $login; ?>"><i class="fa fa-user"></i> <?php echo $text_login; ?></a></li>
            <?php } ?>
            <li class="hidden"><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
            <li class="hidden"><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>" class="cart-button"><i class="fa fa-shopping-cart"></i> <span class=""><?php echo $text_shopping_cart; ?></span></a></li>
            <li class="hidden"><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
          </ul>
        </div>
      </div>
      </div>
    </nav>
  <div class="content-wrapper">
    <header class="top-header">
        <div class="row">
          <div class="col-xs-12 col-sm-8 col-md-8 col-lg-4">
            <div id="logo" class="">
              <?php if ($logo) { ?>
              <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" rel="logo" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
              <?php } else { ?>
              <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
              <?php } ?>
            </div>
            <div class="brand-text">
              <h2>Organique</h2>
              <p>
              Product with environmental <br />
              friendly shop
              </p>
            </div>
          </div>
          <div class="col-sm-4 col-md-4 col-lg-3 col-lg-push-5"><?php echo $search; ?>
          </div>
          <div class="col-sm-3 hidden"><?php echo $cart; ?></div>
          <div class="col-xs-12 col-lg-8">
            <nav id="menu" class="navbar">
              <div class="navbar-header" data-toggle="collapse" data-target=".navbar-ex1-collapse"><span id="category" class="visible-xs"><?php echo $text_menu; ?></span>
                <div type="button" class="btn btn-navbar navbar-toggle"><i class="fa fa-bars"></i></div>
              </div>
              <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                  <li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
                  <?php if ($categories) { ?>
                  <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo $text_product; ?>&nbsp;&nbsp;<span class="fa fa-caret-down"></span></a>
                    <div class="dropdown-menu">
                      <ul class="list-unstyled">
                           <?php foreach ($categories as $category) { ?>
                            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                            <?php } ?>
                      </ul>
                    </div>
                  </li>
                  <?php } ?>
                  <?php if ($informations) { ?>
                  <?php foreach ($informations as $information) { ?>
                    <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                  <?php } ?>
                  <?php } ?>
                  <li><a href="<?php echo $blog; ?>"><?php echo $text_blog; ?></a></li>
                  <li><a href="<?php echo $about; ?>"><?php echo $text_about; ?></a></li>
                  <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                </ul>
              </div>
            </nav>
          </div>
        </div>
    </header>
  </div>
</div>

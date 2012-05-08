<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset={charset}" />
        <title>{pagegetvar name='title'}</title>
        <meta name="description" content="{$metatags.description}" />
        <meta name="keywords" content="{$metatags.keywords}" />
        <meta http-equiv="X-UA-Compatible" content="chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <!-- Le styles -->
    <link href="themes/default/assets/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="themes/default/assets/css/bootstrap-responsive.css" rel="stylesheet">

    {browserhack condition="if lt IE 9" assign="ieconditional"}
     
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    {/browserhack}

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="themes/default/assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="themes/default/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="themes/default/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="themes/default/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="themes/default/assets/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <body>

    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="{homepage}">{$modvars.ZConfig.sitename}</a>
          <div class="btn-group pull-right">
            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
              <i class="icon-user"></i> Username
              <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
              <li><a href="#">Profile</a></li>
              <li class="divider"></li>
              <li><a href="#">Sign Out</a></li>
            </ul>
          </div>
          <div class="nav-collapse">
            <ul class="nav">
               <li class="active"><a href="{homepage}" title="{gt text="Go to the site's home page"}">{gt text='Home'}</a></li>
			   <li><a href="{modurl modname='Users' type='user' func='main'}" title="{gt text='Go to your account panel'}">{gt text="My Account"}</a></li>
			   <li><a href="{modurl modname='Search' type='user' func='main'}" title="{gt text='Search this site'}">{gt text="Site search"}</a></li>
    
            </ul>
			
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Sidebar</li>
              <li class="active"><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>          
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
          
          <div class="row-fluid">
             {$maincontent}
        </div><!--/span-->
      </div><!--/row-->

      <hr>

      <footer>
        <p>&copy; {$modvars.ZConfig.sitename}</p>
      </footer>

    </div><!--/.fluid-container-->
	</div>
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    {pageaddvar name='javascript' value='jquery'}
    <script src="themes/default/assets/js/bootstrap-transition.js"></script>
    <script src="themes/default/assets/js/bootstrap-alert.js"></script>
    <script src="themes/default/assets/js/bootstrap-modal.js"></script>
    <script src="themes/default/assets/js/bootstrap-dropdown.js"></script>
    <script src="themes/default/assets/js/bootstrap-scrollspy.js"></script>
    <script src="themes/default/assets/js/bootstrap-tab.js"></script>
    <script src="themes/default/assets/js/bootstrap-tooltip.js"></script>
    <script src="themes/default/assets/js/bootstrap-popover.js"></script>
    <script src="themes/default/assets/js/bootstrap-button.js"></script>
    <script src="themes/default/assets/js/bootstrap-collapse.js"></script>
    <script src="themes/default/assets/js/bootstrap-carousel.js"></script>
    <script src="themes/default/assets/js/bootstrap-typeahead.js"></script>

  </body>
</html>

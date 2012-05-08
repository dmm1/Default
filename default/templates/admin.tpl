<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset={charset}" />
        <title>{pagegetvar name='title'}</title>
        <meta name="description" content="{$metatags.description}" />
        <meta name="keywords" content="{$metatags.keywords}" />
        <meta http-equiv="X-UA-Compatible" content="chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <!-- Le styles -->
    <link href="themes/default/assets/css/core/bootstrap.css" rel="stylesheet">
	<link href="themes/default/assets/css/overrides.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="themes/default/assets/css/core/bootstrap-responsive.css" rel="stylesheet">

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
		  {if $coredata.logged_in eq true}
            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
              <i class="icon-user"></i> {userwelcome|ucwords}
              <span class="caret"></span>
            </a>
				<ul class="dropdown-menu">
				 {checkpermissionblock component='.*' instance='.*' level=ACCESS_ADMIN}
				 <li><a href="{modurl modname='Admin' type='admin' func='adminpanel'}">{gt text='Administration'}</a></li>
				 {/checkpermissionblock}
				 <li><a href="#">Profile</a></li>
				 <li class="divider"></li>
				 <li><a href="#" >Sign Out</a></li>
				 </ul>
                {else}
                <a href="{modurl modname='Users' type='user' func='login'}">Login</a>
                {/if}
           
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

    <div class="container">
      {$maincontent}
    
	<footer class="well">
		<p>&copy; {$modvars.ZConfig.sitename}</p>
	</footer>

   <!--/.fluid-container-->
</div>
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	{pageaddvar name='javascript' value='jquery'}
    <script src="themes/default/assets/js/core/bootstrap-transition.js"></script>
    <script src="themes/default/assets/js/core/bootstrap-alert.js"></script>
    <script src="themes/default/assets/js/core/bootstrap-modal.js"></script>
    <script src="themes/default/assets/js/core/bootstrap-dropdown.js"></script>
    <script src="themes/default/assets/js/core/bootstrap-scrollspy.js"></script>
    <script src="themes/default/assets/js/core/bootstrap-tab.js"></script>
    <script src="themes/default/assets/js/core/bootstrap-tooltip.js"></script>
    <script src="themes/default/assets/js/core/bootstrap-popover.js"></script>
    <script src="themes/default/assets/js/core/bootstrap-button.js"></script>
    <script src="themes/default/assets/js/core/bootstrap-collapse.js"></script>
    <script src="themes/default/assets/js/core/bootstrap-carousel.js"></script>
    <script src="themes/default/assets/js/core/bootstrap-typeahead.js"></script>

  </body>
</html>

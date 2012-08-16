<div class="navbar navbar-fixed-top" id="top">
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
				 <li><a href="/profile">Profile</a></li>
				 <li class="divider"></li>
				 <li><a href="#" >Sign Out</a></li>
				 </ul>
                {else}
                <a href="{modurl modname='Users' type='user' func='login'}">Login/Register</a>
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
<!DOCTYPE HTML>
<html>
    <head>
        {include file='includes/header.tpl'}
    </head>
		<body>
			{include file='includes/topnav.tpl'}
    
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span3">
						<div class="well sidebar-nav">
							{blockposition name=left}
							{blockposition name=right}
			
						</div><!--/.well -->
					</div><!--/span3-->
					<div class="span9">
						{blockposition name=center}
					<div class="row-fluid">
						{$maincontent}
					</div><!--/row-fluid-->
					</div><!--/span9-->

				</div><!--/row-fluid-->
			</div><!--/container-fluid-->
			
			{include file='includes/footer.tpl'}
  </body>
</html>
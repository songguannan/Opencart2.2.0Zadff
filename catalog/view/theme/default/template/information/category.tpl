<?php echo $header; ?>
<div class="container">
	<ul class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<li><a href="<?php echo $breadcrumb['href'];?>"><?php echo $breadcrumb['text']; ?></a>
			</li>
		<?php } ?>
	</ul>
		<div class="row">
			<?php if ($informations) { ?>
		        <div class="col-sm-12">
		          	<?php foreach ($informations as $information) { ?>
		          		<?php if ($information['thumimg']) { ?>
			          		<div class="container">
							    <div class="row col-md-12 thum-warp">
					                <div class="col-md-2 left thum-imgwh">
					                	<a href="<?php echo $information['href']; ?>">
					                		<?php echo $information['thumimg']; ?>
					                	</a>
					                </div>
						                <div class="col-md-10 right thum-right">
						                	<div class="panel panel-info thum-border-left-radius thum-border-left-style" >
												<div class="panel-heading thum-border-left-radius thum-heading">
												  	<h3 class="panel-title thum-title"><?php echo $information['title']; ?></h3>
												</div>
											    <div class="panel-body thum-body">
											    	<?php echo $information['description']; ?>
											  	</div>
											  	<div class="panel-footer thum-footer thum-border-left-radius">
											  	 	<div class="thum-border-left-radius col-md-5 thum-time">
												    	<?php echo $information['createtime']; ?>
												    </div>
												    <div class="col-md-5 thum-detail">
												    	<a href="<?php echo $information['href']; ?>">查看详情>></a>
												    </div>
												</div>
											</div>
										</div>
							    </div>
							</div>
						<?php }else{ ?>
							<div class="container">
								<div class="row col-md-12 thum-warp">
									<div class="panel panel-info">
										<div class="panel-heading">
											<h3 class="panel-title thum-title"><?php echo $information['title']; ?></h3>
										</div>
									    <div class="panel-body">
									    	<?php echo $information['description']; ?>
									    </div>
										<div class="panel-footer thum-footer thum-border-left-radius">
									  	 	<div class="thum-border-left-radius col-md-5 thum-time">
										    	<?php echo $information['createtime']; ?>
										    </div>
										    <div class="col-md-5 thum-detail">
										    	<a href="<?php echo $information['href']; ?>">查看详情>></a>
										    </div>
										</div>
									</div>
								</div>
							</div>

						<?php } ?>
		          	<?php } ?>
		        </div>
		    <?php } ?>
		</div>
		<!-- 分页 -->
		<div class="row">
          <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
          <div class="col-sm-6 text-right"><?php echo $results; ?></div>
        </div>
</div>
<?php echo $footer; ?>
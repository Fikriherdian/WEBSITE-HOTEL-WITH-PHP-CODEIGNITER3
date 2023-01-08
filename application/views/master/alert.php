<?php if (!empty($_SESSION['ipw'])):?>
<div class="container">
	<div class="col-12 text-center">
		<p class="alert-danger rounded"><?php echo $_SESSION['ipw'];
		unset($_SESSION['ipw']);?></p>
	</div>
</div>
<?php endif;?>
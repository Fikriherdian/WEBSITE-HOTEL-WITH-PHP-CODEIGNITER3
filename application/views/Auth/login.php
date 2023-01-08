
<?php $this->load->view('master/head');?>
<?php $this->load->view('master/alert');?>
<div class="row">
	<div class="col-6">
		<form method="POST" action="<?= base_url('/Auth/cekusers') ?>">
			<div class="row">
				<div class="col-md-12">
					<h1 class="text-center">Login</h1>
				</div>
				<div class="col-12">
					<div class="row">
						<div class="col-1">
							<i class="bi bi-person-circle" style="font-size: 35px;"></i>
						</div>
						<div class="col-11">
							<input required class="form-control" type="text" name="username" placeholder="Masukan Username">
						</div>
					</div>
				</div>
				<div class="col-12">
					<div class="row">
						<div class="col-1">
							<i class="bi bi-key" style="font-size: 35px;"></i>
						</div>
						<div class="col-11">
							<input required class="form-control" type="password" name="password" placeholder="Masukan Kata Sandi">
						</div>
					</div>
				</div>
				<button type="submit" class="btn btn-primary active col-12">Login</button>
			</div>
			
		</form>
	</div>
	<div class="col-6">
		<div class="card mb-3">
		  <img src="https://atpetsi.or.id/uploads/article/view/210507061237200228114324hotel.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">Dapatkan Promo Menarik</h5>
		    <p class="card-text">Daftar Sekarang Juga!</p>
		  </div>
		</div>
	</div>
</div>
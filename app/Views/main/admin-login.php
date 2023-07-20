<?= $this->extend('layout/login-frame'); ?>
<?= $this->section('content') ?>


<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center">

		</div>
		<div class="row justify-content-center">
			<div class="col-md-12 col-lg-10">
				<div class="wrap d-md-flex">
					<div class="img" style="background-image: url('<?= base_url('asset/login/images/login.jpeg'); ?>');">
					</div>
					<div class="login-wrap p-4 p-md-5">
						<div class="d-flex">
							<div class="w-100">
								<img class="login-logo" src="<?= base_url('asset/img/Logo-web2.png'); ?>" alt="">
								<h3 class="mb-4">Login <p class="role">Admin</p>
								</h3>
							</div>

						</div>
						<form action="#" class="signin-form">
							<div class="form-group mb-3">
								<label class="label" for="name">Username</label>
								<input type="text" class="form-control" placeholder="Username" required>
							</div>
							<div class="form-group mb-3">
								<label class="label" for="password">Password</label>
								<input type="password" class="form-control" placeholder="Password" required>
							</div>
							<div class="form-group">
								<button type="submit" class="form-control btn btn-primary-login rounded submit px-3">Sign In</button>
							</div>
							<div class="form-group d-md-flex">
								<div class="w-50 text-left">
									<label class="checkbox-wrap checkbox-primary mb-0">Remember Me
										<input type="checkbox" checked>
										<span class="checkmark"></span>
									</label>
								</div>

							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<?= $this->endSection('content') ?>
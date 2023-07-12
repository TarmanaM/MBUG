<?= $this->extend('layout/web-MBUG-admin'); ?>
<?= $this->section('content') ?>
<div class="content-body">
    <!-- row -->
    <div class="container-fluid">

        <div class="col-sm-6 p-md-0  mt-2 mt-sm-0 d-flex">
            <ol class="breadcrumb">
                <!-- Ubah disini -->
                <li class="breadcrumb-item"><a href="/home">
                        <img class="logo-abbr logo-home" src="<?= base_url('asset/img/Home.png'); ?>" alt="">
                        Dashboard</a></li>
                <li class="breadcrumb-item active"><a href="/prestasi">Laporan Prestasi</a></li>
                <li class="breadcrumb-item active"><a href="/prestasi/add">Tambah Prestasi</a></li>


            </ol>
        </div>

        <div class="row">
            <!-- Ubah disini -->
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <div class="container1">
                            
                            <h3>Tambah Prestasi</h3>
                        </div>

                    </div>
                    <div class="card-body">

                        <form action="#" method="post">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-8">
                                    <div class="container1 custom-container-form col-lg-12 col-md-12 col-sm-12 ">
                                        <label class="label-form">Nama</label>
                                        <input type="text" class="form-control custom-textfield ">
                                    </div>
                                    <div class="container1 custom-container-form col-lg-12 col-md-12 col-sm-12 ">
                                        <label class="label-form">NPM</label>
                                        <input type="text" class="form-control custom-textfield ">
                                    </div>

                                    <div class="container1 custom-container-form col-lg-12 col-md-12 col-sm-12 ">
                                        <label class="label-form">Program Studi</label>
                                        <input type="text" class="form-control custom-textfield ">
                                    </div>
                                    <div class="container1 custom-container-form col-lg-12 col-md-12 col-sm-12 ">
                                        <label class="label-form">Jenis Beasiswa</label>
                                        <input type="text" class="form-control custom-textfield ">
                                    </div>

                                    <div class="container1 custom-container-form col-lg-12 col-md-12 col-sm-12 ">
                                        <label class="label-form">Tingkat</label>
                                        <input type="text" class="form-control custom-textfield ">
                                    </div>
                                    <div class="container1 custom-container-form col-lg-12 col-md-12 col-sm-12 ">
                                        <label for="status" class="label-form">Jenis Prestasi</label>
                                        <input type="radio" class="margin-custom" name="nilai" value="1"> Tim<br>
                                        <input type="radio" class="margin-custom" name="nilai" value="0" checked> Individu<br>

                                        <!-- <div class="invalid-feedback">
                                            
                                        </div> -->
                                    </div>
                                    <div class="container1 custom-container-form col-lg-12 col-md-12 col-sm-12 ">
                                        <label class="label-form">Nama Kegiatan</label>
                                        <input type="text" class="form-control custom-textfield ">
                                    </div>

                                    <div class="container1 custom-container-form col-lg-12 col-md-12 col-sm-12 ">
                                        <label class="label-form">Capaian</label>
                                        <select class="form-control  custom-textfield col-lg-6 col-md-12 col-sm-12">
                                            <option></option>
                                            <option value="2018">Juara I</option>
                                            <option value="2019">Juara II</option>
                                            <option value="2020">Juara III</option>
                                            <option value="2021">Harapan I</option>
                                            <option value="2022">Harapan II</option>
                                            <option value="2022">Harapan III</option>
                                            <option value="2022">Harapan IV</option>
                                            <option value="2022">Partisipatif</option>
                                            <option value="2022">Finalis</option>
                                            <option value="2022">Lainnya</option>

                                        </select>
                                    </div>
                                    <div class="container1 custom-container-form col-lg-12 col-md-12 col-sm-12 ">
                                        <label class="label-form">Tempat</label>
                                        <input type="text" class="form-control custom-textfield ">
                                    </div>
                                    <div class="container1 custom-container-form col-lg-12 col-md-12 col-sm-12 ">
											
												<label class="label-form">Tanggal</label>
												<input name="datepicker" class="custom-textfield datepicker-default form-control" id="datepicker">											
										</div>

                                    <div class="container1 custom-container-form col-lg-12 col-md-12 col-sm-12 ">
                                        <label class="label-form">Penyelenggara</label>
                                        <input type="text" class="form-control custom-textfield ">
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12">
											<div class="form-group fallback w-100">
                                            <label class="label-form">Upload Bukti</label>
												<input type="file" class="dropify" data-default-file="">
											</div>
										</div>
                                    <div class="container1 custom-container-form col-lg-12 col-md-12 col-sm-12 ">
                                        <label class="label-form">Tautan Publikasi</label>
                                        <input type="url" class="form-control custom-textfield ">
                                    </div>

                                    <div class="container1 custom-container-form col-lg-12 col-md-12 col-sm-12 ">
                                        <button type="submit" class="btn btn-primary margin-custom">Tambah Data</button>
                                        <a href="/prestasi" class="btn btn-warning margin-custom">Batal</a>
                                    </div>

                                </div>
                            </div>
                        </form>


                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<?= $this->endSection('content') ?>
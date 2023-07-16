<?= $this->extend('layout/web-MBUG-admin'); ?>
<?= $this->section('content') ?>
<div class="content-body">
    <!-- row -->
    <div class="container-fluid">

        <div class="col-sm-6 p-md-0  mt-2 mt-sm-0 d-flex">
            <ol class="breadcrumb">
                <!-- Ubah disini -->
                <li class="breadcrumb-item"><a href="/admin/home">
                        <img class="logo-abbr logo-home" src="<?= base_url('asset/img/Home.png'); ?>" alt="">
                        Dashboard</a></li>
                <li class="breadcrumb-item active"><a href="/admin/pengumuman">Pengumuman</a></li>
                <li class="breadcrumb-item active"><a href="/admin/pengumuman/edit">Edit Pengumuman</a></li>


            </ol>
        </div>

        <div class="row">
            <!-- Ubah disini -->
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <div class="container1">

                            <h3>Edit Pengumuman</h3>
                        </div>

                    </div>
                    <div class="card-body">

                        <form action="#" method="post">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <div class="container1 custom-container-form col-lg-8 col-md-8 col-sm-8 ">

                                        <label class="label-form">Tanggal Terbit</label>
                                        <input name="datepicker" class="custom-textfield datepicker-default form-control" id="datepicker">
                                    </div>
                                    <div class="container1 custom-container-form col-lg-8 col-md-8 col-sm-8 ">

                                        <label class="label-form">Batas Terbit</label>
                                        <input name="datepicker" class="custom-textfield datepicker-default form-control" id="datepicker">
                                    </div>

                                    <div class="container1 custom-container-form col-lg-8 col-md-8 col-sm-8 ">
                                        <label class="label-form">Judul Pengumuman</label>
                                        <input type="text" class="form-control custom-textfield ">
                                    </div>

                                    <div class="container1-up custom-container-form col-lg-12 col-md-12 col-sm-12 ">
                                        <label class="label-form">Deskripsi</label>
                                        <textarea class="form-control custom-textfield" rows="10"></textarea>
                                    </div>


                                    <div class="container1 custom-container-form col-lg-12 col-md-12 col-sm-12 ">
                                        <button type="submit" class="btn btn-primary margin-custom">Edit Data</button>
                                        <a href="pengumuman.html" class="btn btn-warning margin-custom">Batal</a>
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
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
        <title>Tambah Tanggapan</title>
    </head>
    <body>
    <div class="container">
            <div class="card mt-5">
                <div class="card-header">
              <div class="panel-head container-fluid" style="margin-top: 10px;">
                <p></p>
              </div>
              <!-- <div class="card-body">
                <form method="post" action="/tanggapan/store" method="post" enctype="multipart/form-data"> {{ csrf_field() }} -->
                <!-- <div class="form-group">
                    <label class="control-label col-md-8">ID Tanggapan</label>
                    <div class="col-md-20">
                      <input type="text" class="form-control" name="id_tanggapan">
                    </div>
                  </div> -->
                  <div class="form-group">
                    <label class="control-label col-md-12">ID Pengaduan</label>
                    <div class="col-sm-20">
                    {{ $pengaduan->id_pengaduan }}
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-8">Tanggal Pengaduan</label>
                    <div class="col-sm-20">
                    {{ $pengaduan->tgl_pengaduan }}
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-8">NIK</label>
                    <div class="col-sm-20">
                    {{ $pengaduan->nik }}
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-8">Isi Laporan</label>
                    <div class="col-sm-20">
                    {{ $pengaduan->isi_laporan }}
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <a href="/pengaduan" class="btn btn-danger">Kembali</a>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
</body>
</html>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
        <title>Pengaduan</title>
    </head>
    <body>
              <div class="container">
               <div class="card mt-5">
                <div class="card-header text-left">
                <a href="/pengaduan/create" class="btn btn-primary"><i class="fa fa-plus"></i>Tambah</a>
                <div class="pull-right"> </br>
              <div class="panel-body">
                <table class="table table-bordered table-hover table-striped">
                  <thead>
                    <tr>
                      <th>No</th>
                      <!-- <th>ID</th> -->
                      <th>Tanggal Pengaduan</th>
                      <th>NIK</th> 
                      <th>Isi Laporan</th>
                      <th>Foto</th> 
                      <th>Status</th> 
                      <th >Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach ($pengaduan as $i => $p)
                    <tr>
                      <td>{{ $i+1 }}</td>
                      <!-- <td>{{ $p->id_pengaduan }}</td> -->
                      <td>{{ date('d F Y', strtotime($p->tgl_pengaduan)) }}</td>
                      <td>{{ $p->nik }}</td> 
                      <td>{{ $p->isi_laporan }}</td> 
                      <td>
                          <img src="{{ asset('storage/' . $p->foto ) }}" height="15%" width="30%"> 
                          <a href="{{ asset('storage/'. $p->foto ) }}"  rel="noopener noreferrer">Lihat Gambar</a> 
                      </td> 
                      <td>
                        <label class="label label-success">{{ ($p->status == 1) ? 'Masa Proses' : 'Proses' }}</label>
                      </td> 
                      <td> 
                        @if($p->status == 0)
                        <a href="/pengaduan/status/{{ $p->id_pengaduan }}" class="btn btn-sm btn-primary" onclick="return confirm('Yakin Ingin Memproses Data Ini?')">Proses</a>
                        @else
                        <a href="#" class="btn btn-sm btn-success" disabled>Masa Proses</a> 
                        @endif 
                      <td>
                      <a href="/pengaduan/edit/{id_pengaduan}" class="btn btn-success">Edit</a>
                      <a href="/pengaduan/show/{id_pengaduan}" class="btn btn-warning">Detail</a>
                      <a href="/pengaduan/destroy/{{ $p->id_pengaduan }}" class="btn btn-danger">Hapus</a>
                      </td>
                    </tr>
                    @endforeach
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
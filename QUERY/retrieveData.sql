SELECT kode_barang,
    nama_barang,
    harga_barang
FROM barang
WHERE harga_barang = 10000
    AND kode_barang = 'B01';
SELECT kode_kasir,
    nama_kasir,
    jk_kasir
FROM kasir
WHERE jk_kasir = "pria"
    AND kode_kasir = 'K08';
SELECT kode_pelanggan,
    nama_pelanggan,
    alamat_pelanggan
FROM pelanggan
WHERE alamat_pelanggan = 'Medan'
    AND kode_pelanggan = 'P01';
SELECT no_transaksi,
    tgl_transaksi,
    jumlah_barang
FROM transaksi
WHERE jumlah_barang = 1
    AND no_transaksi = 'T01';
UPDATE barang
SET stok_barang = 30
WHERE kode_barang = 'B08';
UPDATE kasir
SET nohp_kasir = '081366881200'
WHERE kode_kasir = 'K01';
UPDATE pelanggan
SET nama_pelanggan = 'Aloysius Riandika'
WHERE kode_pelanggan = 'P01';
UPDATE transaksi
SET kode_barang = 'B03'
WHERE no_transaksi = 'T05';
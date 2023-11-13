SELECT barang.nama_barang AS barang,
    transaksi.no_transaksi,
    COUNT(transaksi.kode_barang) AS Terjual
FROM transaksi
    INNER JOIN barang ON transaksi.kode_barang = barang.kode_barang
GROUP BY transaksi.kode_barang
ORDER BY COUNT(transaksi.kode_barang) DESC
LIMIT 3;
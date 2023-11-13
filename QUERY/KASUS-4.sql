SELECT AVG(transaksi.total_harga) AS ratarata_transaksi
FROM transaksi
WHERE MONTH(transaksi.tgl_transaksi);
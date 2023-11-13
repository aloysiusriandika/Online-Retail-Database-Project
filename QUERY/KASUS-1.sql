INSERT INTO transaksi (
        no_transaksi,
        kode_kasir,
        kode_pelanggan,
        kode_barang,
        tgl_transaksi,
        jumlah_barang,
        total_harga
    )
VALUES (
        'T11',
        'K10',
        'P01',
        'B01',
        '2023-11-03',
        3,
        30000
    );
INSERT INTO transaksi (
        no_transaksi,
        kode_kasir,
        kode_pelanggan,
        kode_barang,
        tgl_transaksi,
        jumlah_barang,
        total_harga
    )
VALUES (
        'T12',
        'K10',
        'P01',
        'B05',
        '2023-11-03',
        2,
        110000
    );
INSERT INTO transaksi (
        no_transaksi,
        kode_kasir,
        kode_pelanggan,
        kode_barang,
        tgl_transaksi,
        jumlah_barang,
        total_harga
    )
VALUES (
        'T13',
        'K10',
        'P01',
        'B08',
        '2023-11-03',
        2,
        50000
    );
SELECT no_transaksi,
    kode_kasir,
    kode_pelanggan,
    kode_barang,
    tgl_transaksi,
    jumlah_barang
from transaksi
WHERE kode_pelanggan = 'P01';
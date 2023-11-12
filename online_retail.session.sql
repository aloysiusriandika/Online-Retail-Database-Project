/* Table Barang*/
INSERT INTO barang (
        kode_barang,
        nama_barang,
        stok_barang,
        harga_barang
    )
VALUES ('B01', 'Spidol', 20, 10000),
    ('B02', 'Bantal', 10, 15000),
    ('B03', 'Handuk', 25, 45000),
    ('B04', 'Gunting', 15, 8000),
    ('B05', 'Handuk', 25, 55000),
    ('B06', 'Kipas Angin', 25, 5000),
    ('B07', 'Dompet Kulit', 15, 6000),
    ('B08', 'Lampu Bohlam', 10, 25000),
    ('B09', 'Mangkuk', 25, 15000),
    ('B10', 'Tas Sekolah', 30, 5000);
/* Table Kasir*/
INSERT INTO kasir (kode_kasir, nama_kasir, jk_kasir, nohp_kasir)
VALUES ('K01', 'Aloy', 'Pria', '081254676543'),
    ('K02', 'Bila', 'Wanita', '081365454321'),
    ('K03', 'Cantika', 'Wanita', '081309871243'),
    ('K04', 'Dedy', 'Pria', '081212430987'),
    ('K05', 'Ermin', 'Pria', '081244987655'),
    ('K06', 'Fakhri', 'Pria', '081365454321'),
    ('K07', 'Galuh', 'Pria', '081300771243'),
    ('K08', 'Hendi', 'Pria', '081311092354'),
    ('K09', 'Indah', 'Wanita', '081298126789'),
    ('K10', 'Jesslyn', 'Wanita', '081298546754');
/* Table Pelanggan */
INSERT INTO pelanggan (
        kode_pelanggan,
        nama_pelanggan,
        alamat_pelanggan,
        nohp_pelanggan
    )
VALUES ('P01', 'Alim Amalia', 'Medan', '081243560987'),
    ('P02', 'Bima Sakti', 'Medan', '081398761354'),
    (
        'P03',
        'Cindy Kasih',
        'Tanjung Morawa',
        '081209875412'
    ),
    (
        'P04',
        'Dimas Armadan',
        'Perbaungan',
        '081234987654'
    ),
    (
        'P05',
        'Efllyn Rafika',
        'Helvetia',
        '081309871464'
    ),
    ('P06', 'Ferry Syah', 'Tembung', '081309765432'),
    (
        'P07',
        'Gilang Aditya',
        'Sei Rampah',
        '081243567687'
    ),
    ('P08', 'Hartono', 'Amplas', '081223135467'),
    (
        'P09',
        'Indah Permata',
        'Medan Johor',
        '081276875654'
    ),
    (
        'P10',
        'Jihan Amartia',
        'Belawan',
        '081366765432'
    );
/* Table Transaksi */
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
        'T01',
        'K01',
        'P01',
        'B01',
        '2023-11-01',
        1,
        10000
    ),
    (
        'T02',
        'K02',
        'P02',
        'B02',
        '2023-11-06',
        2,
        30000
    ),
    (
        'T03',
        'K03',
        'P03',
        'B03',
        '2023-11-09',
        3,
        135000
    ),
    (
        'T04',
        'K04',
        'P04',
        'B04',
        '2023-11-15',
        1,
        8000
    ),
    (
        'T05',
        'K05',
        'P05',
        'B05',
        '2023-11-25',
        2,
        50000
    ),
    (
        'T06',
        'K06',
        'P06',
        'B06',
        '2023-11-16',
        3,
        15000
    ),
    (
        'T07',
        'K07',
        'P07',
        'B07',
        '2023-11-11',
        2,
        12000
    ),
    (
        'T08',
        'K08',
        'P08',
        'B08',
        '2023-11-15',
        1,
        25000
    ),
    (
        'T09',
        'K09',
        'P09',
        'B09',
        '2023-11-15',
        5,
        75000
    ),
    (
        'T10',
        'K10',
        'P10',
        'B10',
        '2023-11-13',
        3,
        15000
    );
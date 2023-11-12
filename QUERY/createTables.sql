CREATE TABLE pelanggan (
	kode_pelanggan char(5) PRIMARY KEY,
	nama_pelanggan varchar(50),
	alamat_pelanggan varchar(50),
	nohp_pelanggan char(13)
);
DESC pelanggan;
CREATE TABLE kasir (
	kode_kasir char(5) PRIMARY KEY,
	nama_kasir varchar(50),
	jk_kasir ENUM('Pria', 'Wanita'),
	nohp_kasir char(13)
);
DESC kasir;
CREATE TABLE transaksi(
	no_transaksi char(10) PRIMARY KEY,
	kode_kasir char(5),
	kode_pelanggan char(5),
	kode_barang char(5),
	tgl_transaksi date,
	jumlah_barang int,
	total_harga int
);
DESC transaksi;
CREATE TABLE barang (
	kode_barang char(5) PRIMARY KEY,
	nama_barang varchar(50),
	stok_barang int,
	harga_barang int
);
DESC barang;
CREATE TABLE IF NOT EXISTS khachhang (
    ma_kh INT PRIMARY KEY,
    ho_ten VARCHAR(50) NOT NULL,
    dien_thoai VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS sanpham (
    ma_sp INT PRIMARY KEY,
    ten_sp VARCHAR(50) NOT NULL,
    gia DECIMAL(10, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS hoadon (
    ma_hd INT PRIMARY KEY,
    ma_kh INT,
    tong_tien DECIMAL(10, 2),
    FOREIGN KEY (ma_kh) REFERENCES khachhang(ma_kh)
);

CREATE TABLE IF NOT EXISTS chitiethoadon (
    ma_hd INT,
    ma_sp INT,
    so_luong INT NOT NULL,
    PRIMARY KEY (ma_hd, ma_sp),
    FOREIGN KEY (ma_hd) REFERENCES hoadon(ma_hd),
    FOREIGN KEY (ma_sp) REFERENCES sanpham(ma_sp)
);

CREATE INDEX idx_tensp ON sanpham (ten_sp);

INSERT OR IGNORE INTO khachhang (ma_kh, ho_ten, dien_thoai) VALUES 
(1, 'Nguyen Van A', '0901111222'),
(2, 'Tran Thi B', '0903333444');

INSERT OR IGNORE INTO sanpham (ma_sp, ten_sp, gia) VALUES 
(1, 'Tra sua tran chau duong den', 25000),
(2, 'Ca phe sua da', 20000);

INSERT OR IGNORE INTO hoadon (ma_hd, ma_kh, tong_tien) VALUES 
(1, 1, 45000);

INSERT OR IGNORE INTO chitiethoadon (ma_hd, ma_sp, so_luong) VALUES 
(1, 1, 1),
(1, 2, 1);




 
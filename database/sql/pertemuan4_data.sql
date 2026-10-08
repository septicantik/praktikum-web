   USE praktikum_web_NIM;

   INSERT INTO program_studi (nama_prodi) VALUES
       ('Teknik Perkapalan'),
       ('Teknik Elektro');

   INSERT INTO mahasiswa
       (nim, nama, email, usia, program_studi_id)
   VALUES
       ('2301010001', 'Rina Maharani',
        'rina@example.com', 20, 1),
       ('2301010002', 'Dimas Prakoso',
        'dimas@example.com', 22, 1),
       ('2301020001', 'Lestari Wulandari',
        'lestari@example.com', 21, 2),
       ('2301020099', 'Data Sementara',
        'sementara@example.com', 18, 2);

   UPDATE mahasiswa
   SET email = 'rina.maharani@example.com'
   WHERE nim = '2301010001';

   DELETE FROM mahasiswa
   WHERE nim = '2301020099';

   SELECT m.nim, m.nama, m.email, m.usia,
          p.nama_prodi
   FROM mahasiswa AS m
   JOIN program_studi AS p
       ON p.id = m.program_studi_id
   ORDER BY m.nim;
library(dplyr)

names = c("Adi", "Budi", "Cindi", "Dodi", "Edi", "Febi", "Gilang", "Hari")

jenisKelamin = c("male", "female", "male", "female", "male", "female", "male", "female")

kerja = c("guru", "guru", "guru", "guru", "dosen", "dosen", "dosen", "dosen")

uang = c(1000, 2000, 2400, 1300, 4000, 2200, 5000, 3100)

users <- data.frame(
  nama = names,
  kelamin = jenisKelamin,
  pekerjaan = kerja,
  umur = c(10, 20, 30, 40, 15, 27, 34, 49),
  penghasilan = uang
)

summary(users)
head(users)
head(users, 2)
nrow(users)
ncol(users)

write.csv(users, 'buat_file_csv.csv')


glimpse(users)

ambil_dataset1 = select(users, nama)
ambil_dataset2 = select(users, c(nama, kelamin))
ambil_dataset_minus = select(users, -c(nama))

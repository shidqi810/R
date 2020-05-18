names = c("Adi", "Budi", "Cindi", "Dodi")

names[1]
names[1:4]
names[c(1,3)]

jenisKelamin = c("male", "female", "male", "female")

factor(jenisKelamin)

matriks = matrix(1:12, nrow = 3)
matriks

a = array(1:24, c(3, 4, 2))
a

users <- data.frame(
  nama = names,
  kelamin = jenisKelamin,
  umur = c(10, 20, 30, 40)
)
users[2]
users[3]
users['nama']
users[c('nama', 'kelamin')]
users[2,]
users[2:3,]
users[2:3, 2]


l = list(a, names, users)
l

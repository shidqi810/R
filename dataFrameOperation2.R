library(dplyr)

dataset <- read.csv('buat_file_csv.csv')

#perintah filter dapat dilakukan jika telah menginstal dan meng import library dplyr
filter(dataset, kelamin != 'male', umur > 20)
filter(dataset, kelamin == 'male' & umur > 20) #ini untuk kondisi dan
filter(dataset, kelamin == 'male' | umur > 20) #ini untuk kondisi atau

# di mutate bisa juga menggunakan operator + - / *
mutate(dataset, banyak = 2)

# untuk membuat kolom baru dan menghilangkan kolom2 yang lainnya
kolom_baru = transmute(dataset, kolom = 3)

dataset2 = filter(dataset, kelamin == 'male' | umur > 20)
dataset2 = mutate(dataset2, banyak = 2)
dataset2 = select(dataset2, c(nama, kelamin))
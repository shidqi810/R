library(dplyr)

dataset <- read.csv('buat_file_csv.csv')

data_a = dataset %>% filter(kelamin == 'male') %>% select(nama, kelamin, pekerjaan, umur)

data_b = dataset %>% filter(pekerjaan == 'dosen') %>% select(nama, kelamin, pekerjaan, umur)

# intersect digunakan untuk memilih baris yang isinya sama
# menggabungkan data yang sama antara data_a dan data_b
data_intersect = intersect(data_a, data_b)

#union di gunakan untuk menggabungkan seluruh baris, dan jika ada yang sama maka akan di masukkan 1x
data_union = union(data_a, data_b)

#bind row digunakan untuk menggabungkan seluruh baris, termasuk baris yang sama
data_bind_row = bind_rows(data_a, data_b)



#setdiff kebalikan dari intersect, yaitu memunculkan baris baris yang tidak sama
# baca nya dari parameter yg kiri. Ada di data_a tetapi tidak ada di data_b dan sebaliknya kalau parameter di balik
data_setdiff = setdiff(data_a, data_b)

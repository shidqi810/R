library(dplyr)

dataset <- read.csv('buat_file_csv.csv')

data_a = dataset %>% filter(kelamin == 'male') %>% select(nama, pekerjaan, umur)

data_b = dataset %>% filter(pekerjaan == 'dosen') %>% select(nama, kelamin, umur)

#bind cols digunakan untuk menggabungkan column2 yang ada pada data
#dengan syarat jumlah baris nya harus sama
data_bind_cols = bind_cols(data_a, data_b)

#fungsi join sama seperti di SQL
data_inner_join = inner_join(data_a, data_b)

#full join menggabungkan seluruh data 
data_full_join = full_join(data_a, data_b)

data_left_join = left_join(data_a, data_b)

data_right_join = right_join(data_a, data_b)

library(dplyr)

dataset <- read.csv('buat_file_csv.csv')

#group_by digunakan untuk mengklasifikasikan data berdasarkan variabel yang dipilih
#function summarise berisi kolom yang akan di summarise berdasarkan group by
dataset %>% group_by(kelamin, nama) %>% summarise(umur_ditambah = sum(umur), rata_rata = mean(umur),
                                            umur_minimal = min(umur), umur_maksimal = max(umur),
                                            banyak_data = n())
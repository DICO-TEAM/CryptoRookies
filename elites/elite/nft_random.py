#!/usr/bin/env python
# -*- coding: utf-8 -*-
import random


nft_str = "WallStreetElite-head{my_type},WallStreetElite-Accessories{attribute1},WallStreetElite-Eye{attribute2},WallStreetElite-hair{" \
          "attribute3},WallStreetElite-Mouth{attribute4},WallStreetElite-nose{attribute5}\n"

# 生成： ["{}".format(i) for i in range(1, 31)]

my_type_list = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10']

attribute1_list = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16']

attribute2_list = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17','18', '19','20']

attribute3_list = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16']

attribute4_list = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12']

attribute5_list = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12']


random.shuffle(my_type_list)
random.shuffle(attribute1_list)
random.shuffle(attribute2_list)
random.shuffle(attribute3_list)
random.shuffle(attribute4_list)
random.shuffle(attribute5_list)


data_list = []

for my_type in random.sample(my_type_list, 10):
    for attribute1 in random.sample(attribute1_list, 12):
        for attribute2 in random.sample(attribute2_list, 8):
            for attribute3 in random.sample(attribute3_list, 8):
                for attribute4 in random.sample(attribute4_list, 12):
                    for attribute5 in random.sample(attribute5_list, 10):
                      data_list.append({"my_type": my_type, "attribute1": attribute1, "attribute2": attribute2,
                        "attribute3": attribute3,
                        "attribute4": attribute4,
                        "attribute5": attribute5})


random.shuffle(data_list)

render_list = []

flag = 1

for i in data_list:
    render_list.append(i)
    flag += 1
    if flag > 100:
        break

with open("{}.csv".format("Elite"), "w") as env_file:
    for j in render_list:
        env_file.write(nft_str.format(**j))


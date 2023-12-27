import os
import pandas as pd
import matplotlib.pyplot as plt

file_paths = ['C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/laser_incidents_2010.csv',
             'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/laser_incidents_2011.csv',
             'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/laser_incidents_2012.csv',
             'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/laser_incidents_2013.csv']

all_data = pd.DataFrame()
for file_path in file_paths:
    # Чтение файла данных в DataFrame
    data = pd.read_csv(file_path)
    # Добавление данных в общий DataFrame
    all_data = pd.concat([all_data, data], ignore_index=True)

if os.path.exists(file_path):
    # Подсчет количества записей по цветам
    color_counts = all_data['ALT'].value_counts() 
    total_count = color_counts.sum()
    filtered_color_counts = color_counts[color_counts / total_count >= 0.015]

    # Создание круговой диаграммы
    plt.pie(filtered_color_counts.values, labels=filtered_color_counts.index, autopct='%1.1f%%')
    # Добавление заголовка
    plt.title('Altitude')
    # Показываем диаграмму
    plt.show()
else:
    print(f"Файл '{file_path}' не найден.")
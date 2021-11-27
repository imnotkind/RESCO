import os


agent_list = [
    'IDQN',
    'MPLight',
    'MPLightFULL'
]

map_list = ['grid4x4', 'arterial4x4', 
    'ingolstadt1', 'ingolstadt7', 'ingolstadt21',
    'cologne1', 'cologne3', 'cologne8',
]


for i in range(len(agent_list)):
    for j in range(len(map_list)):
        print(f"{agent_list[i]}, {map_list[j]}")

        os.system(f"python main.py --agent {agent_list[i]} --map {map_list[j]} --trials 5 --procs 5 --eps 10")

os.system("cd utils && python readCSV.py")

os.system("cd utils && python readXML.py")

os.system("cd utils && python graph.py")
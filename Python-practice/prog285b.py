from cl285 import Salesperson

def main():
    try:
        print("Number    Code    Sales    Comission")
        people = []
        with open("data/prog285b.txt", 'r') as file:
            for line in file:
                ldata = line.split(" ")
                id = int(ldata[0])
                code = int(ldata[1])
                sales = float(ldata[2])
                dude = Salesperson(id, code, sales)
                people.append(dude)
        for sp in people: #for-each
            print(sp) #print(str(sp))
    except Exception as e:
        print("Error:", e)

if __name__ == "__main__":
    main()
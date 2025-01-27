# bubble, selection, insertion

class sorting:
    def __init__(self, list):
        self.list = list

    def bubble(self): #add to here later
        a = 0
        length = len(list) 
        current = list[a] # 0 is the largest, last is the lowest
        for i in length:
            if current < list[i]:
                # [ 0 , 1 , 2 , 3, 4]
                list[a] = i
                list[i] = a
                a = i
            else:
                pass
        return list 
    
    def selection(self):
        a = 0
        length = len(list) 
        large = max(list)
        small = min(list)
        for i in length:
            list[i] = list
        return list
    def insertion(self):
        a = 0
        length = len(list) 
        current = list[a]
        for i in length:
            if list[i] > current:
                pass
            else:
                pass
        return list

    


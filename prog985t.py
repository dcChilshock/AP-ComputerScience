class Mergesort:
    @staticmethod #sorts in ascending order. 
    def sort(A,L=0,R=0):
        if len(A) > 1:
            mid=len(A)/2 
            L = A[0:mid-1]
            R = A[mid:len(A)]
            Mergesort.sort(L)
            Mergesort.sort(R)
            Mergesort.merge(A,L,R)
        return A
#python test_prog985t.py
    @staticmethod
    def merge(A,L,R):
        i = 0
        j = 0
        k = 0
        while i < len(L) and j < len(R):
            if L[i] < R[j]:
                A[k] = L[i]
                i = i + 1
            else:
                A[k] = R[j]
                j = j + 1
            k = k + 1
        while i < len(L):
            A[k] = L[i]
            i = i + 1
            k = k + 1
        while j < len(R):
            A[k] = R[j]
            j = j + 1
            k = k + 1



                

class Mergesort:
    @staticmethod #sorts in ascending order. 
    def sort(A):
        if length(A) > 1:
            mid=length(A)/2
            L = A[0..mid-1]
            R = A[mid..length(A)]
            Mergesort.sort(L)
            Mergesort.sort(R)
            Mergesort.merge(A,L,R)
        else if:
            


    @staticmethod
    def merge(A,L,R):
        i = 0
        j = 0
        k = 0
        while i < length[L] and j < length[R] do:
            if L[i] < R[j]:
                A[k] = L[i]
                i = i + 1
            else:
                A[k] = R[j]
                j = j + 1
            k = k + 1
        while i < length[L]:
            A[k] = L[i]
            i = i + 1
            k = k + 1
        while j < length[R]:
            A[K] = R[j]
            j = j + 1
            k = k + 1



                

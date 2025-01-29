class Mergesort:
    @staticmethod #sorts in ascending order. 
    def mergesort(A):
        if length(A) > 1:
            mid=length(A)/2
            L = A[0..mid-1]
            R = A[mid..length(A)]
            mergesort(L)
            mergesort(R)
            merge(A,L,R)
        else if:
            


    @staticmethod
    def merge(A):
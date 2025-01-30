import random
import unittest
from prog985t import Mergesort
from time import perf_counter as current_time

#Normal cases with typical lists of numbers.
#Edge cases like an empty list, a list with one element, and a list where all elements are identical.
#Lists with negative numbers and mixed integer/float values.
#Test for performance (e.g., time taken to sort) for large datasets.

def generate_large_list():
    return [random.randint(0,10_000_000) for i in range(1_000_000)]

class TestMergesort(unittest.TestCase):
    def setUp(self):
        self.starTime = current_time()
    
    def tearDown(self):
        t = current_time() - self.starTime
        print(f"{self.id()}: {t:6f}") #t:6f rounds it to the sixth decimal point

    def test_normal_case(self):
        input = [4,2,5,1,3]
        expected_output = [1,2,3,4,5]
        self.assertEqual(Mergesort.sort(input), expected_output)


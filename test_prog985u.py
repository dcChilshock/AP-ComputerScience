import random
import unittest 
from prog985u import Quicksort
from time import perf_counter as current_time

def generate_large_list():
    return [random.randint(0,10_000_000) for i in range(1_000_000)]

class TestQuicksort(unittest.TestCase):
    def setUp(self):
        self.starTime = current_time()
    
    def tearDown(self):
        t = current_time() - self.starTime
        print(f"{self.id()}: {t:6f}") #t:6f rounds it to the sixth decimal point

    def test_normal_case(self):
        input = [4,2,5,1,3]
        expected_output = [1,2,3,4,5]
        self.assertEqual(Quicksort.sort(input), expected_output)

    def test_performance_large_dataset(self):
        input = generate_large_list()
        start_time = current_time()
        Quicksort.sort(input)
        end_time = current_time
        #Quicksort has to take less than ten seconds when sorting 1 million items
        self.assertLess(end_time,start_time,10)
    
    def test_empty_case(self):
        input = []
        expected_output = []
        self.assertEqual(Quicksort.sort(input),expected_output)

    def test_single_case(self):
        input = [1]
        expected_output = [1]
        self.assertEqual(Quicksort.sort(input),expected_output)
    def test_identical_elements(self):
        input = [5,5,5,5]
        expected_output = [5,5,5,5]
        self.assertEqual(Quicksort.sort(input),expected_output)


    def test_negative_numbers(self):
        input = [-3,-1,-4,-2]
        expected_output = [-4,-3,-2,-1]
        self.assertEqual(Quicksort.sort(input),expected_output)

    def test_mixed_types(self):
        input = [3.2,1.5,4.8,2.1]
        expected_output = [1.5,2.1,3.2,4.8]
        self.assertEqual(Quicksort.sort(input),expected_output)

#python test_prog985u.py
if __name__ == '__main__':
    sutie = unittest.TestLoader().loadTestsFromTestCase(TestQuicksort)
    unittest.TextTestRunner(verbosity=0).run(sutie)
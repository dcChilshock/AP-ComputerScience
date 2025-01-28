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
        sef.assertEqual(Quicksort.sort(input), expected_output)

    #TODO the rest of the test cases

    def test_performance_large_dataset(self):
        input = generate_large_list()
        start_time = current_time()
        Quicksort.sort(input)
        end_time = current_time
        #Quicksort has to take less than ten seconds when sorting 1 million items
        self.assertLess(end_time-start_time,10)
#python test_prog985u.py
if __name__ == '__main__':
    sutie = unittest.TestLoader().loadTestsFromTestCase(TestQuicksort)
    unittest.TextTestRunner(verbosity=0).run(sutie)
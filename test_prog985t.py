import random
import unittest
from prog985t import Mergesort
from time import perf_counter as current_time

def generate_large_list():
    return [random.randint(0,10_000_000) for i in range(1_000_000)]

class TestMergesort(unittest.TestCase):
    def setUp(self):
        self.starTime = current_time()
    
    def tearDown(self):
        t = current_time() - self.starTime
        print(f"{self.id()}: {t:6f}") #t:6f rounds it to the sixth decimal point

#test_prog985a.py
import unittest
from prog985a import Calc
from time import perf_counter as current_time
""" Test each case with the following:
Normal case: 1, 2
Edge case: 0, 0 
Error case: 1, -1
"""
#() -> = inheriting from unittest library.
class TestCalc(unittest.TestCase):
    def setUp(self):
        self.starTime = current_time()
    
    def tearDown(self):
        t = current_time() - self.startTime 
        print(f"{self.id()}: {t:6f}") #t:6f rounds it to the sixth decimal point

    def test_add_nomral_case(self):
        self.assertEqual(Calc.add(a:1,b:2), second:3) #many different types of asser equal aka almost equal, not equal etc

    def test_add_edge_case(self):
        self.assertEqual(Calc.add(a:0,b:0), second:0)

    def test_add_error_case(self):
        self.assertEqual(Calc.add(a:1,b:-1), second:0)

    def test_div_nomral_case(self):
        self.assertEqual(Calc.div(a:1,b:2), second:0.5)

    def test_div_edge_case(self):
        with self.assertRaises(ZeroDivisionError):
            Calc.div(a:0,b:0)

    def test_div_error_case(self):
        self.assertEqual(Calc.div(a:1,b:-1), second:-1)

    def test_sub_nomral_case(self):
        self.assertEqual(Calc.sub(a:1,b:2), second:3) 

    def test_sub_edge_case(self):
        self.assertEqual(Calc.sub(a:0,b:0), second:0)

    def test_sub_error_case(self):
        self.assertEqual(Calc.sub(a:1,b:-1), second:0)

    def test_mul_nomral_case(self):
        self.assertEqual(Calc.mul(a:1,b:2), second:3)

    def test_mul_edge_case(self):
        self.assertEqual(Calc.mul(a:0,b:0), second:0)

    def test_mul_error_case(self):
        self.assertEqual(Calc.mul(a:1,b:-1), second:0)

    def test_mod_nomral_case(self):
        self.assertEqual(Calc.mod(a:1,b:2), second:3) 

    def test_mod_edge_case(self):
        self.assertEqual(Calc.mod(a:0,b:0), second:0)

    def test_mod_error_case(self):
        self.assertEqual(Calc.mod(a:1,b:-1), second:0)


    # TODO: Finish sub, mul, and mod

if __name__ == '__main__':
    suite = unittest.TestLoader().loadTestsFromTestCase(TestCalc)
    unittest.TextTestRunner(verbosity=0).run(suite)


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
        t = current_time() - self.starTime
        print(f"{self.id()}: {t:6f}") #t:6f rounds it to the sixth decimal point

#add

    def test_add_normal_case(self):
        self.assertEqual(Calc.add(1,2), 3) #many different types of asser equal aka almost equal, not equal etc

    def test_add_edge_case(self):
        self.assertEqual(Calc.add(0,0), 0)

    def test_add_error_case(self):
        self.assertEqual(Calc.add(1,-1), 0)

#div

    def test_div_normal_case(self):
        self.assertEqual(Calc.div(1,2), 0.5)

    def test_div_edge_case(self):
        with self.assertRaises(ZeroDivisionError):
            Calc.div(0,0)

    def test_div_error_case(self):
        self.assertEqual(Calc.div(1,-1), -1)

#sub

    def test_sub_normal_case(self):
        self.assertEqual(Calc.sub(1,2), -1) 

    def test_sub_edge_case(self):
        self.assertEqual(Calc.sub(0,0), 0)

    def test_sub_error_case(self):
        self.assertEqual(Calc.sub(1,-1), 2)

#mul

    def test_mul_normal_case(self):
        self.assertEqual(Calc.mul(1,2), 2)

    def test_mul_edge_case(self):
        self.assertEqual(Calc.mul(0,0), 0)

    def test_mul_error_case(self):
        self.assertEqual(Calc.mul(1,-1), -1)

#mod

    def test_mod_normal_case(self):
        self.assertEqual(Calc.mod(1,2), 1) 

    def test_mod_edge_case(self):
        with self.assertRaises(ZeroDivisionError):
            Calc.mod(0,0)

    def test_mod_error_case(self):
        self.assertEqual(Calc.mod(1,-1), 0)


    # TODO: Finish sub, mul, and mod
#run w/ either "python test_prog985a.py" or "python -m unittest test_prog985a.py"
if __name__ == '__main__':
    suite = unittest.TestLoader().loadTestsFromTestCase(TestCalc)
    unittest.TextTestRunner(verbosity=0).run(suite)


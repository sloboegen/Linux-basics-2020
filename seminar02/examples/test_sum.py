import unittest
import subprocess
import os


class TestSum(unittest.TestCase):
    def test1(self):
        p = subprocess.Popen(['sh', 'sum.sh', '15', '20'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, stderr = p.communicate()
        self.assertEqual(int(stdout), 35)
    
    def test2(self):
        p = subprocess.Popen(['sh', 'sum.sh', '1124', '9123'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, stderr = p.communicate()
        self.assertEqual(int(stdout), 10247)


if __name__ == '__main__':
    unittest.main()

import unittest
import subprocess
import os


class Test2(unittest.TestCase):
    def test1(self):
        p = subprocess.Popen(['sh', 'task02.sh'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, stderr = p.communicate()
        stdout = int(stdout)
        
        f = open('numbers.txt', 'r')
        result = set([line for line in f.readlines()])
        f.close()

        self.assertEqual(len(result), stdout)


if __name__ == '__main__':
    unittest.main()

import unittest
import subprocess
import os


class TestSum(unittest.TestCase):
    def test1(self):
        p = subprocess.Popen(['sh', 'task04.sh'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, stderr = p.communicate()
        stdout = stdout.decode('utf-8')
        
        f = open('main.py', 'r')
        result = [line.lstrip() for line in f.readlines()]
        result = list(filter(lambda line: line[0] != '#', result))
        f.close()

        self.assertEqual(''.join(result), stdout)


if __name__ == '__main__':
    unittest.main()

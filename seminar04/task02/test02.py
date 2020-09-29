import unittest
import subprocess
import os


class Test2(unittest.TestCase):
    def test2(self):
        p = subprocess.Popen(['cmake', '.'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        _, stderr = p.communicate()
        self.assertTrue(not stderr)

        p = subprocess.Popen(['cmake', '--build', '.'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        _, stderr = p.communicate()
        self.assertTrue(not stderr)

        p = subprocess.Popen(['ctest', '.'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        _, stderr = p.communicate()
        self.assertTrue(not stderr)
        

if __name__ == '__main__':
    unittest.main()

import unittest
import subprocess
import os


class Test1(unittest.TestCase):
    def check_stderr(self, command: str, arg: str):
        p = subprocess.Popen(['make', ,], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        _, stderr = p.communicate()
        return stderr is None


    def test1(self):
        self.assertTrue(self.check_stderr('make', 'all'))
        self.assertTrue(self.check_stderr('make', 'time'))
        # self.assertTrue(self.check_stderr('make', 'compile'))
        # self.assertTrue(self.check_stderr('make', 'generate'))
        # self.assertTrue(self.check_stderr('make', 'clean'))


if __name__ == '__main__':
    unittest.main()

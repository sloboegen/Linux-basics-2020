import unittest
import subprocess
import os


class Test1(unittest.TestCase):
    def check_stderr(self, command: str, arg: str):
        p = subprocess.Popen(['make', arg], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        _, stderr = p.communicate()
        return stderr is None

    def check_stderr_time(self, program: str):
         p = subprocess.Popen(['make', 'time', program], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        _, stderr = p.communicate()
        return stderr is None


    def test1(self):
        self.assertTrue(self.check_stderr('make', 'all'))
        self.assertTrue(self.check_stderr('make', 'build_slow'))
        self.assertTrue(self.check_stderr('make', 'build_fast'))
        self.assertTrue(self.check_stderr('make', 'run_slow'))
        self.assertTrue(self.check_stderr('make', 'run_fast'))
        self.assertTrue(self.check_stderr_time('fast'))
        self.assertTrue(self.check_stderr_time('slow'))
        self.assertTrue(self.check_stderr('make', 'clean'))


if __name__ == '__main__':
    unittest.main()

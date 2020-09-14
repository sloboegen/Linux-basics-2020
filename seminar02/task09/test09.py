import unittest
import subprocess
import os


class Test9(unittest.TestCase):
    def test1(self):
        p = subprocess.Popen(['sh', 'task09.sh'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, stderr = p.communicate()
        stdout = stdout.decode('utf-8').split('\n')[:-1]

        result = ['joe@aol.com', 'joe@wrox.co.uk', 'oe@domain.info']

        self.assertEqual(result, stdout)


if __name__ == '__main__':
    unittest.main()

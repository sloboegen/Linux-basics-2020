import unittest
import subprocess
import os


class Test1(unittest.TestCase):
    def test1(self):
        p = subprocess.Popen(['sh', 'task01.sh'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, stderr = p.communicate()
        stdout = stdout.decode("utf-8")[:-1]

        result = []
        with open('table.txt', 'r') as f:
            lines = f.readlines()
            for line in lines:
                result.append(line.split(' ')[1])

            f.close()
        
        self.assertEqual('\n'.join(str(n) for n in result), stdout)


if __name__ == '__main__':
    unittest.main()

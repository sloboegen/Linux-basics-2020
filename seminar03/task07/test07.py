import unittest
import subprocess
import os


class Test7(unittest.TestCase):
    def print_wc_in_line(self, filename: str):
        result = []
        with open(filename, 'r') as f:
            lines = f.readlines()
            for line in lines:
                strlen = len(line.split())
                tmp = line + " " + str(strlen)
                result.append(tmp.split())
            f.close()

        return result


    def bash_result(self, script_name: str):
        print(script_name)
        p = subprocess.Popen(['bash', script_name, '.'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, _ = p.communicate()
        stdout = filter(None, stdout.decode('utf-8').split('\n'))

        return set(stdout)
        

    def test1(self):
        script = 'task07.sh'

        bash = self.bash_result(script)
        gold = set(['42', 'The answer is 42', 'Hello from dirB', 'Hi from dirB and dir!!!'])

        self.assertEqual(bash, gold)



if __name__ == '__main__':
    unittest.main()

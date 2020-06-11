import argparse
import sys


def get_args():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        '-mv', '--MAX_VALUE', type=int, help='this value should have the max value')
    parser.add_argument(
        '-cv', '--CURRENT_VALUE', type=int, help='this value should have the maxcurrent value')
    parser.add_argument(
        '-inc', '--INC', type=bool, help='this value should have the information about behavior demanded if not increasing it is decrasing', default=False)

    args = parser.parse_args()
    return args.MAX_VALUE, args.CURRENT_VALUE, args.INC


m_v, c_v, inc = get_args()

# print(f'mv {m_v}    cv {c_v}    inc {inc}')

if (c_v > 7500 and inc) or (c_v < 75 and not inc):
    print(int(c_v))
    sys.exit()


step = m_v / 10

if inc:
    t_s = c_v+step
else:
    t_s = c_v-step

if t_s > 7500:
    t_s = 7500
elif t_s < 75:
    t_s = 75

print(int(t_s))

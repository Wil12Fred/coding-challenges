# Codeforces 712B: Memory and Trident

A single solution written during a coding interview (June 2019): Codeforces
problem [712B "Memory and Trident"](https://codeforces.com/problemset/problem/712/B).

## The problem

A walk is given as a string of `U`, `D`, `L`, `R` steps. Change the fewest
characters so that the walk ends where it started, or print `-1` if that is
impossible.

## Solution

Count the steps in each direction. The walk is off by `|U - D| + |L - R|`;
each edited character fixes two units of that imbalance, so the answer is half
of it — and `-1` when it is odd (i.e. the string has odd length). O(n) time,
O(1) memory.

## Build and run

```bash
make            # builds ./712b
echo UDUR | ./712b
make test       # checks the three samples from the problem statement
```

```
$ echo RRU | ./712b
-1
$ echo UDUR | ./712b
1
$ echo RUUR | ./712b
2
```

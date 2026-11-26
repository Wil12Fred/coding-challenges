# Codeforces 712B: Memory and Trident

[![CI](https://github.com/Wil12Fred/coding-challenges/actions/workflows/ci.yml/badge.svg)](https://github.com/Wil12Fred/coding-challenges/actions/workflows/ci.yml) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](../../LICENSE)

Solution to Codeforces problem
[712B "Memory and Trident"](https://codeforces.com/problemset/problem/712/B),
written during a coding interview (June 2019).

## The problem

A walk is given as a string of `U`, `D`, `L`, `R` steps. Change the fewest
characters so that the walk ends where it started, or print `-1` if that is
impossible.

## Solution

Count the steps in each direction. The walk is off by `|U - D| + |L - R|`;
each edited character fixes two units of that imbalance, so the answer is half
of it — and `-1` when it is odd (i.e. the string has odd length). O(n) time,
O(1) memory.

## Requirements

A C++11 compiler and GNU make (`g++ make` on Debian/Ubuntu, `gcc make` on Arch).

## Build

```bash
make            # builds bin/712b
```

## Run

```
$ echo RRU | ./bin/712b
-1
$ echo UDUR | ./bin/712b
1
$ echo RUUR | ./bin/712b
2
```

## Tests

```
$ make test
3 samples pass
```

The three samples from the statement live in `tests/N.in` / `tests/N.out`;
`make test` diffs the program's output against each.

## Project layout

```
712b.cc       solution
Makefile      all / test / clean
tests/        sample cases (N.in input, N.out expected output)
```

## Known limitations

- Assumes valid input: any character other than `U`, `R`, `L` counts as `D`.

## License

MIT — see [LICENSE](../../LICENSE).

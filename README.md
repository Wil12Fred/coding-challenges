# coding-challenges

[![CI](https://github.com/Wil12Fred/coding-challenges/actions/workflows/ci.yml/badge.svg)](https://github.com/Wil12Fred/coding-challenges/actions/workflows/ci.yml) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Solutions to competitive-programming problems and coding-interview challenges,
one self-contained folder per problem, each checked against its sample tests in CI.

| Problem | Source | Language | Folder |
|---|---|---|---|
| 712B: Memory and Trident | Codeforces | C++11 | [`codeforces/712B-memory-and-trident`](codeforces/712B-memory-and-trident) |

## Features

- One folder per problem, grouped by source (`codeforces/`, ...).
- Every problem ships its sample cases as golden files (`tests/N.in` / `tests/N.out`).
- A root `Makefile` discovers every problem automatically; nothing to register.

## Requirements

- A C++11 compiler and GNU make.
  - Debian/Ubuntu: `sudo apt install g++ make`
  - Arch: `sudo pacman -S gcc make`

## Build

```bash
make            # builds every solution into <problem>/bin/
```

## Run

```
$ echo UDUR | ./codeforces/712B-memory-and-trident/bin/712b
1
```

## Tests

```
$ make test
== codeforces/712B-memory-and-trident
3 samples pass
```

`make test` runs each problem's `test` target, which feeds every `tests/N.in`
to the program and diffs the output against `tests/N.out`. CI runs the same
command on every push and pull request.

## Project layout

```
Makefile                          discovers */*/Makefile and runs all/test/clean
codeforces/
  712B-memory-and-trident/
    712b.cc                       solution
    Makefile                      all / test / clean for this problem
    README.md                     statement link, approach, complexity
    tests/1.in, 1.out, ...        sample cases from the statement
```

## Adding a problem

1. Create `<source>/<id>-<slug>/`, e.g. `codeforces/4A-watermelon/`.
2. Put the solution there and copy the `Makefile` from
   `codeforces/712B-memory-and-trident/`, changing `PROG` to the source file's
   name (without extension). The binary goes to `bin/`, which is git-ignored.
3. Add each sample from the statement as `tests/N.in` and `tests/N.out`.
4. Write a `README.md` with the same sections as the existing one
   (problem, solution, build and run).
5. Add a row to the table above, then run `make test`.

No other file needs to change: the root `Makefile` and CI pick the folder up.

## Known limitations

- Only the official sample cases are tested; there are no stress tests
  against a brute-force reference.
- One problem so far.

## Background

Started in 2019 with a problem solved during a coding interview; kept as a
collection for future practice problems.

## License

MIT — see [LICENSE](LICENSE).

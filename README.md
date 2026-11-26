# coding-challenges

Solutions to competitive-programming problems and interview coding challenges,
one folder per problem, grouped by source.

| Problem | Source | Language | Folder |
|---|---|---|---|
| 712B: Memory and Trident | Codeforces | C++11 | [`codeforces/712B-memory-and-trident`](codeforces/712B-memory-and-trident) |

Each folder has its own `README.md` and a `Makefile` whose `test` target runs
the problem's sample cases.

```bash
make test        # build every solution and check its samples
```

## Adding a problem

Create `<source>/<id>-<slug>/` with the solution, a `README.md` (statement link,
approach, complexity) and a `Makefile` with a `test` target, then add a row above.

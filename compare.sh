uv run calculateAverage.py > python.txt
uv run calculateAveragePypy.py > pypy.txt
uv run calculateAveragePolars.py > polars.txt
uv run calculateAverageDuckDB.py > duckdb.txt
uv run calculateAveragePypyInputBuffer.py > pypyinputbuffer.txt
git diff --no-index --word-diff=porcelain python.txt pypy.txt
git diff --no-index --word-diff=porcelain python.txt polars.txt
git diff --no-index --word-diff=porcelain python.txt duckdb.txt
git diff --no-index --word-diff=porcelain python.txt pypyinputbuffer.txt

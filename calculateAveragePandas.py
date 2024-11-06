import pandas as pd


# Read data file
df = pd.read_csv(
    "measurements.txt",
    sep=";",
    names=["station_name", "measurement"],
)

# Group data
df = (
    df.groupby("station_name")
    .agg(['min', 'mean', 'max'])
    .sort_values("station_name")
)

# Print final results
print("{", end="")
for _, data in df.iterrows():
    print(
        f"{data.name}={data[0]:.1f}/{data[1]:.1f}/{data[2]:.1f}",
        end=", ",
    )
print("\b\b} ")

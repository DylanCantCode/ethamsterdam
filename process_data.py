import pandas

abstractions = ["lending_borrow", "dex_trades", "lending_liquidations", "nft_trades", "lending_collateralchange"]
abstractions_value = ["usd_value", "usd_amount", "debt_to_cover_usd_value", "usd_amount", "usd_value"]
ultimate = pandas.DataFrame()
for abstraction, value in zip(abstractions, abstraction_value):
    f = pandas.read_csv("data/{}.csv".format(abstraction))

    f['text'] = f[f.columns[0:]].apply(
        lambda x: '. '.join(("The {} is {}".format(j,i).replace("_", " ") for i,j in zip(x.dropna().astype(str), f.columns))),
        axis=1
    )


    ultimate = pandas.concat([ultimate, f[['text']]])
    f[['text']].to_json("data/{}.jsonl".format(abstraction), orient="records", lines = True)



ultimate[['text']].to_json("data/ultimate.jsonl", orient="records", lines = True)

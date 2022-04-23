BEGIN;

CREATE TABLE IF NOT EXISTS yearn.yearn_all_vaults (
    contract_address	bytea UNIQUE,
    ytoken text,
    decimals numeric,  
    symbol	text, 
    tag text
);




COPY yearn.yearn_all_vaults(contract_address, ytoken, decimals, symbol, tag) FROM stdin;
\\x16de59092dAE5CcF4A1E6439D611fd0653f0Bd01	iearn DAI	18	yDAI	earn
\\xd6aD7a6750A7593E092a9B218d66C0A814a3436e	iearn USDC	6	yUSDC	earn
\\x83f798e925BcD4017Eb265844FDDAbb448f1707D	iearn USDT	6	yUSDT	earn
\\xF61718057901F84C4eEC4339EF8f0D86D2B45600	iearn SUSD	18	ySUSD	earn
\\x73a052500105205d34Daf004eAb301916DA8190f	iearn TUSD	18	yTUSD	earn
\\x04Aa51bbcB46541455cCF1B8bef2ebc5d3787EC9	iearn wBTC	8	yWTBC	earn
\\xC2cB1040220768554cf699b0d863A3cd4324ce32	iearn DAI	18	yDAI	earn
\\xE6354ed5bC4b393a5Aad09f21c46E101e692d447	iearn USDT	6	yUSDT	earn
\\x04bC0Ab673d88aE9dbC9DA2380cB6B79C4BCa9aE	iearn BUSD	18	yBUSD	earn
\\x26EA744E5B887E5205727f55dFBE8685e3b21951	iearn USDC	6	yUSDC	earn
\\x41c84c0e2EE0b740Cf0d31F63f3B6F627DC6b393	Yearn Wrapped Ether	8	cyWETH	ib
\\x8e595470Ed749b85C6F7669de83EAe304C2ec68F	Yearn Dai Stablecoin	8	cyDAI	ib
\\x7589C9E17BCFcE1Ccaa1f921196FDa177F0207Fc	Yearn Y3CRV	8	cyY3CRV	ib
\\xE7BFf2Da8A2f619c2586FB83938Fa56CE803aA16	Yearn ChainLink Token	8	cyLINK	ib
\\xFa3472f7319477c9bFEcdD66E4B948569E7621b9	Yearn yearn.finance	8	cyYFI	ib
\\x12A9cC33A980DAa74E00cc2d1A0E74C57A93d12C	Yearn Synthetix Network Token	8	cySNX	ib
\\x8Fc8BFD80d6A9F17Fb98A373023d72531792B431	Yearn Wrapped BTC	8	cyWBTC	ib
\\x48759F220ED983dB51fA7A8C0D2AAb8f3ce4166a	Yearn Tether USD	8	cyUSDT	ib
\\x76Eb2FE28b36B3ee97F3Adae0C69606eeDB2A37c	Yearn USD Coin	8	cyUSDC	ib
\\x4e3a36A633f63aee0aB57b5054EC78867CB3C0b8	Yearn Synth sUSD	8	cySUSD	ib
\\xBE86e8918DFc7d3Cb10d295fc220F941A1470C5c	Yearn mStable USD	8	cyMUSD	ib
\\x297d4Da727fbC629252845E96538FC46167e453A	Yearn DefiDollar	8	cyDUSD	ib
\\xA8caeA564811af0e92b1E044f3eDd18Fa9a73E4F	Yearn STASIS EURS Token	8	cyEURS	ib
\\xCA55F9C4E77f7B8524178583b0f7c798De17fD54	Yearn Synth sEUR	8	cySEUR	ib
\\x7736Ffb07104c0C400Bb0CC9A7C228452A732992	Yearn DefiPulse Index	8	cyDPI	ib
\\x09bDCCe2593f0BEF0991188c25Fb744897B6572d	Yearn Binance USD	8	cyBUSD	ib
\\xa0E5A19E091BBe241E655997E50da82DA676b083	Yearn Gemini dollar	8	cyGUSD	ib
\\x4F12c9DABB5319A252463E6028CA833f1164d045	Yearn Compound Dai	8	cyCDAI	ib
\\x950027632FbD6aDAdFe82644BfB64647642B6C09	Yearn Compound USD Coin	8	cyCUSDC	ib
\\xBB4B067cc612494914A902217CB6078aB4728E36	Yearn Compound USDT	8	cyCUSDT	ib
\\xa7c4054AFD3DbBbF5bFe80f41862b89ea05c9806	Yearn Synth sUSD	8	cySUSD	ib
\\x226F3738238932BA0dB2319a8117D9555446102f	Yearn SushiToken	8	cySUSHI	ib
\\xFEEB92386A055E2eF7C2B598c872a4047a7dB59F	Yearn Uniswap	8	cyUNI	ib
\\x9925f2f869048934e62720120798E7cCE7E777BB	Yearn Frax	8	cyFRAX	ib
\\x00e5c0774A5F065c285068170b20393925C84BF3	Yearn EUR	8	cyEUR	ib
\\x27260EEb2a6C382A6e7D14b8991892790ca929bb	Yearn EURT	8	cyEURT	ib
\\x3c9f5385c288cE438Ed55620938A4B967c080101	Yearn KRW	8	cyKRW	ib
\\x215F34af6557A6598DbdA9aa11cc556F5AE264B1	Yearn JPY	8	cyJPY	ib
\\x86BBD9ac8B9B44C95FFc6BAAe58E25033B7548AA	Yearn AUD	8	cyAUD	ib
\\xecaB2C76f1A8359A06fAB5fA0CEea51280A97eCF	Yearn GBP	8	cyGBP	ib
\\x1b3E95E8ECF7A7caB6c4De1b344F94865aBD12d5	Yearn CHF	8	cyCHF	ib
\\xc5bDdf9843308380375a611c18B50Fb9341f502A	yveCRV Vault	18	yveCRV	special
\\xD0660cD418a64a1d44E9214ad8e459324D8157f1	Woofy	12	WOOFY	special
\\x597aD1e0c13Bfe8025993D9e79C69E1c0233522e	USDC yVault	6	yvUSDC	v1
\\x5dbcF33D8c2E976c6b560249878e6F1491Bca25c	Curve Y Pool yVault	18	yUSD	v1
\\x37d19d1c4E1fa9DC47bD1eA12f742a0887eDa74a	TUSD yVault	18	yvTUSD	v1
\\xACd43E627e64355f1861cEC6d3a6688B31a6F952	DAI yVault	18	yvDAI	v1
\\x2f08119C6f07c006695E079AAFc638b8789FAf18	USDT yVault	6	yvUSDT	v1
\\xBA2E7Fed597fd0E3e70f5130BcDbbFE06bB94fe1	YFI yVault	18	yvYFI	v1
\\x2994529C0652D127b7842094103715ec5299bBed	Curve yBUSD Pool yVault	18	yvCurve-yBUSD	v1
\\x7Ff566E1d69DEfF32a7b244aE7276b9f90e9D0f6	Curve sBTC Pool yVault	18	yvCurve-sBTC	v1
\\xe1237aA7f535b0CC33Fd973D66cBf830354D16c7	WETH yVault	18	yvWETH	v1
\\x9cA85572E6A3EbF24dEDd195623F188735A5179f	Curve 3pool yVault	18	yvCurve-3pool	v1
\\xec0d8D3ED5477106c6D4ea27D90a60e594693C90	GUSD yVault	2	yvGUSD	v1
\\x629c759D1E83eFbF63d84eb3868B564d9521C129	Curve Compound Pool yVault	18	yvCurve-Compound	v1
\\x0FCDAeDFb8A7DfDa2e9838564c5A1665d856AFDF	Curve mUSD Pool yVault	18	yvCurve-mUSD	v1
\\xcC7E70A958917cCe67B4B87a8C30E6297451aE98	Curve GUSD Pool yVault	18	yvCurve-GUSD	v1
\\xE0db48B4F71752C4bEf16De1DBD042B82976b8C7	mUSD yVault	18	yvmUSD	v1
\\x98B058b2CBacF5E99bC7012DF757ea7CFEbd35BC	Curve EURS Pool yVault	18	yvCurve-EURS	v1
\\xA8B1Cb4ed612ee179BDeA16CCa6Ba596321AE52D	Curve BBTC Pool yVault	18	yvCurve-BBTC	v1
\\xF6C9E9AF314982A4b38366f4AbfAa00595C5A6fC	Curve UST Pool yVault	18	yvCurve-UST	v1
\\xFe39Ce91437C76178665D64d7a2694B0f6f17fE3	Curve USDN Pool yVault	18	yvCurve-USDN	v1
\\x5334e150B938dd2b6bd040D9c4a03Cff0cED3765	Curve renBTC Pool yVault	18	yvCurve-renBTC	v1
\\x07FB4756f67bD46B748b16119E802F1f880fb2CC	Curve tBTC Pool yVault	18	yvCurve-tBTC	v1
\\x7F83935EcFe4729c4Ea592Ab2bC1A32588409797	Curve oBTC Pool yVault	18	yvCurve-oBTC	v1
\\x123964EbE096A920dae00Fb795FFBfA0c9Ff4675	Curve pBTC Pool yVault	18	yvCurve-pBTC	v1
\\x5533ed0a3b83F70c3c4a1f69Ef5546D3D4713E44	Curve sUSD Pool yVault	18	yvCurve-sUSD	v1
\\x46AFc2dfBd1ea0c0760CAD8262A5838e803A37e5	Curve HBTC Pool yVault	18	yvCurve-HBTC	v1
\\x39546945695DCb1c037C836925B355262f551f55	Curve HUSD Pool yVault	18	yvCurve-HUSD	v1
\\x8e6741b456a074F0Bc45B8b82A755d4aF7E965dF	Curve DUSD Pool yVault	18	yvCurve-DUSD	v1
\\x03403154afc09Ce8e44C3B185C82C6aD5f86b9ab	Curve Aave Pool yVault	18	yvCurve-Aave	v1
\\xE625F5923303f1CE7A43ACFEFd11fd12f30DbcA4	Curve ankrETHc Pool yVault	18	yvCurve-ankrETHc	v1
\\xBacB69571323575C6a5A3b4F9EEde1DC7D31FBc1	Curve sAave Pool yVault	18	yvCurve-sAave	v1
\\x96Ea6AF74Af09522fCB4c28C269C26F59a31ced6	Curve LINK Pool yVault	18	yvCurve-LINK	v1
\\x1B5eb1173D2Bf770e50F10410C9a96F7a8eB6e75	Curve USDP Pool yVault	18	yvCurve-USDP	v1
\\xe11ba472F74869176652C35D30dB89854b5ae84D	HEGIC yVault	18	yvHEGIC	v2
\\xdCD90C7f6324cfa40d7169ef80b12031770B4325	Curve stETH Pool yVault	18	yvCurve-stETH	v2
\\x19D3364A399d251E894aC732651be8B0E4e85001	DAI yVault	18	yvDAI	v2
\\x5f18C75AbDAe578b483E5F43f12a39cF75b973a9	USDC yVault	6	yvUSDC	v2
\\xcB550A6D4C8e3517A939BC79d0c7093eb7cF56B5	WBTC yVault	8	yvWBTC	v2
\\x986b4AFF588a109c09B50A03f42E4110E29D353F	Curve sETH Pool yVault	18	yvCurve-sETH	v2
\\xa9fE4601811213c340e850ea305481afF02f5b28	WETH yVault	18	yvWETH	v2
\\xB8C3B7A2A618C552C23B1E4701109a9E756Bab67	1INCH yVault	18	yv1INCH	v2
\\xE14d13d8B3b85aF791b2AADD661cDBd5E6097Db1	YFI yVault	18	yvYFI	v2
\\x27b7b1ad7288079A66d12350c828D3C00A6F07d7	Curve Iron Bank Pool yVault	18	yvCurve-IronBank	v2
\\xa5cA62D95D24A4a350983D5B8ac4EB8638887396	sUSD yVault	18	yvsUSD	v2
\\x625b7DF2fa8aBe21B0A976736CDa4775523aeD1E	Curve HBTC Pool yVault	18	yvCurve-HBTC	v2
\\x9d409a0A012CFbA9B15F6D4B36Ac57A46966Ab9a	Yearn Compounding veCRV yVault	18	yvBOOST	v2
\\x8414Db07a7F743dEbaFb402070AB01a4E0d2E45e	Curve sBTC Pool yVault	18	yvCurve-sBTC	v2
\\x7047F90229a057C13BF847C0744D646CFb6c9E1A	Curve renBTC Pool yVault	18	yvCurve-renBTC	v2
\\x7Da96a3891Add058AdA2E826306D812C638D87a7	USDT yVault	6	yvUSDT	v2
\\xb4D1Be44BfF40ad6e506edf43156577a3f8672eC	Curve sAave Pool yVault	18	yvCurve-sAave	v2
\\x8ee57c05741aA9DB947A744E713C15d4d19D8822	Curve yBUSD Pool yVault	18	yvCurve-yBUSD	v2
\\xD6Ea40597Be05c201845c0bFd2e96A60bACde267	Curve Compound Pool yVault	18	yvCurve-Compound	v2
\\x84E13785B5a27879921D6F685f041421C7F482dA	Curve 3pool yVault	18	yvCurve-3pool	v2
\\xF29AE508698bDeF169B89834F76704C3B205aedf	SNX yVault	18	yvSNX	v2
\\xB4AdA607B9d6b2c9Ee07A275e9616B84AC560139	Curve FRAX Pool yVault	18	yvCurve-FRAX	v2
\\x5fA5B62c8AF877CB37031e0a3B2f34A78e3C56A6	Curve LUSD Pool yVault	18	yvCurve-LUSD	v2
\\x6Ede7F19df5df6EF23bD5B9CeDb651580Bdf56Ca	Curve BUSD Pool yVault	18	yvCurve-BUSD	v2
\\x4B5BfD52124784745c1071dcB244C6688d2533d3	Curve Y Pool yVault	18	yUSD	v2
\\xe9Dc63083c464d6EDcCFf23444fF3CFc6886f6FB	Curve oBTC Pool yVault	18	yvCurve-oBTC	v2
\\x3c5DF3077BcF800640B5DAE8c91106575a4826E6	Curve pBTC Pool yVault	18	yvCurve-pBTC	v2
\\x8fA3A9ecd9EFb07A8CE90A6eb014CF3c0E3B32Ef	Curve BBTC Pool yVault	18	yvCurve-BBTC	v2
\\x132d8D2C76Db3812403431fAcB00F3453Fc42125	Curve ankrETH Pool yVault	18	yvCurve-ankrETH	v2
\\x30FCf7c6cDfC46eC237783D94Fc78553E79d4E9C	Curve DUSD Pool yVault	18	yvCurve-DUSD	v2
\\x8cc94ccd0f3841a468184aCA3Cc478D2148E1757	Curve mUSD Pool yVault	18	yvCurve-mUSD	v2
\\x1C6a9783F812b3Af3aBbf7de64c3cD7CC7D1af44	Curve UST Pool yVault	18	yvCurve-UST	v2
\\x054AF22E1519b020516D72D749221c24756385C9	Curve HUSD Pool yVault	18	yvCurve-HUSD	v2
\\x25212Df29073FfFA7A67399AcEfC2dd75a831A1A	Curve EURS Pool yVault	18	yvCurve-EURS	v2
\\x2a38B9B0201Ca39B17B460eD2f11e4929559071E	Curve GUSD Pool yVault	18	yvCurve-GUSD	v2
\\x23D3D0f1c697247d5e0a9efB37d8b0ED0C464f7f	Curve tBTC Pool yVault	18	yvCurve-tBTC	v2
\\x3B96d491f067912D18563d56858Ba7d6EC67a6fa	Curve USDN Pool yVault	18	yvCurve-USDN	v2
\\xf2db9a7c0ACd427A680D640F02d90f6186E71725	Curve LINK Pool yVault	18	yvCurve-LINK	v2
\\x5a770DbD3Ee6bAF2802D29a901Ef11501C44797A	Curve sUSD Pool yVault	18	yvCurve-sUSD	v2
\\x39CAF13a104FF567f71fd2A4c68C026FDB6E740B	Curve Aave Pool yVault	18	yvCurve-Aave	v2
\\xC4dAf3b5e2A9e93861c3FBDd25f1e943B8D87417	Curve USDP Pool yVault	18	yvCurve-USDP	v2
\\xf8768814b88281DE4F532a3beEfA5b85B69b9324	Curve TUSD Pool yVault	18	yvCurve-TUSD	v2
\\xFBEB78a723b8087fD2ea7Ef1afEc93d35E8Bed42	UNI yVault	18	yvUNI	v2
\\xA74d4B67b3368E83797a35382AFB776bAAE4F5C8	Curve alUSD Pool yVault	18	yvCurve-alUSD	v2
\\xBfedbcbe27171C418CDabC2477042554b1904857	Curve rETH Pool yVault	18	yvCurve-rETH	v2
\\x873fB544277FD7b977B196a826459a69E27eA4ea	RAI yVault	18	yvRAI	v2
\\xa258C4606Ca8206D8aA700cE2143D7db854D168c	WETH yVault	18	yvWETH	v2
\\x3D980E50508CFd41a13837A60149927a11c03731	Curve triCrypto Pool yVault	18	yvCurve-triCrypto	v2
\\x80bbeE2fa460dA291e796B9045e93d19eF948C6A	Curve PAX Pool yVault	18	yvCurve-PAX	v2
\\x28a5b95C101df3Ded0C0d9074DB80C438774B6a9	Curve USDT Pool yVault	18	yvCurve-USDT	v2
\\x3D27705c64213A5DcD9D26880c1BcFa72d5b6B0E	Curve USDK Pool yVault	18	yvCurve-USDK	v2
\\xC116dF49c02c5fD147DE25Baa105322ebF26Bd97	Curve RSV Pool yVault	18	yvCurve-RSV	v2
\\xdA816459F1AB5631232FE5e97a05BBBb94970c95	DAI yVault	18	yvDAI	v2
\\xE537B5cc158EB71037D4125BDD7538421981E6AA	Curve 3Crypto Pool yVault	18	yvCurve-3Crypto	v2
\\x6d765CbE5bC922694afE112C140b8878b9FB0390	SUSHI yVault	18	yvSUSHI	v2
\\xd9788f3931Ede4D5018184E198699dC6d66C1915	AAVE yVault	18	yvAAVE	v2
\\x4A3FE75762017DB0eD73a71C9A06db7768DB5e66	COMP yVault	18	yvCOMP	v2
\\xFD0877d9095789cAF24c98F7CCe092fa8E120775	TUSD yVault	18	yvTUSD	v2
\\x0d4EA8536F9A13e4FBa16042a46c30f092b06aA5	Curve EURT Pool yVault	18	yvCurve-EURT	v2
\\xA696a63cc78DfFa1a63E9E50587C197387FF6C7E	WBTC yVault	8	yvWBTC	v2
\\x671a912C10bba0CFA74Cfc2d6Fba9BA1ed9530B2	LINK yVault	18	yvLINK	v2
\.

COMMIT;

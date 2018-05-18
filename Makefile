all:	sp500_yoy_return.png
																
sp500_yoy.csv:	download.R
	Rscript	download.R

sp500_yoy_return.csv:	sp500_yoy.csv	calc_returns.R
	Rscript	calc_returns.R

sp500_yoy_return.png:	sp500_yoy_return.csv	plot.R
	Rscript	plot.R
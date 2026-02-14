-- Tickers metadata
CREATE TABLE IF NOT EXISTS tickers (
    symbol VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100),
    exchange VARCHAR(50),
    asset_type VARCHAR(20), -- e.g., 'stock', 'crypto', 'forex'
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- OHLCV price data
CREATE TABLE IF NOT EXISTS ohlcv (
    id SERIAL PRIMARY KEY,
    symbol VARCHAR(20) REFERENCES tickers(symbol),
    timeframe VARCHAR(10), -- e.g., '1m', '5m', '1h', '1d'
    timestamp TIMESTAMP WITH TIME ZONE NOT NULL,
    open DECIMAL(20, 10) NOT NULL,
    high DECIMAL(20, 10) NOT NULL,
    low DECIMAL(20, 10) NOT NULL,
    close DECIMAL(20, 10) NOT NULL,
    volume DECIMAL(20, 10) NOT NULL,
    UNIQUE(symbol, timeframe, timestamp)
);

-- Detected Pivot Points (Turning Points)
CREATE TABLE IF NOT EXISTS pivots (
    id SERIAL PRIMARY KEY,
    symbol VARCHAR(20) REFERENCES tickers(symbol),
    timeframe VARCHAR(10),
    timestamp TIMESTAMP WITH TIME ZONE NOT NULL,
    price DECIMAL(20, 10) NOT NULL,
    pivot_type VARCHAR(20) NOT NULL, -- 'high' (Peak) or 'low' (Trough)
    strength DECIMAL(5, 2), -- Qualitative score or quantitative metric
    confidence DECIMAL(5, 4), -- AI confidence score
    analysis_metadata JSONB, -- Additional data from OpenClaw/Analysis
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_ohlcv_symbol_timestamp ON ohlcv(symbol, timestamp);
CREATE INDEX idx_pivots_symbol_timestamp ON pivots(symbol, timestamp);

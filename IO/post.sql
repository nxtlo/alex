BEGIN AS $$
    CRETE TABLE IF NOT EXISTS humans (
        sex PRIMARY KEY,
        DATE DATETIME
    );
    COMMIT
END

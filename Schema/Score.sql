CREATE TABLE Scoring (
    ScoringID   INT     NOT NULL    IDENTITY(1, 1),
    GameID      INT     NOT NULL,
    PlayerID    INT     NOT NULL,
    Quarter     INT     NOT NULL,
    Yards       FLOAT   NOT NULL,
    Points      INT     NOT NULL,

    -- Surrogate primary key
    CONSTRAINT PK_ScoringID PRIMARY KEY (ScoringID, GameID, PlayerID),

    -- Composite key to prevent duplicates
    CONSTRAINT UQ_Scoring UNIQUE (GameID, PlayerID, Quarter),

    -- Foreign keys
    CONSTRAINT FK_Scoring_Game
        FOREIGN KEY (GameID) REFERENCES Game(GameID),

    CONSTRAINT FK_Scoring_Player
        FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID)
);


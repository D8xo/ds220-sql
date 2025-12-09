CREATE TABLE Scoring (
    ScoringID   INT         NOT NULL    IDENTITY(1, 1),
    GameID      INT         NOT NULL,
    PlayerID    INT         NOT NULL,
    Quarter     INT         NOT NULL,
    Yards       FLOAT       NOT NULL,
    Points      INT         NOT NULL,
    Remark      VARCHAR(30) NOT NULL,

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


INSERT INTO Scoring (ScoringID, GameID, PlayerID, Quarter, Yards, Points, Remark) VALUES
-- Game 1: vs Nevada (W 46-11)
(1, 1, 19, 1, 1.0, 6, 'TD Run'),
(2, 1, 122, 1, 0.0, 1, 'PAT Kick'),
(3, 1, 122, 1, 28.0, 3, 'FG'),
(4, 1, 122, 2, 28.0, 3, 'FG'),
(5, 1, 2, 2, 31.0, 6, 'TD Pass from D. Allar'),
(6, 1, 122, 2, 0.0, 1, 'PAT Kick'),
(7, 1, 122, 3, 32.0, 3, 'FG'),
(8, 1, 19, 3, 1.0, 6, 'TD Run'),
(9, 1, 122, 4, 39.0, 3, 'FG'),
(10, 1, 24, 4, 12.0, 6, 'TD Run'),
(11, 1, 122, 4, 0.0, 1, 'PAT Kick'),

-- Game 2: vs FIU (W 34-0)
(12, 2, 31, 2, 9.0, 6, 'TD Pass from D. Allar'),
(13, 2, 122, 2, 0.0, 1, 'PAT Kick'),
(14, 2, 122, 2, 41.0, 3, 'FG'),
(15, 2, 122, 3, 34.0, 3, 'FG'),
(16, 2, 10, 3, 42.0, 6, 'TD Pass from D. Allar'),
(17, 2, 122, 3, 0.0, 1, 'PAT Kick'),
(18, 2, 24, 4, 67.0, 6, 'TD Run'),
(19, 2, 122, 4, 0.0, 1, 'PAT Kick'),
(20, 2, 19, 4, 5.0, 6, 'TD Run'),
(21, 2, 122, 4, 0.0, 1, 'PAT Kick'),

-- Game 3: vs Villanova (W 52-6)
(22, 3, 19, 1, 4.0, 6, 'TD Run'),
(23, 3, 122, 1, 0.0, 1, 'PAT Kick'),
(24, 3, 122, 2, 45.0, 3, 'FG'),
(25, 3, 122, 2, 28.0, 3, 'FG'),
(26, 3, 16, 2, 23.0, 6, 'TD Pass from D. Allar'),
(27, 3, 16, 2, 0.0, 2, '2pt Conversion'),
(28, 3, 122, 3, 42.0, 3, 'FG'),
(29, 3, 19, 3, 3.0, 6, 'TD Run'),
(30, 3, 122, 3, 0.0, 1, 'PAT Kick'),
(31, 3, 24, 4, 18.0, 6, 'TD Run'),
(32, 3, 122, 4, 0.0, 1, 'PAT Kick'),
(33, 3, NULL, 4, 19.0, 6, 'TD Pass (Joey Schlaffer - Not in List)'),
(34, 3, 122, 4, 0.0, 1, 'PAT Kick'),
(35, 3, 44, 4, 49.0, 6, 'INT Return TD'),
(36, 3, 122, 4, 0.0, 1, 'PAT Kick'),

-- Game 4: vs Oregon (L 24-30)
(37, 4, 122, 2, 49.0, 3, 'FG'),
(38, 4, 10, 4, 35.0, 6, 'TD Pass from D. Allar'),
(39, 4, 122, 4, 0.0, 1, 'PAT Kick'),
(40, 4, 10, 4, 7.0, 6, 'TD Pass from D. Allar'),
(41, 4, 122, 4, 0.0, 1, 'PAT Kick'),
(42, 4, 24, 5, 4.0, 6, 'TD Run (OT)'),
(43, 4, 122, 5, 0.0, 1, 'PAT Kick'),

-- Game 5: at UCLA (L 37-42)
(44, 5, 24, 1, 13.0, 6, 'TD Run'),
(45, 5, 122, 1, 0.0, 1, 'PAT Kick'),
(46, 5, 31, 2, 40.0, 6, 'TD Pass from D. Allar'),
(47, 5, 122, 2, 0.0, 1, 'PAT Kick'),
(48, 5, 3, 3, 0.0, 6, 'Blocked Punt Return TD'),
(49, 5, 122, 3, 0.0, 1, 'PAT Kick'),
(50, 5, 29, 4, 3.0, 6, 'TD Run'),
(51, 5, 122, 4, 0.0, 1, 'PAT Kick'),
(52, 5, 2, 4, 15.0, 6, 'TD Pass from D. Allar'),
(53, 5, 122, 4, 0.0, 1, 'PAT Kick'),

-- Game 6: vs Northwestern (L 21-22)
(54, 6, 24, 2, 11.0, 6, 'TD Run'),
(55, 6, 122, 2, 0.0, 1, 'PAT Kick'),
(56, 6, 19, 2, 2.0, 6, 'TD Run'),
(57, 6, 122, 2, 0.0, 1, 'PAT Kick'),
(58, 6, 29, 4, 1.0, 6, 'TD Run'),
(59, 6, 122, 4, 0.0, 1, 'PAT Kick'),

-- Game 7: at Iowa (L 24-25)
(60, 7, 24, 1, 1.0, 6, 'TD Run'),
(61, 7, 122, 1, 0.0, 1, 'PAT Kick'),
(62, 7, 17, 2, 35.0, 6, 'Blocked FG Return TD'),
(63, 7, 122, 2, 0.0, 1, 'PAT Kick'),
(64, 7, 24, 3, 8.0, 6, 'TD Run'),
(65, 7, 122, 3, 0.0, 1, 'PAT Kick'),
(66, 7, 122, 4, 32.0, 3, 'FG'),

-- Game 8: at Ohio State (L 14-38)
(67, 8, 19, 2, 3.0, 6, 'TD Run'),
(68, 8, 122, 2, 0.0, 1, 'PAT Kick'),
(69, 8, 24, 2, 1.0, 6, 'TD Run'),
(70, 8, 122, 2, 0.0, 1, 'PAT Kick'),

-- Game 9: vs Indiana (L 24-27)
(71, 9, 19, 2, 2.0, 6, 'TD Run'),
(72, 9, 122, 2, 0.0, 1, 'PAT Kick'),
(73, 9, 122, 3, 36.0, 3, 'FG'),
(74, 9, 19, 4, 1.0, 6, 'TD Run'),
(75, 9, 122, 4, 0.0, 1, 'PAT Kick'),
(76, 9, 19, 4, 19.0, 6, 'TD Pass from Grunkemeyer'),
(77, 9, 122, 4, 0.0, 1, 'PAT Kick'),

-- Game 10: at Michigan State (W 28-10)
(78, 10, 24, 1, 8.0, 6, 'TD Run'),
(79, 10, 122, 1, 0.0, 1, 'PAT Kick'),
(80, 10, 10, 2, 75.0, 6, 'TD Pass from Grunkemeyer'),
(81, 10, 122, 2, 0.0, 1, 'PAT Kick'),
(82, 10, 10, 4, 4.0, 6, 'TD Pass from Grunkemeyer'),
(83, 10, 122, 4, 0.0, 1, 'PAT Kick'),
(84, 10, 24, 4, 26.0, 6, 'TD Run'),
(85, 10, 122, 4, 0.0, 1, 'PAT Kick'),

-- Game 11: vs Nebraska (W 37-10)
(86, 11, 115, 1, 2.0, 6, 'TD Pass from Grunkemeyer'),
(87, 11, 122, 1, 0.0, 1, 'PAT Kick'),
(88, 11, 19, 2, 10.0, 6, 'TD Run'),
(89, 11, 122, 2, 0.0, 0, 'PAT Missed'),
(90, 11, 19, 2, 3.0, 6, 'TD Run'),
(91, 11, 122, 2, 0.0, 1, 'PAT Kick'),
(92, 11, 24, 3, 13.0, 6, 'TD Run'),
(93, 11, 122, 3, 0.0, 1, 'PAT Kick'),
(94, 11, 122, 4, 26.0, 3, 'FG'),
(95, 11, 24, 4, 3.0, 6, 'TD Run'),
(96, 11, 122, 4, 0.0, 1, 'PAT Kick'),

-- Game 12: at Rutgers (W 40-36)
(97, 12, 24, 1, 5.0, 6, 'TD Run'),
(98, 12, 122, 1, 0.0, 1, 'PAT Kick'),
(99, 12, 19, 2, 3.0, 6, 'TD Run'),
(100, 12, 122, 2, 0.0, 1, 'PAT Kick'),
(101, 12, 122, 2, 31.0, 3, 'FG'),
(102, 12, 10, 3, 15.0, 6, 'TD Pass'),
(103, 12, 122, 3, 0.0, 0, '2pt Failed'),
(104, 12, 3, 4, 0.0, 6, 'Fumble Return TD'),
(105, 12, 122, 4, 0.0, 1, 'PAT Kick'),
(106, 12, 122, 4, 25.0, 3, 'FG'),
(107, 12, 122, 4, 0.0, 1, 'PAT Kick');

--- 1
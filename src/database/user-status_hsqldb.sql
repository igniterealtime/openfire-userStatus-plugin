CREATE TABLE userStatus (
    username        VARCHAR(64)         NOT NULL,
    resource        VARCHAR(64)         NOT NULL,
    online          INTEGER             NOT NULL,
    presence        VARCHAR(15),
    lastIpAddress   VARCHAR(45)            NOT NULL,
    lastLoginDate   VARCHAR(15)            NOT NULL,
    lastLogoffDate  VARCHAR(15),
    PRIMARY KEY (username, resource)
);

CREATE TABLE userStatusHistory (
    historyID       BIGINT              NOT NULL,
    username        VARCHAR(64)         NOT NULL,
    resource        VARCHAR(64)         NOT NULL,
    lastIpAddress   VARCHAR(45)            NOT NULL,
    lastLoginDate   VARCHAR(15)            NOT NULL,
    lastLogoffDate  VARCHAR(15)            NOT NULL,
    PRIMARY KEY (historyID)
);

INSERT INTO ofVersion (name, version) VALUES ('user-status', 1);

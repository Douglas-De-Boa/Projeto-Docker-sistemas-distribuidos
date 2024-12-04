CREATE TABLE IF NOT EXISTS fichas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nomePersonagem VARCHAR(255) NULL,
    classe VARCHAR(100) NULL,
    raca VARCHAR(100)  NULL,
    alinhamento VARCHAR(100),
    aparencia TEXT,
    dadoDano VARCHAR(50),
    armadura INT DEFAULT 0,
    pontosVida INT DEFAULT 0,
    maxpontosVida INT DEFAULT 0,
    nivel INT DEFAULT 1,
    xp INT DEFAULT 0,
    moedas INT DEFAULT 0,
    carga INT DEFAULT 0,
    maxCarga INT DEFAULT 0,
    movimentos JSON,
    vinculos JSON,
    inventario JSON,
    notas TEXT,
    CONSTRAINT chk_pontosVida CHECK (pontosVida >= 0),
    CONSTRAINT chk_maxpontosVida CHECK (maxpontosVida >= 0),
    CONSTRAINT chk_nivel CHECK (nivel >= 1),
    CONSTRAINT chk_carga CHECK (carga >= 0),
    CONSTRAINT chk_maxCarga CHECK (maxCarga >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

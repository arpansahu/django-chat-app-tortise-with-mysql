-- upgrade --
CREATE TABLE IF NOT EXISTS `chat_chatmessage` (
    `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `room_id` INT,
    `username` VARCHAR(50),
    `message` LONGTEXT NOT NULL,
    `message_type` VARCHAR(50),
    `image_caption` VARCHAR(50),
    `date_created` DATETIME(6)   DEFAULT CURRENT_TIMESTAMP(6)
) CHARACTER SET utf8mb4 COMMENT='use to store chat history message';
CREATE TABLE IF NOT EXISTS `aerich` (
    `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `version` VARCHAR(255) NOT NULL,
    `app` VARCHAR(20) NOT NULL,
    `content` TEXT NOT NULL
) CHARACTER SET utf8mb4;

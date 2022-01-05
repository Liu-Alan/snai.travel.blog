CREATE DATABASE blog_service CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
;

USE blog_service
;

-- drop TABLE game;
CREATE TABLE game(
	`game_id` INT AUTO_INCREMENT PRIMARY KEY,			-- 自增列需为主键
	`game_name` NVARCHAR(32) NOT NULL COMMENT '游戏名称',
	`game_alias` VARCHAR(32) NOT NULL COMMENT '游戏别名',
    `status` smallint NOT NULL DEFAULT 1 COMMENT '0 禁用, 1 只显示A, 2 根据判断显示A或B',
    `app_id` varchar(32) NOT NULL DEFAULT '' COMMENT '用户接口AppId',
    `app_key` varchar(32) NOT NULL DEFAULT '' COMMENT '用户接口AppKey',
    `create_time` INT NOT NULL DEFAULT 0 COMMENT '创建时间'
)
;
ALTER TABLE game ADD UNIQUE INDEX ix_game_game_name(game_name)
;
ALTER TABLE game ADD UNIQUE INDEX ix_game_game_alias(game_alias)
;
ALTER TABLE game ADD UNIQUE INDEX ix_game_app_id(app_id)
;

INSERT into game(`game_name`,`game_alias`,`status`,`app_id`,`app_key`,`create_time`)
VALUES('Teen Patti Sky','TeenPattiSky',2,'e68C0X3aLrw9PBVT','kQK3Y0RUsgDwOHzg8vGymh51EvVMSdy6',1639729728)
;

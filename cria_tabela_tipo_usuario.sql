CREATE TABLE tipo_usuario (
    id int NOT NULL,
    nome varchar(255) NOT NULL,
    permissao_gerenciar_usuario bool,
    permissao_upload_arquivos bool,
    CONSTRAINT pk_id_tipo_usuario PRIMARY KEY (id)
);

CREATE TABLE usuario (
    id int4 NOT NULL AUTOINCREMENT,
    nome varchar(255), 
    email varchar(255) NOT NULL,
    senha varchar(255) NOT NULL,
    tipo_usuario_id int NOT NULL,
    CONSTRAINT pk_id_usuario PRIMARY KEY (id),
    CONSTRAINT fk_tipo_usuario FOREIGN KEY (tipo_usuario_id) REFERENCES tipo_usuario(id)
);

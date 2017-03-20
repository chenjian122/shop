drop table `shop`.`t_user_dealer_front`;
drop table `shop`.`t_order_product_attachment`;
drop table `shop`.`t_product_attachment`;
drop table `shop`.`t_data_dictionary`;
drop table `shop`.`t_order_product`;
drop table `shop`.`t_product`;
drop table `shop`.`t_order`;
drop table `shop`.`t_customer`;
drop table `shop`.`t_dealer_front`;
drop table `shop`.`t_dealer`;
drop table `shop`.`t_user`;

CREATE TABLE IF NOT EXISTS `shop`.`t_user` (
  `user_id` VARCHAR(32) NOT NULL COMMENT '用户id',
  `user_no` VARCHAR(16) NOT NULL COMMENT '用户编号',
  `user_name` VARCHAR(300) NOT NULL COMMENT '用户名称',
  `phone` VARCHAR(11) NOT NULL COMMENT '电话',
  `address` VARCHAR(500) NULL COMMENT '地址',
  `user_status` VARCHAR(2) NOT NULL COMMENT '用户状态',
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '用户信息';
CREATE TABLE IF NOT EXISTS `shop`.`t_dealer` (
  `dealer_id` VARCHAR(32) NOT NULL COMMENT '经销商id',
  `dealer_no` VARCHAR(16) NOT NULL COMMENT '经销商编号',
  `dealer_name` VARCHAR(300) NOT NULL COMMENT '经销商名称',
  `province` VARCHAR(32) NULL COMMENT '省',
  `city` VARCHAR(32) NULL COMMENT '市',
  `village` VARCHAR(32) NULL COMMENT '区／县',
  `province_name` VARCHAR(300) NULL COMMENT '省',
  `city_name` VARCHAR(300) NULL COMMENT '市',
  `village_name` VARCHAR(300) NULL COMMENT '区／县',
  `dealer_status` VARCHAR(2) NOT NULL COMMENT '经销商状态',
  `dealer_owner_id` VARCHAR(32) NOT NULL COMMENT '经销商所属人ID',
  PRIMARY KEY (`dealer_id`),
  INDEX `fk_t_dealer_t_user_idx` (`dealer_owner_id` ASC),
  CONSTRAINT `fk_t_dealer_t_user`
    FOREIGN KEY (`dealer_owner_id`)
    REFERENCES `shop`.`t_user` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '经销商信息';
CREATE TABLE IF NOT EXISTS `shop`.`t_dealer_front` (
  `front_id` VARCHAR(32) NOT NULL COMMENT '门店id	',
  `front_no` VARCHAR(16) NOT NULL COMMENT '门店编号',
  `front_name` VARCHAR(300) NOT NULL COMMENT '名店名称',
  `front_owner_id` VARCHAR(32) NOT NULL COMMENT '门店所属人ID',
  `front_address` VARCHAR(500) NOT NULL COMMENT '门店地址',
  `front_phone` VARCHAR(11) NOT NULL COMMENT '门店电话',
  `front_status` VARCHAR(2) NOT NULL COMMENT '门店状态',
  `dealer_id` VARCHAR(32) NOT NULL COMMENT '经销商id',
  PRIMARY KEY (`front_id`),
  INDEX `fk_t_dealer_front_t_dealer_idx` (`dealer_id` ASC),
  CONSTRAINT `fk_t_dealer_front_t_shop1`
    FOREIGN KEY (`dealer_id`)
    REFERENCES `shop`.`t_dealer` (`dealer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '门店信息';
CREATE TABLE IF NOT EXISTS `shop`.`t_user_dealer_front` (
  `user_dealer_front_id` VARCHAR(45) NOT NULL COMMENT 'id',
  `user_id` VARCHAR(32) NOT NULL COMMENT '用户ID',
  `front_id` VARCHAR(32) NOT NULL COMMENT '门店id',
  INDEX `fk_t_user_shop_front_t_shop_front1_idx` (`front_id` ASC),
  PRIMARY KEY (`user_dealer_front_id`),
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC, `front_id` ASC),
  INDEX `fk_t_user_shop_front_t_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_t_user_shop_front_t_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `shop`.`t_user` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_user_shop_front_t_shop_front1`
    FOREIGN KEY (`front_id`)
    REFERENCES `shop`.`t_dealer_front` (`front_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '门店用户信息表';
CREATE TABLE IF NOT EXISTS `shop`.`t_customer` (
  `cust_id` VARCHAR(32) NOT NULL COMMENT '客户id',
  `cust_no` VARCHAR(16) NOT NULL COMMENT '客户编号',
  `cust_name` VARCHAR(300) NOT NULL COMMENT '名字',
  `phone` VARCHAR(11) NOT NULL COMMENT '手机号码',
  `address` VARCHAR(500) NOT NULL COMMENT '地址',
  PRIMARY KEY (`cust_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '客户信息';
CREATE TABLE IF NOT EXISTS `shop`.`t_order` (
  `order_id` VARCHAR(32) NOT NULL COMMENT '订单ID',
  `order_no` VARCHAR(16) NOT NULL COMMENT '订单号',
  `order_price` DECIMAL(18,2) NOT NULL COMMENT '订单价格',
  `order_actual_price` DECIMAL(18,2) NOT NULL,
  `num` INT NOT NULL COMMENT '数量',
  `order_status` VARCHAR(2) NOT NULL COMMENT '订单状态',
  `cust_order_status` VARCHAR(2) NULL COMMENT '客户订单状态',
  `dealer_id` VARCHAR(32) NOT NULL COMMENT '经销商ID',
  `cust_id` VARCHAR(32) NOT NULL COMMENT '客户id',
  `front_id` VARCHAR(32) NULL COMMENT '门店id',
  PRIMARY KEY (`order_id`),
  INDEX `fk_t_order_t_dealer1_idx` (`dealer_id` ASC),
  INDEX `fk_t_order_t_customer1_idx` (`cust_id` ASC),
  INDEX `fk_t_order_t_dealer_front1_idx` (`front_id` ASC),
  CONSTRAINT `fk_t_order_t_dealer1`
    FOREIGN KEY (`dealer_id`)
    REFERENCES `shop`.`t_dealer` (`dealer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_order_t_customer1`
    FOREIGN KEY (`cust_id`)
    REFERENCES `shop`.`t_customer` (`cust_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_order_t_dealer_front1`
    FOREIGN KEY (`front_id`)
    REFERENCES `shop`.`t_dealer_front` (`front_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '订单信息';
CREATE TABLE IF NOT EXISTS `shop`.`t_product` (
  `product_id` VARCHAR(32) NOT NULL COMMENT '产品ID',
  `product_no` VARCHAR(16) NOT NULL COMMENT '产品编号',
  `product_name` VARCHAR(300) NOT NULL COMMENT '产品名称',
  `price` DECIMAL(18,2) NOT NULL COMMENT '价格',
  `preferential_price` DECIMAL(18,2) NOT NULL COMMENT '优惠价',
  `product_desc` TEXT NULL COMMENT '产品描述',
  `product_type` VARCHAR(300) NULL COMMENT '产品类型',
  `product_kind` VARCHAR(300) NULL COMMENT '产品种类',
  `product_topic` VARCHAR(300) NULL COMMENT '产品主题',
  `product_status` VARCHAR(2) NOT NULL COMMENT '状态',
  `dealer_id` VARCHAR(32) NOT NULL COMMENT '经销商ID',
  PRIMARY KEY (`product_id`),
  INDEX `fk_t_product_t_dealer_idx` (`dealer_id` ASC),
  CONSTRAINT `fk_t_product_t_dealer`
    FOREIGN KEY (`dealer_id`)
    REFERENCES `shop`.`t_dealer` (`dealer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '产品信息';
CREATE TABLE IF NOT EXISTS `shop`.`t_order_product` (
  `product_id` VARCHAR(32) NOT NULL COMMENT '产品ID',
  `product_no` VARCHAR(16) NOT NULL COMMENT '产品编号',
  `product_name` VARCHAR(300) NOT NULL COMMENT '产品名称',
  `price` DECIMAL(18,2) NOT NULL COMMENT '价格',
  `preferential_price` DECIMAL(18,2) NOT NULL COMMENT '优惠价',
  `product_desc` TEXT NULL COMMENT '产品描述',
  `product_type` VARCHAR(300) NULL COMMENT '产品型号',
  `product_kind` VARCHAR(300) NULL COMMENT '产品种类',
  `product_topic` VARCHAR(300) NULL COMMENT '产品主题',
  `num` INT NULL COMMENT '数量',
  `order_id` VARCHAR(32) NOT NULL,
  INDEX `fk_t__order_product_t_order1_idx` (`order_id` ASC),
  PRIMARY KEY (`product_id`, `order_id`),
  CONSTRAINT `fk_t__order_product_t_order1`
    FOREIGN KEY (`order_id`)
    REFERENCES `shop`.`t_order` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '订单产品快照信息';
CREATE TABLE IF NOT EXISTS `shop`.`t_product_attachment` (
  `attachment_id` VARCHAR(32) NOT NULL COMMENT '附件ID',
  `path` VARCHAR(500) NOT NULL COMMENT '存放路径',
  `attachment_name` VARCHAR(300) NOT NULL COMMENT '附件名称',
  `attachment_type` VARCHAR(2) NOT NULL COMMENT '附件类型',
  `seq` INT NOT NULL COMMENT '序号',
  `product_id` VARCHAR(32) NOT NULL COMMENT '产品id',
  PRIMARY KEY (`attachment_id`),
  INDEX `fk_t_product_attachment_t_product1_idx` (`product_id` ASC),
  CONSTRAINT `fk_t_product_attachment_t_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `shop`.`t_product` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '产品附件信息';
CREATE TABLE IF NOT EXISTS `shop`.`t_order_product_attachment` (
  `attachment_id` VARCHAR(32) NOT NULL COMMENT '附件ID',
  `path` VARCHAR(500) NOT NULL COMMENT '存放路径',
  `attachment_name` VARCHAR(300) NOT NULL COMMENT '附件名称',
  `attachment_type` VARCHAR(2) NOT NULL COMMENT '附件类型',
  `seq` INT NOT NULL COMMENT '序号',
  `product_id` VARCHAR(32) NOT NULL COMMENT '产品ID',
  PRIMARY KEY (`attachment_id`),
  INDEX `fk_t_product_attachment_copy1_t__order_product1_idx` (`product_id` ASC),
  CONSTRAINT `fk_t_product_attachment_copy1_t__order_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `shop`.`t_order_product` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '订单产品附件快照信息';
CREATE TABLE IF NOT EXISTS `shop`.`t_data_dictionary` (
  `data_id` INT NOT NULL COMMENT '数据ID',
  `column_search_name` VARCHAR(300) NULL COMMENT '字段检索名',
  `column_search` VARCHAR(32) NOT NULL COMMENT '字段检索值',
  `value_code` VARCHAR(32) NOT NULL COMMENT '值代码',
  `value_name` VARCHAR(300) NOT NULL COMMENT '值名称',
  `value_seq` INT NOT NULL COMMENT '值序号',
  `is_valid` VARCHAR(1) NOT NULL COMMENT '是否有效（0无效，1有效）',
  `is_default` VARCHAR(1) NULL COMMENT '是否默认（1为默认，其他为不默认）',
  `child_column_search` VARCHAR(32) NULL COMMENT '字段子索引',
  `dealer_id` VARCHAR(32) NULL COMMENT '商铺ID（有商铺id，则为某一商铺特有的数据）',
  PRIMARY KEY (`data_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

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
  `shop_id` VARCHAR(32) NULL COMMENT '商铺ID（有商铺id，则为某一商铺特有的数据）',
  PRIMARY KEY (`data_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
CREATE TABLE IF NOT EXISTS `shop`.`t_shop` (
  `shop_id` VARCHAR(32) NOT NULL COMMENT '商铺id',
  `shop_no` VARCHAR(16) NOT NULL COMMENT '商铺编号',
  `shop_name` VARCHAR(300) NOT NULL COMMENT '商铺名称',
  `shop_owner_id` VARCHAR(32) NOT NULL COMMENT '商铺老板ID',
  `province` VARCHAR(32) NULL COMMENT '省',
  `city` VARCHAR(32) NULL COMMENT '市',
  `village` VARCHAR(32) NULL COMMENT '区／县',
  `province_name` VARCHAR(300) NULL COMMENT '省',
  `city_name` VARCHAR(300) NULL COMMENT '市',
  `village_name` VARCHAR(300) NULL COMMENT '区／县',
  `status` VARCHAR(2) NOT NULL COMMENT '状态',
  PRIMARY KEY (`shop_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '商铺信息';
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
  `shop_id` VARCHAR(2) NOT NULL COMMENT '商铺ID',
  `status` VARCHAR(45) NOT NULL COMMENT '状态',
  PRIMARY KEY (`product_id`),
  INDEX `fk_t_product_t_shop_idx` (`shop_id` ASC),
  CONSTRAINT `fk_t_product_t_shop`
    FOREIGN KEY (`shop_id`)
    REFERENCES `shop`.`t_shop` (`shop_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '产品信息';
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
  `order_prive` DECIMAL(18,2) NOT NULL COMMENT '订单价格',
  `num` INT NOT NULL COMMENT '数量',
  `status` VARCHAR(2) NOT NULL COMMENT '状态',
  `shop_id` VARCHAR(32) NOT NULL COMMENT '商铺ID',
  `cust_id` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_t_order_t_shop1_idx` (`shop_id` ASC),
  INDEX `fk_t_order_t_customer1_idx` (`cust_id` ASC),
  CONSTRAINT `fk_t_order_t_shop1`
    FOREIGN KEY (`shop_id`)
    REFERENCES `shop`.`t_shop` (`shop_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_order_t_customer1`
    FOREIGN KEY (`cust_id`)
    REFERENCES `shop`.`t_customer` (`cust_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '订单信息';
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

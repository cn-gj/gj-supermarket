/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/7/12 15:02:18                           */
/*==============================================================*/


drop table if exists allot;

drop table if exists allot_detail;

drop table if exists cashier_desk;

drop table if exists check_detail;

drop table if exists check_scope;

drop table if exists check_state;

drop table if exists cust_emp_relation;

drop table if exists customer;

drop table if exists employee;

drop table if exists goods;

drop table if exists goods_type;

drop table if exists inventory_check;

drop table if exists inventory_detail;

drop table if exists level;

drop table if exists member;

drop table if exists oper_info;

drop table if exists oper_model;

drop table if exists `order`;

drop table if exists order_detail;

drop table if exists permissions;

drop table if exists pro_shop_relation;

drop table if exists provider;

drop table if exists role_per_relation;

drop table if exists roles;

drop table if exists shop;

drop table if exists shop_type;

drop table if exists spec;

drop table if exists spec_detail;

drop table if exists spec_tmp;

drop table if exists store;

drop table if exists ticket;

drop table if exists ticket_detail;

drop table if exists whole_order;

/*==============================================================*/
/* Table: allot                                                 */
/*==============================================================*/
create table allot
(
   id                   int not null auto_increment,
   in_shop_id           int,
   out_shop_id          int,
   allot_type           int,
   allot_state          int,
   single_state         int,
   single_money         double,
   single_date          date,
   allot_detail_id      int,
   primary key (id)
);

/*==============================================================*/
/* Table: allot_detail                                          */
/*==============================================================*/
create table allot_detail
(
   id                   int not null auto_increment,
   allot_id             int,
   goods_id             int,
   primary key (id)
);

/*==============================================================*/
/* Table: cashier_desk                                          */
/*==============================================================*/
create table cashier_desk
(
   id                   int not null auto_increment,
   cashier_name         varchar(20) not null,
   shop_id              int not null,
   cashier_state        int not null,
   createDate           date not null,
   modifyDate           date,
   primary key (id)
);

/*==============================================================*/
/* Table: check_detail                                          */
/*==============================================================*/
create table check_detail
(
   id                   int not null auto_increment,
   ismodify             int,
   goods_id             int,
   inv_detail_id        int,
   check_count          int,
   bep_count            int,
   cost_price           double,
   original_price       double,
   check_money          double,
   bep_money            double,
   cause_info           varchar(60),
   primary key (id)
);

/*==============================================================*/
/* Table: check_scope                                           */
/*==============================================================*/
create table check_scope
(
   id                   int not null auto_increment,
   scope_name           varchar(50),
   primary key (id)
);

/*==============================================================*/
/* Table: check_state                                           */
/*==============================================================*/
create table check_state
(
   id                   int not null auto_increment,
   state_name           varchar(20),
   primary key (id)
);

/*==============================================================*/
/* Table: cust_emp_relation                                     */
/*==============================================================*/
create table cust_emp_relation
(
   id                   int not null auto_increment,
   customer_id          int not null,
   emp_id               int not null,
   primary key (id)
);

/*==============================================================*/
/* Table: customer                                              */
/*==============================================================*/
create table customer
(
   id                   int not null auto_increment,
   customer_name        varchar(20) not null,
   customer_linkman     varchar(20),
   customer_phone       varchar(11) not null,
   customer_email       varchar(50),
   bank                 varchar(20),
   bank_num             varchar(20),
   pro_address          varchar(50),
   primary key (id)
);

/*==============================================================*/
/* Table: employee                                              */
/*==============================================================*/
create table employee
(
   id                   int not null auto_increment,
   emp_account          varchar(50) not null,
   emp_pwd              varchar(50) not null,
   emp_name             varchar(20) not null,
   role_id              int not null,
   emp_status           int not null,
   emp_phone            varchar(11) not null,
   createDate           date not null,
   shop_id              int not null,
   primary key (id)
);

/*==============================================================*/
/* Table: goods                                                 */
/*==============================================================*/
create table goods
(
   id                   int not null auto_increment,
   goods_name           varchar(20) not null,
   goods_code           varbinary(50) not null,
   price                double not null,
   member_price         double not null,
   whole_price          double not null,
   cost_price           double not null,
   spec_tmp_id          int not null,
   unit_id              varchar(10),
   goods_type_id        int not null,
   provider_id          int not null,
   goods_address        varchar(30),
   yield_date           date not null,
   expiration_day       varchar(10) not null,
   expiration_date      date not null,
   primary key (id)
);

/*==============================================================*/
/* Table: goods_type                                            */
/*==============================================================*/
create table goods_type
(
   id                   int not null auto_increment,
   goods_type_name      varchar(20) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: inventory_check                                       */
/*==============================================================*/
create table inventory_check
(
   id                   int not null auto_increment,
   shop_id              int,
   check_scope_id       int,
   createDate           date,
   check_date           date,
   check_state_id       int,
   check_detail_id      int,
   primary key (id)
);

/*==============================================================*/
/* Table: inventory_detail                                      */
/*==============================================================*/
create table inventory_detail
(
   id                   int not null auto_increment,
   goods_id             int,
   goods_count          int,
   primary key (id)
);

/*==============================================================*/
/* Table: level                                                 */
/*==============================================================*/
create table level
(
   id                   int not null auto_increment,
   level_name           varchar(20) not null,
   level_image          varchar(50) not null,
   discount             varchar(5) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: member                                                */
/*==============================================================*/
create table member
(
   id                   int not null auto_increment,
   member_name          varchar(20) not null,
   member_phone         varchar(11) not null,
   member_birthday      date,
   member_sex           varchar(6),
   shop_id              int not null,
   level_id             int not null,
   total_money          double not null,
   total_sorce          int not null,
   residue_money        double not null,
   residue_sorce        int not null,
   createDate           date not null,
   primary key (id)
);

/*==============================================================*/
/* Table: oper_info                                             */
/*==============================================================*/
create table oper_info
(
   id                   int not null auto_increment,
   oper_date            date,
   remark               varchar(100),
   oper_state           int,
   emp_id               int,
   oper_model_id        int,
   primary key (id)
);

/*==============================================================*/
/* Table: oper_model                                            */
/*==============================================================*/
create table oper_model
(
   id                   int not null auto_increment,
   model_name           varchar(30),
   table_name           varchar(30),
   data_id              int,
   primary key (id)
);

/*==============================================================*/
/* Table: "order"                                               */
/*==============================================================*/
create table `order`
(
   id                   int not null auto_increment,
   shop_id              varchar(20) not null,
   place_order_date     date not null,
   ready_date           date not null,
   emp_id               int not null,
   odetail_id           int not null,
   single_state         int not null,
   take_state           int not null,
   primary key (id)
);

/*==============================================================*/
/* Table: order_detail                                          */
/*==============================================================*/
create table order_detail
(
   id                   int not null auto_increment,
   goods_id             int not null,
   goods_count          int not null,
   total_money          double not null,
   primary key (id)
);

/*==============================================================*/
/* Table: permissions                                           */
/*==============================================================*/
create table permissions
(
   id                   int not null auto_increment,
   permissions_name     varchar(50) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: pro_shop_relation                                     */
/*==============================================================*/
create table pro_shop_relation
(
   id                   int not null auto_increment,
   pro_id               int not null,
   shop_id              int not null,
   primary key (id)
);

/*==============================================================*/
/* Table: provider                                              */
/*==============================================================*/
create table provider
(
   id                   int not null auto_increment,
   pro_name             varchar(30) not null,
   pro_linkman          varchar(20),
   pro_phone            varchar(11) not null,
   pro_email            varchar(30),
   bank                 varchar(20),
   bank_num             varchar(20),
   pro_address          varchar(50),
   should_money         double not null,
   pro_status           int not null,
   ready_money          double not null,
   createDate           date not null,
   primary key (id)
);

/*==============================================================*/
/* Table: role_per_relation                                     */
/*==============================================================*/
create table role_per_relation
(
   id                   int not null auto_increment,
   role_id              int not null,
   per_id               int not null,
   primary key (id)
);

/*==============================================================*/
/* Table: roles                                                 */
/*==============================================================*/
create table roles
(
   id                   int not null auto_increment,
   role_name            varbinary(20) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: shop                                                  */
/*==============================================================*/
create table shop
(
   id                   int not null auto_increment,
   shop_name            varchar(50) not null,
   shop_account         varchar(50) not null,
   shop_pwd             varchar(20) not null,
   shop_linkman         varchar(20) not null,
   shop_phone           varchar(11) not null,
   shop_logo            varchar(50) not null,
   shop_hours           varchar(20),
   shop_advice          varchar(255),
   shop_address         varchar(150),
   shop_type_id         int not null,
   createDate           date not null,
   primary key (id)
);

/*==============================================================*/
/* Table: shop_type                                             */
/*==============================================================*/
create table shop_type
(
   id                   int not null auto_increment,
   shop_type_name       varchar(20) not null,
   createDate           date,
   primary key (id)
);

/*==============================================================*/
/* Table: spec                                                  */
/*==============================================================*/
create table spec
(
   id                   int not null auto_increment,
   spec_name            varchar(20) not null,
   spec_tmp_id          int not null,
   primary key (id)
);

/*==============================================================*/
/* Table: spec_detail                                           */
/*==============================================================*/
create table spec_detail
(
   id                   int not null auto_increment,
   spec_detail_name     varchar(0) not null,
   spec_id              int not null,
   primary key (id)
);

/*==============================================================*/
/* Table: spec_tmp                                              */
/*==============================================================*/
create table spec_tmp
(
   id                   int not null auto_increment,
   spec_detail_name     varchar(20) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: store                                                 */
/*==============================================================*/
create table store
(
   id                   int not null auto_increment,
   store_name           varchar(50),
   shop_id              int,
   inv_detail_id        int,
   primary key (id)
);

/*==============================================================*/
/* Table: ticket                                                */
/*==============================================================*/
create table ticket
(
   id                   int not null auto_increment,
   cashier_desk_id      int not null,
   place_order_date     date not null,
   member_id            int,
   original_count_money double not null,
   practical_money      double not null,
   discount_money       double,
   sell_count           int not null,
   single_score         int,
   emp_id               int not null,
   ticket_id            int not null,
   primary key (id)
);

/*==============================================================*/
/* Table: ticket_detail                                         */
/*==============================================================*/
create table ticket_detail
(
   id                   int not null auto_increment,
   goods_id             int not null,
   goods_count          int not null,
   total_money          double not null,
   primary key (id)
);

/*==============================================================*/
/* Table: whole_order                                           */
/*==============================================================*/
create table whole_order
(
   id                   int not null auto_increment,
   customer_id          int,
   shop_id              int,
   place_order_date     date,
   ready_date           date,
   emp_id               int,
   odetail_id           int,
   single_state         int,
   take_state           int,
   primary key (id)
);


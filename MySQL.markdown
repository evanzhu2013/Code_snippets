### MySQL安装

```
# 安装MySQL
brew instll mysql

# 卸载MySQL
brew uninstall --force mysql
```

### 启动MySQL服务

```
mysql.server stop;
mysql.server start;
```

### 登陆登出账号

```
mysql -uroot;
quit;
```

### 数据库的使用

```
show databases; # 查看数据库
use databases; # 使用数据库
```
### 使用表格

```
# create books table
create table test.books (book_id int,title text, status int);
show tables from test;  # 显示数据库中的表格
use test; # 使用数据库
describe books;  # 描述表格
drop table <表名>;
```

### 选择数据

```
SELECT * FROM books;
SELECT * FROM books WHERE status = 1;
SELECT * FROM books WHERE status = 0 \G;
```

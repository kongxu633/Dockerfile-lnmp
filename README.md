Docker容器化PHP开发环境搭建-LNMP<br>
(本docker只作为开发临时使用，不建议使用的生成环境，或者作为开发使用：)


下载后直接使用命令<br>

    docker-compose up

可以直接使用


默认文件位置为`/var/www` 目录下<br>
新建  `index.php` 文件<br>

    <?php
        phpinfo();

可以查看文件位置<br>

里面还有配置了一个虚拟域名，`www.demo.com`<br>
使用前请更改本机的`host`文件进行访问<br>
文件存放的位置为 `/var/www/demo`<br>


数据库存放位置为`/var/www/data/`<br>
日志文件没有开启，如果开启请注意权限<br>
PS：使用日志可以在文件夹里提前创建好文件，否则第一次启动时会提示找不到文件，是因为没有权限进行创建文件

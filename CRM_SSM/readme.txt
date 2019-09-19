<!-- Spring版本号 -->4.3.8.RELEASE
<!-- spring核心包 -->spring-core/spring-context
<!-- springmvc包 -->spring-webmvc/spring-web/spring-jdbc
<!--jsp、 servlet的jar包 -->tomcat-catalina
<!-- pagehelper翻页插件 -->pagehelper
<!-- mybatis包 -->mysql-connector-java/mybatis-spring/mybatis
<!-- spring事务包 -->spring-tx/aspectjweaver
<!-- 连接池包 -->c3p0
<!-- mybatis-spring支持包 -->mybatis-ehcache
<!-- json包 -->jackson-core/jackson-databind/jackson-annotations

在web.xml配置加载string环境的<listener>
在web.xml配置加载string-mvc环境的<servlet>
在web.xml配置处理字符的过滤器<filter>
在applicationContext.xml配置ds
在applicationContext.xml配置mysqlSessionFactory
在spring-mvc.xml配置扫描器context
在spring-mvc.xml配置<mvc:annotation-driven />用于处理json
在spring-mvc.xml配置视图解析器suffix
在tx.xml配置数据源事务管理器dsmanager
在tx.xml配置切入点daopointcut
在tx.xml配置切入面TxBean
在mybatis-config.xml配置settings：开启打印sql语句调试模式、开启二级缓存
在mybatis-config.xml配置plugins处理分页
在mybatis-config.xml配置mappers
配置ehcache.xml
applicationContext_*.xml配置*dao
spring-mvc-*.xml配置*service
*Mapper.xml配置mapper命名空间com.*
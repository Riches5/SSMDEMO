<!-- Spring�汾�� -->4.3.8.RELEASE
<!-- spring���İ� -->spring-core/spring-context
<!-- springmvc�� -->spring-webmvc/spring-web/spring-jdbc
<!--jsp�� servlet��jar�� -->tomcat-catalina
<!-- pagehelper��ҳ��� -->pagehelper
<!-- mybatis�� -->mysql-connector-java/mybatis-spring/mybatis
<!-- spring����� -->spring-tx/aspectjweaver
<!-- ���ӳذ� -->c3p0
<!-- mybatis-spring֧�ְ� -->mybatis-ehcache
<!-- json�� -->jackson-core/jackson-databind/jackson-annotations

��web.xml���ü���string������<listener>
��web.xml���ü���string-mvc������<servlet>
��web.xml���ô����ַ��Ĺ�����<filter>
��applicationContext.xml����ds
��applicationContext.xml����mysqlSessionFactory
��spring-mvc.xml����ɨ����context
��spring-mvc.xml����<mvc:annotation-driven />���ڴ���json
��spring-mvc.xml������ͼ������suffix
��tx.xml��������Դ���������dsmanager
��tx.xml���������daopointcut
��tx.xml����������TxBean
��mybatis-config.xml����settings��������ӡsql������ģʽ��������������
��mybatis-config.xml����plugins�����ҳ
��mybatis-config.xml����mappers
����ehcache.xml
applicationContext_*.xml����*dao
spring-mvc-*.xml����*service
*Mapper.xml����mapper�����ռ�com.*
FROM tomcat:10-jdk21

# حذف تطبيقات Tomcat الافتراضية (اختياري، لتنظيف)
RUN rm -rf /usr/local/tomcat/webapps/*

# نسخ ملف WAR الجاهز إلى مجلد التطبيقات
COPY target/EmployeeManagement-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/EmployeeManagement.war

# فتح المنفذ الافتراضي لـ Tomcat
EXPOSE 8080

CMD ["catalina.sh", "run"]

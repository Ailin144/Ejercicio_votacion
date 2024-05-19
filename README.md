# Datos de la aplicación
## Pasos Antes del uso de la aplicación

<br>
<ul>
<li>
Cambio de variables de entorno de base de datos (api/connection.php)

    {% filename %}command-line{% endfilename %}
        $_ENV["HOST"]       = "MY_HOST";        // MY_HOST = El host de la base de datos
        $_ENV["DATABASE"]   = "MY_DATABASE";    // MY_DATABASE = Nombre de la base de datos
        $_ENV["USER"]       = "MY_USER";        // MY_USER = Nombre del usuario de la base de datos
        $_ENV["PASS"]       = "MY_PASS";        // MY_PASSWORD = La contraseña de la base de datos
</li>
<li>
    Importar La base de datos desde el archivo db_form.sql
</li>
</ul>

## Versiones de software
<ul>
<li>
    Versión de PHP: PHP 8.2.4
</li>
<li>
    Versión de pdo_mysql: mysqlnd 8.2.4
</li>
</ul>


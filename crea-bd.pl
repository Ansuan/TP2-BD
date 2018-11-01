#!/usr/bin/perl
use DBI;
$database = "prueba";
$hostname = "localhost";
$user = "root";
$password = "prueba";
$port = 3306;
my $base_datos="prueba";
my $tabla_usuario="usuarios";
my $dsn = "DBI:mysql:database=$database;host=$hostname;port=$port";
my $dbh = DBI->connect($dsn, $user, $password);
my $tabla_usuario="usuarios";

my $campos_tabla_usuario=
			 " usu VARCHAR(15) NOT NULL,".
		     " contra VARCHAR(15) NOT NULL";

my $SQL_crea_tabla_usuario="create table $tabla_usuario ($campos_tabla_usuario);";
print "\n Se han creado las tablas $tabla_usuario y $tabla_vecino\n";

my $SQL_inserta="insert into $tabla_usuario values ('prueba','prueba');";
print "\n Se ha insertado correctamente\n";
exit;
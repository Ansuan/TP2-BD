#!/usr/bin/perl
use DBI;
$database = "prueba";
$hostname = "localhost";
$user = "root";
$password = "prueba";
$port = 3306;
my $base_datos="prueba";
my $tabla_usuario="usuarios";
my $tabla_vecino="vecinos";
my $dsn = "DBI:mysql:database=$database;host=$hostname;port=$port";
my $dbh = DBI->connect($dsn, $user, $password);
my $tabla_usuario="usuarios";
my $tabla_vecino="vecinos";

my $campos_tabla_usuario=
			 " usu VARCHAR(15) NOT NULL,".
		     " contra VARCHAR(15) NOT NULL";
my $campos_tabla_vecino=
			 " nombre VARCHAR(15) NOT NULL,".
			 " debe NUMBER(5)";
my $SQL_crea_tabla_usuario="create table $tabla_usuario ($campos_tabla_usuario);";
my $SQL_crea_tabla_vecino="create table $tabla_vecino ($campos_tabla_vecino);";
print "\n Se han creado las tablas $tabla_usuario y $tabla_vecino\n";

my $SQL_inserta="insert into $tabla_usuario values ('prueba','prueba');";
my $SQL_inserta="insert into $tabla_vecino values ('Luis',10);";
my $SQL_inserta="insert into $tabla_vecino values ('Pepe',0);";
my $SQL_inserta="insert into $tabla_vecino values ('Mateo',50);";
my $SQL_inserta="insert into $tabla_vecino values ('Carmen',2);";
my $SQL_inserta="insert into $tabla_vecino values ('Julia',80);";
my $SQL_inserta="insert into $tabla_vecino values ('Manuel',150);";
my $SQL_inserta="insert into $tabla_vecino values ('Antonio',0);";
print "\n Se ha insertado correctamente\n";
exit;
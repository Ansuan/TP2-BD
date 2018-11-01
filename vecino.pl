#!/usr/bin/perl
sub usuarios {
use DBI;
$database = "prueba";
$hostname = "localhost";
$user = "root";
$password = "prueba";
$port = 3306;
my $base_datos="prueba";
my $dsn = "DBI:mysql:database=$database;host=$hostname;port=$port";
my $dbh = DBI->connect($dsn, $user, $password);
$sth = $dbh->prepare("SELECT usu contra
       FROM usuarios
       WHERE usu = "$q->param('name')"");
$sth->execute;
}
use CGI;
$q = new CGI;
if (!$q->param){
print $q->header;
print $q->start_html('Login');
print $q->start_form;
print $q->h3('Login');
print $q->h5('Usuario: ');
print $q->textfield(-name=>'name');
print $q->br;
print $q->h5('Contrasena: ');
print $q->password_field(-name=>'pass');
print $q->br;
print $q->submit(-value=>'Acceder');
print $q->endform;
} else {
sub usuarios;
if ($q->param('name') eq $sth->{'usu'}){
if ($q->param('pass') eq $sth->{'contra'}){ 
use CGI;
$query = new CGI;
print $query->header;
print $query->start_html('Consulta deudas');
print $query->start_form(-method=>'GET', 
    			-action=>"/cgi-bin/vecino2.pl");
print $query->h3('Comunidad de vecinos:');
print $query->scrolling_list(-name=>'nombre',
				 -values=>[
					   'Luis',
					   'Pepe',
					   'Mateo',
					   'Carmen',
					   'Julia',
					   'Manuel',
					   'Antonio'],
				 -size=>7,
				 -multiple=>'true');	
	print $query->br;
	print $query->submit(-value=>'Consultar');
	print $query->endform;
} 
}
print $query->end_html;
}
print $q->end_html;
exit;
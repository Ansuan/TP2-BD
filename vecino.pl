#!/usr/bin/perl
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
$usu=prueba;
$passwd=prueba;
if ($q->param('name') eq $usu){
if ($q->param('pass') eq $passwd){ 
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

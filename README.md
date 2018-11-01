# TP2

Este ejercicio usa dos formularios consultando un fichero sin base de datos.


Usuario: prueba


Contraseña: prueba


### [vecino.pl](https://github.com/Ansuan/TP2/blob/master/vecino.pl)
```perl
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
```

### [vecino2.pl](https://github.com/Ansuan/TP2/blob/master/vecino2.pl)
```perl
#!/usr/bin/perl
print "Content-type: text/html\n\n";
open (F,"<","vecinos");
@linea = split ("&",$ENV{'QUERY_STRING'});
@nom = split ("=",$linea[0]);
foreach $archivo (<F>) {
 @prueba = split (":",$archivo);
 if ($prueba[0] eq $nom[1]){
   print $nom[1]," debe $prueba[1]";
  }
}
```

### [vecinos](https://github.com/Ansuan/TP2/blob/master/vecinos)
```plain
Luis:10E
Pepe:0E
Mateo:50E
Carmen:2E
Julia:80E
Manuel:150E
Antonio:0E
```

Antonio Robles Torres

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

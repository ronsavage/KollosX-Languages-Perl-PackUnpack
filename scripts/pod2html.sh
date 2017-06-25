#!/bin/bash

FILE=Perl-modules/html/KollosX/Languages/Perl/PackUnpack.html

pod2html.pl -i lib/KollosX/Languages/Perl/PackUnpack.pm -o $DR/$FILE

cp $DR/$FILE ~/savage.net.au/$FILE

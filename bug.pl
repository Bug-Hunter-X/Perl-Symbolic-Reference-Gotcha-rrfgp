my $var = 10;
my $ref = \$var; #this is a reference to the scalar variable
$$ref = 20; #this modifies the original variable
print $var; #prints 20
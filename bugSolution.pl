my $var = 10;
my $ref = \$var; #this is a reference to the scalar variable

# safer way to modify the value through the reference
${$ref} = 20; #dereferencing with curly braces
print $var; #prints 20

#alternative using a proper subroutine
 sub modify_var {
  my (\$var_ref) = @_;
  $$var_ref = 30;
 }

 modify_var(\$var);
 print $var; #prints 30
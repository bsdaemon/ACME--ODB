# ACME::ODB 
# (C) 2010, William Dean Freeman
#           deanf@cpan.org
# This is free software, made available under the terms of the Artistic License
# version 2.0.  Please see http://www.perlfoundation.org/artistic_license_2_0
# for details.

my $version = "0.0.1";

# Without MooseX::Declare, this whole shebang is for naught.
use MooseX::Declare;


class ODB {
    has name        => (isa => 'Str', is => 'rw');
    has age         => (isa => 'Num', is => 'rw', default => 21);
    has drinkage    => (isa => 'Num', is => 'rw');
    has dateage     => (isa => 'Num', is => 'rw');

    
    # it's a well-known fact that the minimum age one can date without being
    # creepy is half one's own age, plus seven years.
    
    method canDate {
        $self->dateage(($self->age / 2) + 7)
    }
    
    # the corolary to the first rule is, the minimum age for a scotch one should
    # drink is twice one's own age minus seven years.
    
    method canDrink {
        $self->drinkage((2 * $self->age) - 7); 
    }

    # more to come as I think of them...
    
}
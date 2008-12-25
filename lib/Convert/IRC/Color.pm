# $Revision: 0.01 $
# $Date: Thr Dec 25 12:00:00 2008 -0500 $
# $Source: lib/Games/RCP_Framework/Utilities/Colors.pm $

package Convert::IRC::Color;

use 5.010;

use warnings;
use strict;
use utf8;

use Sub::Exporter -setup =>
    { exports => [qw(name_by_irc_color hex_by_irc_color)] };

our $VERSION = '0.01';

## no critic
sub name_by_irc_color {
    given ($_) {
        when (0)  { return 'white'; }
        when (1)  { return 'black'; }
        when (2)  { return 'blue'; }
        when (3)  { return 'green'; }
        when (4)  { return 'red'; }
        when (5)  { return 'brown'; }
        when (6)  { return 'purple'; }
        when (7)  { return 'orange'; }
        when (8)  { return 'yellow'; }
        when (9)  { return 'light green'; }
        when (10) { return 'cyan'; }
        when (11) { return 'light cyan'; }
        when (12) { return 'light blue'; }
        when (13) { return 'pink'; }
        when (14) { return 'gray'; }
        when (15) { return 'light gray'; }
        default   { return; };
    }
}

sub hex_by_irc_color {
    given ($_) {
        when (0)  { return 'FFFFFF'; }
        when (1)  { return '000000'; }
        when (2)  { return '0000FF'; }
        when (3)  { return '00FF00'; }
        when (4)  { return 'FF0000'; }
        when (5)  { return 'A52A2A'; }
        when (6)  { return '800080'; }
        when (7)  { return 'FFA500'; }
        when (8)  { return 'FFFF00'; }
        when (9)  { return '90EE90'; }
        when (10) { return '00FFFF'; }
        when (11) { return 'E0FFFF'; }
        when (12) { return 'ADD8E6'; }
        when (13) { return 'FFC0CB'; }
        when (14) { return '808080'; }
        when (15) { return 'D3D3D3'; }
        default   { return; };
    }
}
## use critic

1;

__END__

=head1 DISCLAIMER

This software is currently under development.  It is not done.
While it will not be done quickly, contributions can help
make things go faster.  Please contribute if you can.

=head1 NAME

Convert::IRC::Color - Convert IRC colors to names or hex codes.

=head1 VERSION

Version 0.01

=head1 SYNOPSIS

 use Convert::IRC::Color qw(name_by_irc_color hex_by_irc_color);
 my $irc = 2; # blue
 my $word = name_by_irc_color($irc) # Returns 'blue';
 my $html = hex_by_irc_color($irc) # Returns '0000FF';

=head1 DESCRIPTION

This module has been made for those that wish to interact between
IRC and other mediums, such as websites.  While not everyone
is a fan of using colors with IRC, they are not going away any time
soon.  It is with this rationale that this module was made, to at
least facilitate and easy conversion from IRC's codes to other
formats.

=head1 SUBROUTINES/METHODS

=head2 name_by_irc_color

This function returns the color name most associated with
the supplied IRC color.

The parameters are as follows:

=over 4

=item * $_[0]

The IRC color code.

Returns the color name on success, or nothing on failure.

=back

=head2 hex_by_irc_color

This function returns the hex representation of the 
supplied IRC color.

The parameters are as follows:

=over 4

=item * $_[0]

The IRC color code.

Returns the color name on success, or nothing on failure.

=back

=head1 DIAGNOSTICS

No error messages are printed, and no exceptions are thrown.
If the parameter passed in is not a number between 0 and 15,
the functions just return;, which is equal to false.

=head1 CONFIGURATION AND ENVIRONMENT

There should be no issues with the environment this is placed in.

=head1 DEPENDENCIES

Perl 5.10 or higher is required due to the use of the given/when
syntax.  If heavily requested, I can work on a 5.8 compatible
method of these functions.

=head1 INCOMPATIBILITIES

There are no known incompatibilities in this module.

=head1 BUGS AND LIMITATIONS

Please report any bugs or feature requests to C<bug-games-rcp_framework at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Convert-IRC-Color>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 AUTHOR

Jason Felds, C<< <wolfman.ncsu2000 at gmail.com> >>

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Convert::IRC::Color


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Convert-IRC-Color>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Convert-IRC-Color>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Convert-IRC-Color>

=item * Search CPAN

L<http://search.cpan.org/dist/Convert-IRC-Color/>

=back

=head1 LICENSE AND COPYRIGHT

Copyright 2008 Jason Felds, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

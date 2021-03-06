
=head1 NAME

Templer::Plugin::HTML - A simple (nop) HTML-formatting plugin

=cut

=head1 DESCRIPTION

This class implements a formatter plugin for C<templer> which allows
pages to be written using HTML.

It is provided as NOP.

This allows input such as this to be executed:

=for example begin

    Title: This is my page
    format: html
    ----
    <p>This is my page text</p>

=for example end

=cut

=head1 LICENSE

This module is free software; you can redistribute it and/or modify it
under the terms of either:

a) the GNU General Public License as published by the Free Software
Foundation; either version 2, or (at your option) any later version,
or

b) the Perl "Artistic License".

=cut

=head1 AUTHOR

Steve Kemp <steve@steve.org.uk>

=cut

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2012-2014 Steve Kemp <steve@steve.org.uk>.

This library is free software. You can modify and or distribute it under
the same terms as Perl itself.

=cut

=head1 METHODS

=cut


use strict;
use warnings;


package Templer::Plugin::HTML;


=head2 new

Constructor.  No arguments are supported/expected.

=cut

sub new
{
    my ( $proto, %supplied ) = (@_);
    my $class = ref($proto) || $proto;

    my $self = {};
    bless( $self, $class );
    return $self;
}


=head2 available

This plugin is always available.

=cut

sub available
{
    return 1;
}


=head2 format

Format the given text:  In our case return it unmodified.

=cut

sub format
{
    my ( $self, $str, $data ) = (@_);

    return ($str);
}

Templer::Plugin::Factory->new()
  ->register_formatter( "html", "Templer::Plugin::HTML" );

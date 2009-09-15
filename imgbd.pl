#!/usr/bin/perl -w

use strict;
use warnings;

use URI::Escape;
use LWP::UserAgent;
use HTTP::Request;

use Carp qw/
    croak
/;

sub _fetch_content
{
    my $url = shift;
    my $ua  = new LWP::UserAgent;
    $ua->agent('Mozilla/5.0');
    $ua->timeout(60);
    my $response = $ua->get($url);
    croak "HTTP Error: " . $response->error_as_HTML if $response->is_error;
    return $response->content();
}

sub main
{
    my $url     = shift(@ARGV);
    my $content = _fetch_content($url);
    my @matches = $content =~ m{<a[^>]*href="?([^\s>"]*/src/[0-9]*\.[a-z]*)"?[^>]*>[^<]*<img[^>]*src="?[^\s>"]*/thumb/[0-9]*s\.[a-z]*"?}mig;

    $url =~ m{^([a-z]*://[^\s/]*).*$}i;
    my $urlbase = $1;

    for my $match (@matches)
    {
        $match = "$urlbase$match" if $match =~ m{^/};
        print "$match\n";
    }
}

main();

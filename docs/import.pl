#!/usr/bin/perl -w

use strict;
use Getopt::Long;
use File::Copy;

my $from = shift @ARGV;
my $to = shift @ARGV;

my $ghlink = undef;
my $verbose = undef;

GetOptions ("gh-link=s" => \$ghlink,    # github link base for 'edit this page'
            "verbose"  => \$verbose);

do {
  print "Copying docs from $from to $to\n";
  print "Github base: $ghlink\n" if $ghlink;
  print "\n" 
} if $verbose;


sub processDir( $$ );

processDir( $from, $to );

print "Done\n" if $verbose;
exit 0;

# --------------------------------

sub processDir( $$ ) {
  my( $from, $to ) = @_;

  print "Processing $from to $to\n" if $verbose;

  if( ! -d $to ) {
    mkdir $to or die "Cannot mkdir $to: $!";
    print "  mkdir $to\n" if $verbose;
  };

  opendir( my $dh, $from ) or die "Can't open $from: $!";

  while (readdir $dh) {
    
    next if $_ =~ /^\./; # skip .files

    print "  Considering $_\n" if $verbose;

    if( -d "$from/$_" ) {
      print "  recursing into $from/$_\n" if $verbose;
      processDir( "$from/$_", "$to/$_" );
      next;
    };

    if( -f "$from/$_" && $_ !~ /\.md$/ ) {
      print "  copy $from/$_ to $to/$_\n" if $verbose;
      copy( "$from/$_","$to/$_") or die "Copy $from/$_ to $to/$_ failed: $!";
      next;
    }

    if( -f "$from/$_" && $_ =~ /\.md$/ ) {
      print "  process markdown $from/$_ to $to/$_\n" if $verbose;
      my @frontmatter;
      my $markdown;

      open IN, "<$from/$_" or die "Cannot open $from/$_: $!";
      my $line = <IN>;
      if( $line =~ /^---\s+$/ ) {
        # There is some frontmatter content, terminated with '---'
        $line = <IN>;
        while( $line !~ /^---\s+$/ ) {
          push @frontmatter, $line;
          $line = <IN>;
        }
        $line = <IN>;
      }
      # $line is now the first line of markdown content
      local $/;
      $markdown = $line.<IN>;
      close IN;
      
      push @frontmatter, "custom_edit_url: $ghlink/$to/$_\n" if $ghlink;

      open OUT, ">$to/$_" or die "Cannot open $to/$_: $!";
      if( @frontmatter ) {
        print OUT "---\n", @frontmatter, "---\n";
      }
      print OUT $markdown;
      close OUT;
      next;
    }

    print "  I don't know what to do with $_, sorry!\n";
  }
  closedir $dh;
}




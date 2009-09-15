pathsearch - $PATH Search

    Searches through $PATH for a supplied pattern.

pb-leecher - PhotoBucket Leecher

    Downloads images from a PhotoBucket page to a specified directory ($PWD
    by default).

perl-pathsearch - Perl Path Search

    Searches through a perl's @INC paths for a supplied pattern.

perl-incpp - Perl @INC Pretty Print

    Dumps the contents of @INC. A slightly better looking version of:
        perl -MData::Dumper -e 'print Dumper \@INC;'

futaba-thread-get - Futaba Image Board Thread Image Getter

    Takes in a list of URLs (from CLI or from a file) to Futaba image board
    threads and parses out all of the posted images in the threads. Spits
    out the image urls or downloads them (depending on the CLI options
    provided).

tz - Timezone Displayer

    Displays the timezone in a number of timezones.

xmutt - X11 Mutt (in a Terminal)

    Command to make it easy to start up a terminal with mutt in it.
    * Supports rxvt/urxvt/xterm out of the box (CLI options are compatible with
      all three).
    * Using the -name option allows themeing specific to xmutt instances in the
      ~/.Xdefaults file.
    * Defaults to using xterm as the terminal, but this can be changed with the
      $XMUTT_TERM variable so long as the terminal supports the -title/-name/-e
      options.

xirssi - X11 Irssi

    Irssi in a screen session (that is auto-resumed if it already exists) that
    is launch in an X11 terminal emulator

strip-color-codes - Color Code Stripper

    Meant to be used in a string of shell pipes. Strips ANSI color codes from
    STDIN and prints the result to STDOUT.

nautilus-desktop-toggle - Nautilus 'Draw Desktop' Option Controller

    Interfaces with Nautilus through GConf to turn the 'Draw Desktop' option on
    or off. Meant mostly for usage in ~/.xinitrc scripts for non-Gnome window
    managers/environments where a user might want to use Nautilus without the
    default setting of 'show_desktop = true'.
 
    This allows the user to easily run the alternative environment side-by-side
    with GNOME without having to open up gconf-editor everytime environments
    are swapped.

sfc - Stale File Cleanup

    Inspired by a LifeHacker.com post. Cleans up stale files (files that been
    untouched for a specified number of days).
    LifeHacker post:
    http://lifehacker.com/software/geek-to-live/geek-to-live-hard-drive-janitor-133190.php

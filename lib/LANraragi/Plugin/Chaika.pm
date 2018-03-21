package LANraragi::Plugin::Chaika;

use strict;
use warnings;

#Plugins can freely use all Perl packages already installed on the system
#Try however to restrain yourself to the ones already installed for LRR (see tools/cpanfile) to avoid extra installations by the end-user.
use URI::Escape;
use Mojo::UserAgent;

#You can also use the LRR Internal API when fitting.
use LANraragi::Model::Plugins;

#Meta-information about your plugin.
sub plugin_info {

    return (
        #Standard metadata
        name        => "Chaika.moe",
        namespace   => "trabant",
        author      => "Difegue",
        version     => "1.0",
        description => "Searches chaika.moe for tags matching your archive.",

#If your plugin uses/needs custom arguments, input their name here.
#This name will be displayed in plugin configuration next to an input box for global arguments, and in archive edition for one-shot arguments.
        global_arg  => "",
        oneshot_arg => "Chaika Gallery URL (Will attach tags matching this exact gallery to your archive)"
    );

}

#Mandatory function to be implemented by your plugin
sub get_tags {

    #LRR gives your plugin the recorded title/tags/thumbnail hash for the file, the filesystem path, and the custom arguments if available.
    shift;
    my ( $title, $tags, $thumbhash, $file, $globalarg, $oneshotarg ) = @_;

    my $logger = LANraragi::Model::Utils::get_logger( "Chaika", "plugins" );


    #Return a hash containing the new metadata - it will be integrated in LRR.
    return ( tags => "" );
}

1;

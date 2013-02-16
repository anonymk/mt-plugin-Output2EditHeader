package Output2EditHeader::Tags;

use strict;

my $PluginKey = 'Output2EditHeader';

sub instance {
	my ($app) = @_;
	$app ||= 'MT';
	$app->component($PluginKey);
}

sub _hdlr_settings {
	my ($ctx, $args, $cond) = @_;
	my $plugin  = instance();
	my $blog = $ctx->stash('blog');
	my %param;
	$plugin->load_config(\%param, 'blog:' . $blog->id);
	my $js = $param{'settings'};
	return $js;
}

1;

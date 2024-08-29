package Acme::CPANModules::ModuleAutoinstallers;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $LIST = {
    summary => 'List of modules that autoinstalls other modules during run-time',
    description => <<'MARKDOWN',

These "module autoinstallers" modules can automatically install missing module
during run-time using one of installers (usually `cpanm` a.k.a.
<pm:App::cpanminus>). Convenient when running a Perl script (that comes without
a proper distribution or `cpanfile`) that uses several modules which you might
not have. The alternative to lib::xi is the "trial and error" method: repeatedly
run the Perl script to see which module it tries and fails to load.

They work by installing a hook in `@INC`. Read more about require hooks in
`perlfunc` under the `require` function.

MARKDOWN
    entries => [
        {module => 'lazy'},
        {module => 'lib::xi'},
        {module => 'Module::AutoINC'},
        {module => 'Require::Hook::More'}, # actually autoinstalling feature not yet implemented
    ],
};

1;
# ABSTRACT:

=head1 prepend:SEE ALSO

L<Acme::CPANModules::ModuleAutoloaders>

L<Acme::CPANModules::LoadingModules> for a more general list of modules related
to loading other Perl moduless.

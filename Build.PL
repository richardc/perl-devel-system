use strict;
use Module::Build;

Module::Build
  ->new( module_name => "Devel::System",
         license     => 'perl',
         build_requires    => {
             'Test::More' => 0,
         },
         create_makefile_pl => 'passthrough',
         sign => 1,
       )
  ->create_build_script;



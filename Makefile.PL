
use strict;
use warnings;

 BEGIN { require 5.008; } 

use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Dist::Zilla::Plugin::CheckChangesTests',
                       'DISTNAME' => 'Dist-Zilla-Plugin-CheckChangesTests',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Marcel Gruenauer <marcel@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Release tests for checking changes',
                       'EXE_FILES' => [],
                       'VERSION' => '1.100900',
                       'PREREQ_PM' => {
                                        'Scalar::Util' => '0',
                                        'English' => '0',
                                        'Carp' => '0',
                                        'Test::More' => '0.88',
                                        'Test::CheckChanges' => '0',
                                        'File::Find' => '0',
                                        'File::Temp' => '0',
                                        'Moose' => '0',
                                        'Dist::Zilla::Plugin::InlineFiles' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);




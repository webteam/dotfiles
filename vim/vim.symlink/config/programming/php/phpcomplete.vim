"Default phpcomplete.vim does not support in-file checking of $var = new Class;
"so if you don't have a tags file with the variable in it already you have to
"hack around it by placing the comment `/* @var $yourvar YourClass */` above
"the line which is really kludgy.
NeoBundle 'shawncplus/phpcomplete.vim'


/* printf in "CLib" will call printf_hook.
   _SemiPrintf makes IDE can hook "printf" action.
   User don't want to hook "printf" when __OPTIMIZE__.
   function prototype:
     void printf_hook (unsigned long lptr, unsigned int size); */
#ifndef __OPTIMIZE__
asm (".code
.public _SemiPrintf
.public _printf_hook
_printf_hook: .proc
_SemiPrintf:
  retf
  .endp
");
#else
asm (".code
.public _printf_hook
_printf_hook: .proc
  retf
  .endp
");
#endif

/* Be compatible with old project, user can remove them in new project. */
void printf_init (int x)
{
	return;
}
void printf_end (void)
{
	return;
}

/* printf in "CLib" will call putchar.
   user can implement this function -- send a char to UART? */
int putchar (int c)
{
	return c;
}

/* malloc in "LibMem" will call malloc_lock/malloc_unlock.
   if user's project has multitask, they should be implemented. */
void _malloc_lock (void)
{
	return;
}
void  _malloc_unlock (void)
{
	return;
}

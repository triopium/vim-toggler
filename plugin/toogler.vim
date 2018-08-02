"TOGGLE SPELLCHECKING MODE:"
function! toggler#Spellmode()
	let g:SpellMode=get(g:,'SpellMode',0)
	if g:SpellMode==0
		setlocal spell!
		let g:TabDefaultMapping=maparg('<Tab>','n')
		nnoremap <Tab> z=

		let g:SpellMode=1
	else
		setlocal spell!
		silent exe 'nnoremap ' . g:TabDefaultMapping
		""nunmap <Tab>
		let g:SpellMode=0
	endif
endfunction

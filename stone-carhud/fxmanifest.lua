game 'gta5'
fx_version 'bodacious'


author 'Loureiro#0111'
description 'Car Hud'
version '1.3'
url 'https://stoned-scripts.tebex.io'
  
lua54 'yes'


client_scripts {
	'config.lua',
	'client/carhud.lua'
}

ui_page 'html/ui.html'

files {
	'html/ui.html',
	'html/css/app.css',
	'html/scripts/app.js',
	'html/img/vehicle-gear.png',
	'html/img/vehicle-lights.png',
	'html/img/vehicle-lights-high.png',
	'html/img/vehicle-seatbelt.png',
	'html/fonts/Adventure.otf',
	'html/fonts/bankgothic.ttf',
	
}

escrow_ignore {
	'config.lua',
}
  
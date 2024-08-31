fx_version 'cerulean'
games { 'gta5' }
author 'https://discord.gg/goldscripts'

ui_page "html/index.html"

files {
    'html/index.html',
    'html/script.js',
    'html/style.css',
    'html/img/*.png',
}
client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

shared_scripts {
    'config.lua',
    '@es_extended/imports.lua'
}

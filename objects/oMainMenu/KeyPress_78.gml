///START SERVER

//Ask player for port
//var port = real(get_string("On which port should the server listen?","6510"));
var port = 6510;
//Setup server, on success start game, on failure end the game.
if (htme_serverStart(port,32)) {
    room_goto(testRoom1);
} else {
    show_message("Could not start server! Check your network configuration!");
    game_end();
}
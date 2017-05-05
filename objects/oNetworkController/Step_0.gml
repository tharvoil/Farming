if (!htme_isStarted()) {
    show_message("Game Server or Client died! Restarting game...");
    game_restart();
}
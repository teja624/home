aws_gamelift_game_session_queue_delete() {
    local name="$1"
    shift 1

    cond_log_and_run aws gamelift delete-game-session-queue --name $name "$@"
}

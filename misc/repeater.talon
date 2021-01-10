# -1 because we are repeating, so the initial command counts as one

# YM's change
#<user.ordinals>: core.repeat_command(ordinals-1)

#(repeat that|twice): core.repeat_command(1)
twice: core.repeat_command(1)

# YM's change
times <number_small>: core.repeat_command(number_small)

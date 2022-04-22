
"""Run Bad Banana from the command line.

To start playing Bad Banana, type the following at the prompt:

>> python3 play.py

Please run Bad Banana with at least Python 3.8. The codebase makes extensive use of type hinting, 
which means the game will probably break in places if it is launched with an earlier version of 
Python. 
"""

from badbanana.cli.cligame import CliGame
from badbanana.player import Player

if __name__ == '__main__':
    player = Player()
    game = CliGame(player=player)
    game.play()

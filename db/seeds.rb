Gist.destroy_all

Gist.create(
  filename: 'hello_world.rb',
  description: "puts ",
  content: "puts 'hello!'"
)

Gist.create(
  filename: 'snake_game.py',
  description: "If you like snakes, you'll like this piece of code",
  content: 'print("SssSSss!")'
)

Gist.create(
  filename: 'doYou.c',
  description: "I like C but C doesn't like me",
  content: 'printf("Beautiful gist!\n");'
)

Gist.create(
  filename: 'magicAlgorithm.php',
  description: "The algorithm that can resolve any problem",
  content: '<?php echo "Magic!" ?>'
)

Gist.create(
  filename: 'noInspiration.java',
  description: "I have no inspiration for this one, sorry about that",
  content: 'System.out.println("I do enjoy coding in Java, sometimes");'
)

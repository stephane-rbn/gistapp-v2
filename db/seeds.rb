Gist.destroy_all
Category.destroy_all

@ruby       = Category.create(name: 'Ruby')
@javascript = Category.create(name: 'JavaScript')
@python     = Category.create(name: 'Python')
@go         = Category.create(name: 'Go')
@c          = Category.create(name: 'C')
@elixir     = Category.create(name: 'Elixir')
@java       = Category.create(name: 'Java')
@other      = Category.create(name: 'Other')

Gist.create(
  filename: 'hello_world.rb',
  description: 'Back to basics',
  content: "puts 'hello!'",
  category_id: @ruby.id
)

Gist.create(
  filename: 'snake_game.py',
  description: "If you like snakes, you'll like this piece of code",
  content: 'print("SssSSss!")',
  category_id: @python.id
)

Gist.create(
  filename: 'doYou.c',
  description: "I like C but C doesn't like me",
  content: 'printf("Beautiful gist!\n");',
  category_id: @c.id
)

Gist.create(
  filename: 'magicAlgorithm.go',
  description: "The algorithm that can resolve any problem",
  content: 'fmt.Println("Hello, 世界")',
  category_id: @go.id
)

Gist.create(
  filename: 'noInspiration.java',
  description: "I have no inspiration for this one, sorry about that",
  content: 'System.out.println("I do enjoy coding in Java, sometimes");',
  category_id: @java.id
)

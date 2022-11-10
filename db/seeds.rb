Comment.destroy_all
Recommendation.destroy_all
Category.destroy_all
User.destroy_all

joao = User.create(email: "joao.scarpa@gmail.com", username: 'jmscarpa', name: "João Mateus", password: '123456')
lucas = User.create(email: "lucas.machado@gmail.com", username: 'lucas', name: "Lucas Machado", password: '123456')
matheus = User.create(email: "matheus.silva@gmail.com", username: 'matheus', name: "Matheus Silva", password: '123456')

filme = Category.find_or_create_by(name: 'Filme')
jogo = Category.find_or_create_by(name: 'Jogo')
livro = Category.find_or_create_by(name: 'Livro')
serie = Category.find_or_create_by(name: 'Série')

breaking_bad = serie.recommendations.create(
  title: "Breaking Bad",
  cover_url: 'https://img.olhardigital.com.br/wp-content/uploads/2022/08/breaking-bad.jpg',
  user: joao
)

breaking_bad.comments.create(content: "Melhor série já criada", user: joao)
breaking_bad.comments.create(content: "Nem é tão boa assim", user: lucas)
breaking_bad.comments.create(content: "É boa sim, você não era nem nascido quando ela foi feita", user: matheus)

serie.recommendations.create(
  title: "Prison Break",
  user: lucas
)

livro.recommendations.create(
  title: "O Senhor dos Aneis",
  user: matheus
)


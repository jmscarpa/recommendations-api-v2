User.destroy_all
Recommendation.destroy_all
Category.destroy_all


User.create(email: "joao.scarpa@gmail.com", username: 'jmscarpa', name: "João Mateus", password: '123456')


filme = Category.find_or_create_by(name: 'Filme')
jogo = Category.find_or_create_by(name: 'Jogo')
livro = Category.find_or_create_by(name: 'Livro')
serie = Category.find_or_create_by(name: 'Série')

serie.recommendations.create(title: "Breaking Bad", cover_url: 'https://img.olhardigital.com.br/wp-content/uploads/2022/08/breaking-bad.jpg')
serie.recommendations.create(title: "Prison Break")

livro.recommendations.create(title: "O Senhor dos Aneis")


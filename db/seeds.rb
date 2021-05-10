User.destroy_all
Movie.destroy_all
Review.destroy_all


User.create(username: "username", password: "password")
User.create(username: "kai", password: "12345")
User.create(username: "lorraine", password: "abcde")


Movie.create(title: "Sailor Moon", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8pStsess2hyOe_vy5jIiv1_xMBKqMun0vag&usqp=CAU" , overview: "A schoolgirl and her friends transform into powerful heroes to battle the forces of evil.")
Movie.create(title: "Punisher", image: "https://m.media-amazon.com/images/M/MV5BY2ZlNWIxODMtN2YwZi00ZjNmLWIyN2UtZTFkYmZkNDQyNTAyXkEyXkFqcGdeQXVyODkzNTgxMDg@._V1_.jpg" , overview: "Punisher.")
Movie.create(title: "World War Z", image: "https://images-na.ssl-images-amazon.com/images/I/71ee9mzsQSL._SL1024_.jpg" , overview: "Zombie.")
Movie.create(title: "Mortal Kombat", image: "https://m.media-amazon.com/images/M/MV5BY2ZlNWIxODMtN2YwZi00ZjNmLWIyN2UtZTFkYmZkNDQyNTAyXkEyXkFqcGdeQXVyODkzNTgxMDg@._V1_.jpg" , overview: "Fighting.")
Movie.create(title: "Godzilla vs. Kong", image: "https://www.cnet.com/a/img/xtxGEK2Bl7SXd6G_tlPaofuf-gU=/940x0/2021/01/24/8c6453ea-8137-46ac-a4ae-5832e8272b6a/godzilla3.jpg" , overview: "Godzilla vs. Kong.")


Review.create(comment: "Good Movie.", user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Review.create(comment: "This movie is really good.", user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Review.create(comment: "Awesome movie.", user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Review.create(comment: "I love this movie.", user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Review.create(comment: "This movie is great.", user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
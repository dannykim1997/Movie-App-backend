require_relative "../.env"

User.create(username: "username", password: "password")
Movie.create(title: "Sailor Moon", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8pStsess2hyOe_vy5jIiv1_xMBKqMun0vag&usqp=CAU" , overview: "A schoolgirl and her friends transform into powerful heroes to battle the forces of evil.")
Review.create(comment: "My favorite hero!", user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
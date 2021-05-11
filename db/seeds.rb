Review.destroy_all
Movie.destroy_all
User.destroy_all

u1 = User.create(username: "Daniel", password: "password")
u2 = User.create(username: "kai", password: "12345")
u3 = User.create(username: "lorraine", password: "abcde")

img_url = "https://image.tmdb.org/t/p/original"

m1 = Movie.create(title: "Mortal Kombat", image: "#{img_url}" + "/6Wdl9N6dL0Hi0T1qJLWSz6gMLbd.jpg", overview: "Washed-up MMA fighter Cole Young, unaware of his heritage, and hunted by Emperor Shang Tsung's best warrior, Sub-Zero, seeks out and trains with Earth's greatest champions as he prepares to stand against the enemies of Outworld in a high stakes battle for the universe.")
m2 = Movie.create(title: "Godzilla vs Kong", image: "#{img_url}" + "/pgqgaUx1cJb5oZQQ5v0tNARCeBp.jpg", overview: "In a time when monsters walk the Earth, humanity’s fight for its future sets Godzilla and Kong on a collision course that will see the two most powerful forces of nature on the planet collide in a spectacular battle for the ages.")
m3 = Movie.create(title: "Tom Clancy's Without Remorse", image: "#{img_url}" + "/rEm96ib0sPiZBADNKBHKBv5bve9.jpg", overview: "An elite Navy SEAL uncovers an international conspiracy while seeking justice for the murder of his pregnant wife.")
m4 = Movie.create(title: "Nobody", image: "#{img_url}" + "/oBgWY00bEFeZ9N25wWVyuQddbAo.jpg", overview: "Hutch Mansell, a suburban dad, overlooked husband, nothing neighbor — a \"nobody.\" When two thieves break into his home one night, Hutch's unknown long-simmering rage is ignited and propels him on a brutal path that will uncover dark secrets he fought to leave behind.")
m5 = Movie.create(title: "Vanquish", image: "#{img_url}" + "/AoWY1gkcNzabh229Icboa1Ff0BM.jpg", overview: "Victoria is a young mother trying to put her dark past as a Russian drug courier behind her, but retired cop Damon forces Victoria to do his bidding by holding her daughter hostage. Now, Victoria must use guns, guts and a motorcycle to take out a series of violent gangsters—or she may never see her child again.")
m6 = Movie.create(title: "Demon Slayer -Kimetsu no Yaiba- The Movie: Mugen Train", image: "#{img_url}" + "/h8Rb9gBr48ODIwYUttZNYeMWeUU.jpg", overview: "Tanjirō Kamado, joined with Inosuke Hashibira, a boy raised by boars who wears a boar's head, and Zenitsu Agatsuma, a scared boy who reveals his true power when he sleeps, boards the Infinity Train on a new mission with the Fire Hashira, Kyōjurō Rengoku, to defeat a demon who has been tormenting the people and killing the demon slayers who oppose it!")
m7 = Movie.create(title: "Zack Snyder's Justice League", image: "#{img_url}" + "/tnAuB8q5vv7Ax9UAEje5Xi4BXik.jpg", overview: "Determined to ensure Superman's ultimate sacrifice was not in vain, Bruce Wayne aligns forces with Diana Prince with plans to recruit a team of metahumans to protect the world from an approaching threat of catastrophic proportions.")
m8 = Movie.create(title: "The Unholy", image: "#{img_url}" + "/b4gYVcl8pParX8AjkN90iQrWrWO.jpg", overview: "Alice, a young hearing-impaired girl who, after a supposed visitation from the Virgin Mary, is inexplicably able to hear, speak and heal the sick. As word spreads and people from near and far flock to witness her miracles, a disgraced journalist hoping to revive his career visits the small New England town to investigate. When terrifying events begin to happen all around, he starts to question if these phenomena are the works of the Virgin Mary or something much more sinister.")
m9 = Movie.create(title: "The Marksman", image: "#{img_url}" + "/6vcDalR50RWa309vBH1NLmG2rjQ.jpg", overview: "Jim Hanson’s quiet life is suddenly disturbed by two people crossing the US/Mexico border – a woman and her young son – desperate to flee a Mexican cartel. After a shootout leaves the mother dead, Jim becomes the boy’s reluctant defender. He embraces his role as Miguel’s protector and will stop at nothing to get him to safety, as they go on the run from the relentless assassins.")
m10 = Movie.create(title: "Raya and the Last Dragon", image: "#{img_url}" + "/lPsD10PP4rgUGiGR4CCXA6iY0QQ.jpg", overview: "Long ago, in the fantasy world of Kumandra, humans and dragons lived together in harmony. But when an evil force threatened the land, the dragons sacrificed themselves to save humanity. Now, 500 years later, that same evil has returned and it’s up to a lone warrior, Raya, to track down the legendary last dragon to restore the fractured land and its divided people.")

r1 = Review.create(comment: "Good Movie.", user_id: u1.id, movie_id: m6.id)
r2 = Review.create(comment: "This movie is really good.", user_id: u1.id, movie_id: m10.id)
r3 = Review.create(comment: "Awesome movie.", user_id: u2.id, movie_id: m6.id)
r4 = Review.create(comment: "I love this movie.", user_id: u3.id, movie_id: m1.id)
r5 = Review.create(comment: "This movie is great.", user_id: u3.id, movie_id: m2.id)
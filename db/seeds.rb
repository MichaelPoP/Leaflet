User.create([
  {first_name: "Theodore", last_name: "Roosevelt", email: "theteddy@roughriders.com", mantra: "There are no words that can tell the hidden spirit of the wilderness, that can reveal its mystery, its melancholy, and its charm.", password: "1234", profile_pic: "http://www.history.com/images/media/slideshow/teddy-roosevelt/theodore-roosevelt-photo.jpg"},
  {first_name: "Richard", last_name: "Nixon", email: "frost@stopspying.org", mantra: "Defeat doesn't finish a man, quit does. A man is not finished when he's defeated. He's finished when he quits.", password: "1234", profile_pic: "https://historc.files.wordpress.com/2013/02/nixon-s-watergate-testimony-20003326jpg.jpg"},
  {first_name: "John", last_name: "Muir", email: "yosemiteman@daerf.org", mantra: "God has cared for these trees, saved them from drought, disease, avalanches, and a thousand tempests and floods. But he cannot save them from fools.", password: "1234", profile_pic: "http://writingproject.ucmerced.edu/files/public/JohnMuir.jpg"},
  {first_name: "Ralph", last_name: "Emerson", email: "remerson@writesomething.com", mantra: "Never lose an oppportunity of seeing anything beautiful, for beauty is God's handwriting.", password: "1234", profile_pic: "http://asiasociety.org/files/ralph-waldo-emerson.jpg"},
  {first_name: "Pocahontas", last_name: "", email: "Nonexistent", mantra: "All you own is earth until you can paint with the colors of the wind.", password: "1234", profile_pic: "http://a5.files.biography.com/image/upload/c_fill,cs_srgb,dpr_1.0,g_face,h_300,q_80,w_300/MTIwNjA4NjMzOTQzMDY2MTI0.jpg"},
  {first_name: "Sitting Bull", last_name: "", email: "No", mantra: "Strangely enough, they have a mind to till the soil, and the love of possessions is a disease in them.", password: "1234", profile_pic: "http://www.sittingbullfacts.com/images/sitting-bull-headdress-detail.jpg"},
  {first_name: "Rachel", last_name: "Carson", email: "marinebiologyftw@silentspring.com", mantra: "The more clearly we can focus our attention on the wonders and realities of the universe about us, the less taste we shall have for destruction.", password: "1234", profile_pic: "http://worldblog.beechwindpress.com/images/carson.jpg"},
  {first_name: "Aldo", last_name: "Leopold", email: "aldo@leopoldfarms.com", mantra: "There are some who can live without wild things and some who cannot.", password: "1234", profile_pic: "http://www.astandardofchange.com/uploads/1/2/7/2/12725205/9152519.jpg"},
  {first_name: "Julia", last_name: "Hill", email: "lunafriend@butterfly.com", mantra: "I don't endorse products, only actions and beliefs.", password: "1234", profile_pic: "http://chrisilagan.com/mint/images/gs-1997-julia-butterfly-hill.jpg"},
  {first_name: "Henry", last_name: "Thoreau", email: "thoreau@civildisobedience.com", mantra: "Science is always brave, for to know, is to know good; doubt and danger will quail before her eye.", password: "1234", profile_pic: "http://amsaw.org/pic0703-thoreau010_author.gif"},
  {first_name: "Chico", last_name: "Mendes", email: "chico@savetheamazon.org", mantra: "At first I thought I was fighting to save rubber tress, then I thought I was fighting to save the Amazon rainforest. Now I realize I am fighting for humanity.", password: "1234", profile_pic: "http://lab.org.uk/images/Brazil%20Chico%20Mendes.jpg"},
  {first_name: "Wangari", last_name: "Maathai", email: "savethisplanet@greenbeltmovement.org", mantra: "Until you dig a hole, you plant a tree, you water it and make it survive, you haven't done a thing. You are just talking.", password: "1234", profile_pic: "http://nashvillepubliclibrary.org/bringingbookstolife/files/2013/02/Wangari-Maathai.jpg"},
  {first_name: "Gaylord", last_name: "Nelson", email: "lightsout@eathday.org", mantra: "Our goal is not just an environment of clean air and water and scenic beauty. The objective is an environment of decency, quality and mutual respect for all other human beings and all other living creatures.", password: "1234", profile_pic: "http://www.adventure-journal.com/wp-content/uploads/2012/04/gaylord-nelson-earth-day-founder-portrait.jpg"},
  {first_name: "David", last_name: "Brower", email: "findmeclimbing@dbrower.org", mantra: "It seems that every time mankind is given a lot of energy, we go out and wreck something with it.", password: "1234", profile_pic: "https://www.google.com/search?q=david+brower&biw=1280&bih=701&source=lnms&tbm=isch&sa=X&ei=OIYcVejaHYr3oATa5IKoDw&ved=0CAYQ_AUoAQ#imgdii=_&imgrc=ZHEPQ_OLzLtVAM%253A%3B1MtnnMvZt8fOSM%3Bhttp%253A%252F%252Flivefromsouthmain.com%252Fwp-content%252Fuploads%252F2010%252F12%252Fdavid-brower.jpg%3Bhttp%253A%252F%252Flivefromsouthmain.com%252F2010%252F12%252F07%252Fhow-is-south-main-sustainable-intro-to-a-series%252F%3B594%3B396"},
  {first_name: "Al", last_name: "Gore", email: "al@theinconveninttruth.org", mantra: "Our world faces a true planetary emergency. I know the phrase sounds shrill, and I know it's a challenge to the moral imagination.", password: "1324", profile_pic: "http://www.fastcashforjunkcars.com/blog/wp-content/uploads/2013/02/Al-Gore.jpg"}
  ])

User.find(1).electric_bills.create([
  {amount: 600, month: 1, year: 2015},
  {amount: 500, month: 2, year: 2015},
  {amount: 450, month: 3, year: 2015},
  {amount: 550, month: 12, year: 2014},
  ])

User.find(1).water_bills.create([
  {amount: 9000, month: 1, year: 2015},
  {amount: 8000, month: 2, year: 2015},
  {amount: 9100, month: 3, year: 2015},
  {amount: 9400, month: 12, year: 2014}
  ])

User.find(1).gas_bills.create([
  {amount: 100, month: 1, year: 2015},
  {amount: 120, month: 2, year: 2015},
  {amount: 130, month: 3, year: 2015},
  {amount: 90, month: 12, year: 2014}
  ])

User.find(2).electric_bills.create([
  {amount: 700, month: 1, year: 2015},
  {amount: 600, month: 2, year: 2015},
  {amount: 550, month: 3, year: 2015},
  {amount: 650, month: 12, year: 2014},
  ])

User.find(2).water_bills.create([
  {amount: 9500, month: 1, year: 2015},
  {amount: 8500, month: 2, year: 2015},
  {amount: 9600, month: 3, year: 2015},
  {amount: 9900, month: 12, year: 2014}
  ])

User.find(2).gas_bills.create([
  {amount: 120, month: 1, year: 2015},
  {amount: 140, month: 2, year: 2015},
  {amount: 150, month: 3, year: 2015},
  {amount: 110, month: 12, year: 2014}
  ])

User.find(3).electric_bills.create([
  {amount: 580, month: 1, year: 2015},
  {amount: 480, month: 2, year: 2015},
  {amount: 430, month: 3, year: 2015},
  {amount: 530, month: 12, year: 2014},
  ])

User.find(3).water_bills.create([
  {amount: 8000, month: 1, year: 2015},
  {amount: 7000, month: 2, year: 2015},
  {amount: 8100, month: 3, year: 2015},
  {amount: 8400, month: 12, year: 2014}
  ])

User.find(3).gas_bills.create([
  {amount: 80, month: 1, year: 2015},
  {amount: 100, month: 2, year: 2015},
  {amount: 110, month: 3, year: 2015},
  {amount: 70, month: 12, year: 2014}
  ])

User.find(4).electric_bills.create([
  {amount: 610, month: 1, year: 2015},
  {amount: 510, month: 2, year: 2015},
  {amount: 460, month: 3, year: 2015},
  {amount: 560, month: 12, year: 2014},
  ])

User.find(4).water_bills.create([
  {amount: 9150, month: 1, year: 2015},
  {amount: 8150, month: 2, year: 2015},
  {amount: 9250, month: 3, year: 2015},
  {amount: 9550, month: 12, year: 2014}
  ])

User.find(4).gas_bills.create([
  {amount: 105, month: 1, year: 2015},
  {amount: 125, month: 2, year: 2015},
  {amount: 135, month: 3, year: 2015},
  {amount: 95, month: 12, year: 2014}
  ])

User.find(5).electric_bills.create([
  {amount: 600, month: 1, year: 2015},
  {amount: 500, month: 2, year: 2015},
  {amount: 450, month: 3, year: 2015},
  {amount: 550, month: 12, year: 2014},
  ])

User.find(5).water_bills.create([
  {amount: 9000, month: 1, year: 2015},
  {amount: 8000, month: 2, year: 2015},
  {amount: 9100, month: 3, year: 2015},
  {amount: 9400, month: 12, year: 2014}
  ])

User.find(5).gas_bills.create([
  {amount: 125, month: 1, year: 2015},
  {amount: 145, month: 2, year: 2015},
  {amount: 155, month: 3, year: 2015},
  {amount: 115, month: 12, year: 2014}
  ])

User.find(6).electric_bills.create([
  {amount: 570, month: 1, year: 2015},
  {amount: 470, month: 2, year: 2015},
  {amount: 420, month: 3, year: 2015},
  {amount: 520, month: 12, year: 2014},
  ])

User.find(6).water_bills.create([
  {amount: 8700, month: 1, year: 2015},
  {amount: 7700, month: 2, year: 2015},
  {amount: 8800, month: 3, year: 2015},
  {amount: 9100, month: 12, year: 2014}
  ])

User.find(6).gas_bills.create([
  {amount: 101, month: 1, year: 2015},
  {amount: 121, month: 2, year: 2015},
  {amount: 131, month: 3, year: 2015},
  {amount: 91, month: 12, year: 2014}
  ])

User.find(7).electric_bills.create([
  {amount: 602, month: 1, year: 2015},
  {amount: 502, month: 2, year: 2015},
  {amount: 452, month: 3, year: 2015},
  {amount: 552, month: 12, year: 2014},
  ])

User.find(7).water_bills.create([
  {amount: 9010, month: 1, year: 2015},
  {amount: 8010, month: 2, year: 2015},
  {amount: 9110, month: 3, year: 2015},
  {amount: 9410, month: 12, year: 2014}
  ])

User.find(7).gas_bills.create([
  {amount: 98, month: 1, year: 2015},
  {amount: 118, month: 2, year: 2015},
  {amount: 128, month: 3, year: 2015},
  {amount: 88, month: 12, year: 2014}
  ])

User.find(8).electric_bills.create([
  {amount: 640, month: 1, year: 2015},
  {amount: 540, month: 2, year: 2015},
  {amount: 490, month: 3, year: 2015},
  {amount: 590, month: 12, year: 2014},
  ])

User.find(8).water_bills.create([
  {amount: 9040, month: 1, year: 2015},
  {amount: 8040, month: 2, year: 2015},
  {amount: 9140, month: 3, year: 2015},
  {amount: 9440, month: 12, year: 2014}
  ])

User.find(8).gas_bills.create([
  {amount: 140, month: 1, year: 2015},
  {amount: 160, month: 2, year: 2015},
  {amount: 170, month: 3, year: 2015},
  {amount: 130, month: 12, year: 2014}
  ])

User.find(9).electric_bills.create([
  {amount: 607, month: 1, year: 2015},
  {amount: 507, month: 2, year: 2015},
  {amount: 457, month: 3, year: 2015},
  {amount: 557, month: 12, year: 2014},
  ])

User.find(9).water_bills.create([
  {amount: 9070, month: 1, year: 2015},
  {amount: 8070, month: 2, year: 2015},
  {amount: 9170, month: 3, year: 2015},
  {amount: 9470, month: 12, year: 2014}
  ])

User.find(9).gas_bills.create([
  {amount: 93, month: 1, year: 2015},
  {amount: 113, month: 2, year: 2015},
  {amount: 123, month: 3, year: 2015},
  {amount: 83, month: 12, year: 2014}
  ])

User.find(10).electric_bills.create([
  {amount: 630, month: 1, year: 2015},
  {amount: 530, month: 2, year: 2015},
  {amount: 480, month: 3, year: 2015},
  {amount: 580, month: 12, year: 2014},
  ])

User.find(10).water_bills.create([
  {amount: 9030, month: 1, year: 2015},
  {amount: 8030, month: 2, year: 2015},
  {amount: 9130, month: 3, year: 2015},
  {amount: 9430, month: 12, year: 2014}
  ])

User.find(10).gas_bills.create([
  {amount: 50, month: 1, year: 2015},
  {amount: 60, month: 2, year: 2015},
  {amount: 65, month: 3, year: 2015},
  {amount: 45, month: 12, year: 2014}
  ])

User.find(11).electric_bills.create([
  {amount: 615, month: 1, year: 2015},
  {amount: 515, month: 2, year: 2015},
  {amount: 465, month: 3, year: 2015},
  {amount: 565, month: 12, year: 2014},
  ])

User.find(11).water_bills.create([
  {amount: 9015, month: 1, year: 2015},
  {amount: 8015, month: 2, year: 2015},
  {amount: 9115, month: 3, year: 2015},
  {amount: 9415, month: 12, year: 2014}
  ])

User.find(11).gas_bills.create([
  {amount: 115, month: 1, year: 2015},
  {amount: 135, month: 2, year: 2015},
  {amount: 145, month: 3, year: 2015},
  {amount: 105, month: 12, year: 2014}
  ])

User.find(12).electric_bills.create([
  {amount: 588, month: 1, year: 2015},
  {amount: 488, month: 2, year: 2015},
  {amount: 438, month: 3, year: 2015},
  {amount: 538, month: 12, year: 2014},
  ])

User.find(12).water_bills.create([
  {amount: 9018, month: 1, year: 2015},
  {amount: 8018, month: 2, year: 2015},
  {amount: 9118, month: 3, year: 2015},
  {amount: 9418, month: 12, year: 2014}
  ])

User.find(12).gas_bills.create([
  {amount: 200, month: 1, year: 2015},
  {amount: 240, month: 2, year: 2015},
  {amount: 260, month: 3, year: 2015},
  {amount: 180, month: 12, year: 2014}
  ])

User.find(13).electric_bills.create([
  {amount: 1200, month: 1, year: 2015},
  {amount: 1000, month: 2, year: 2015},
  {amount: 900, month: 3, year: 2015},
  {amount: 1100, month: 12, year: 2014},
  ])

User.find(13).water_bills.create([
  {amount: 9500, month: 1, year: 2015},
  {amount: 8500, month: 2, year: 2015},
  {amount: 9600, month: 3, year: 2015},
  {amount: 9900, month: 12, year: 2014}
  ])

User.find(13).gas_bills.create([
  {amount: 20, month: 1, year: 2015},
  {amount: 24, month: 2, year: 2015},
  {amount: 26, month: 3, year: 2015},
  {amount: 18, month: 12, year: 2014}
  ])

User.find(14).electric_bills.create([
  {amount: 100, month: 1, year: 2015},
  {amount: 120, month: 2, year: 2015},
  {amount: 90, month: 3, year: 2015},
  {amount: 110, month: 12, year: 2014},
  ])

User.find(14).water_bills.create([
  {amount: 1000, month: 1, year: 2015},
  {amount: 1200, month: 2, year: 2015},
  {amount: 1400, month: 3, year: 2015},
  {amount: 1500, month: 12, year: 2014}
  ])

User.find(14).gas_bills.create([
  {amount: 5, month: 1, year: 2015},
  {amount: 18, month: 2, year: 2015},
  {amount: 9, month: 3, year: 2015},
  {amount: 20, month: 12, year: 2014}
  ])

User.find(15).electric_bills.create([
  {amount: 635, month: 1, year: 2015},
  {amount: 535, month: 2, year: 2015},
  {amount: 485, month: 3, year: 2015},
  {amount: 585, month: 12, year: 2014},
  ])

User.find(15).water_bills.create([
  {amount: 9035, month: 1, year: 2015},
  {amount: 8035, month: 2, year: 2015},
  {amount: 9135, month: 3, year: 2015},
  {amount: 9435, month: 12, year: 2014}
  ])

User.find(15).gas_bills.create([
  {amount: 135, month: 1, year: 2015},
  {amount: 155, month: 2, year: 2015},
  {amount: 165, month: 3, year: 2015},
  {amount: 125, month: 12, year: 2014}
  ])

User.find(1).friends << User.find(2) << User.find(3) << User.find(4) << User.find(10) << User.find(15)
User.find(2).friends << User.find(1) << User.find(15)
User.find(3).friends << User.find(1) << User.find(2) << User.find(4) << User.find(5) << User.find(6) << User.find(7) << User.find(8) << User.find(9) << User.find(10) << User.find(11) << User.find(12) << User.find(13) << User.find(14) << User.find(15)

Group.create([
  {name: "Politicans"},
  {name: "Activists"},
  {name: "Americans"},
  {name: "Conservationists"},
  {name: "Women for the Environment"}
  ])

Group.find(1).users << User.find(1) << User.find(2) << User.find(13) << User.find(15)
Group.find(2).users << User.find(2) << User.find(4) << User.find(6) << User.find(7) << User.find(8) << User.find(9) << User.find(10) << User.find(11) << User.find(12) << User.find(13) << User.find(14) << User.find(15)
Group.find(3).users << User.find(1) << User.find(2) << User.find(3) << User.find(4) << User.find(6) << User.find(8) << User.find(9) << User.find(13) << User.find(14) << User.find(15)
Group.find(4).users << User.find(3) << User.find(5) << User.find(6) << User.find(7) << User.find(8) << User.find(9) << User.find(10) << User.find(11) << User.find(12) << User.find(13) << User.find(14)
Group.find(5).users << User.find(5) << User.find(7) << User.find(9) << User.find(12) 
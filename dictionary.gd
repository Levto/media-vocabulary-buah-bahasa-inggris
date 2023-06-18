extends Node2D

var vocabDictionary = {
	"1": {
		"word": "Avocado",
		"translate": "Alpukat",
		"sentence": "Dad buys an avocado.\n'Ayah membeli sebuah alpukat.'"
	},
	"2": {
		"word": "Banana",
		"translate": "Pisang",
		"sentence": "Monkeys love banana.\n'Monyet menyukai pisang.'"
	},
	"3": {
		"word": "Bean Sprout",
		"translate": "Toge",
		"sentence": "There are bean sprouts growing from the green beans!\n'Ada toge yang tumbuh dari kacang hijau itu!'"
	},
	"4": {
		"word": "Carrot",
		"translate": "Wortel",
		"sentence": "The bunnies eat so many carrots.\n'Kelinci-kelinci makan banyak wortel.'"
	},
	"5": {
		"word": "Cucumber",
		"translate": "Ketimun",
		"sentence": "I eat cucumber when eating fried rice.\n'Aku makan ketimun ketika makan nasi goreng.'"
	},
	"6": {
		"word": "Dates",
		"translate": "Kurma",
		"sentence": "Muslims like to eat kurma in Ramadhan.\n'Umat muslim suka memakan kurma di bulan Ramadhan.'"
	},
	"7": {
		"word": "Eggplant",
		"translate": "Terong",
		"sentence": "Mother buys eggplant from the grocery.\n'Ibu membeli terong dari toko pangan.'"
	},
	"8": {
		"word": "Grape",
		"translate": "Anggur",
		"sentence": "Grapes are tasty.\n'Anggur rasanya enak.'"
	},
	"9": {
		"word": "Jackfruit",
		"translate": "Nangka",
		"sentence": "I don't like jackfruit's smell.\n'Aku tidak suka bau buah nangka.'"
	},
	"10": {
		"word": "Lime",
		"translate": "Jeruk Nipis",
		"sentence": "Lime tastes so sour.\n'Jeruk nipis rasanya sangat asam.'"
	},
	"11": {
		"word": "Mango",
		"translate": "Mangga",
		"sentence": "Mangoes are sweet!\n'Buah mangga rasanya manis!'"
	},
	"12": {
		"word": "Soursop",
		"translate": "Sirsak",
		"sentence": "I have soursop tree in my house garden.\n'Aku punya pohon sirsak di halaman rumahku.'"
	},
	"13": {
		"word": "Sweet Potato",
		"translate": "Ubi",
		"sentence": "I like sweet potato chips.\n'Aku suka keripik ubi.'"
	},
	"14": {
		"word": "Watermelon",
		"translate": "Semangka",
		"sentence": "I see a big watermelon at the market.\n'Aku melihat semangka yang besar di pasar.'"
	},
	"15": {
		"word": "Airport",
		"translate": "Bandara",
		"sentence": "There are many planes in the airport.\n'Ada banyak pesawat di bandara.'"
	},
	"16": {
		"word": "Beach",
		"translate": "Pantai",
		"sentence": "Sunset at beach looks beautiful.\n'Matahari tenggelam di pantai terlihat indah.'"
	},
	"17": {
		"word": "Bus Stop",
		"translate": "Terminal bus",
		"sentence": "I wait for the bus at the bus stop.\n'Aku menunggu bis di terminal bis.'"
	},
	"18": {
		"word": "Church",
		"translate": "Gereja",
		"sentence": "The church is a worship place for Christians.\n'Gereja adalah tempat ibadah umat Kristen.'"
	},
	"19": {
		"word": "Factory",
		"translate": "Pabrik",
		"sentence": "My father works in a factory.\n'Ayahku bekerja di pabrik.'"
	},
	"20": {
		"word": "Grocery",
		"translate": "Toko pangan",
		"sentence": "Mother buys vegetables from grocery.\n'Ibu membeli sayur dari toko pangan.'"
	},
	"21": {
		"word": "Harbor",
		"translate": "Pelabuhan",
		"sentence": "Ships are docked in harbor.\n'Kapal-kapal berlabuh di pelabuhan.'"
	},
	"22": {
		"word": "Hospital",
		"translate": "Rumah Sakit",
		"sentence": "I visit my grandfather at hospital.\n'Aku mengunjungi kakekku di rumah sakit.'"
	},
	"23": {
		"word": "Library",
		"translate": "Perpustakaan",
		"sentence": "I borrow many books from library.\n'Aku meminjam banyak buku dari perpustakaan.'"
	},
	"24": {
		"word": "Market",
		"translate": "Pasar",
		"sentence": "The market is very crowded.\n'Pasar itu sangat ramai.'"
	},
	"25": {
		"word": "Mosque",
		"translate": "Masjid",
		"sentence": "Muslims pray in mosque.\n'Umat Muslim sholat di masjid.'"
	},
	"26": {
		"word": "Office",
		"translate": "Kantor",
		"sentence": "My father works in an office.\n'Ayahku bekerja di kantor.'"
	},
	"27": {
		"word": "Zoo",
		"translate": "Kebun binatang",
		"sentence": "I go to zoo with my family.\n'Aku pergi ke kebun binatang bersama keluargaku.'"
	}
}

var quizTutorial = {
	"QuizA": {
		"title": "Quiz Tebak Kata",
		"tutorial": "Petunjuk Quiz:\n1. Terdapat 10 soal dalam quiz ini.\n2. Carilah kata Bahasa Inggris dari kata dalam soal.\n3. Pilihlah jawaban yang menurutmu benar.\n4. Tekan tombol Submit untuk menyimpan jawaban.\n5. Tekan tombol Next untuk melanjutkan ke nomor selanjutnya.\n"
	},
	"QuizB": {
		"title": "Quiz Tebak Arti",
		"tutorial": "Petunjuk Quiz:\n1. Terdapat 10 soal dalam quiz ini.\n2. Carilah arti dari kata Bahasa Inggris dalam soal.\n3. Pilihlah jawaban yang menurutmu benar.\n4. Tekan tombol Submit untuk menyimpan jawaban.\n5. Tekan tombol Next untuk melanjutkan ke nomor selanjutnya.\n"
	}
}

var quizDictionaryA = {
	"1": {
		"question": "Alpukat",
		"option1": "Avocado",
		"option2": "Mango",
		"option3": "Cucumber",
		"option4": "Sweet Potato",
		"correctAnswer": "1"
	},
	"2": {
		"question": "Pisang",
		"option1": "Grape",
		"option2": "Banana",
		"option3": "Jackfruit",
		"option4": "Lime",
		"correctAnswer": "2"
	},
	"3": {
		"question": "Toge",
		"option1": "Soursop",
		"option2": "Avocado",
		"option3": "Bean Sprout",
		"option4": "Watermelon",
		"correctAnswer": "3"
	},
	"4": {
		"question": "Wortel",
		"option1": "Eggplant",
		"option2": "Bean Sprout",
		"option3": "Lime",
		"option4": "Carrot",
		"correctAnswer": "4"
	},
	"5": {
		"question": "Ketimun",
		"option1": "Cucumber",
		"option2": "Dates",
		"option3": "Jackfruit",
		"option4": "Sweet Potato",
		"correctAnswer": "1"
	},
	"6": {
		"question": "Kurma",
		"option1": "Mango",
		"option2": "Dates",
		"option3": "Carrot",
		"option4": "Watermelon",
		"correctAnswer": "2"
	},
	"7": {
		"question": "Terong",
		"option1": "Lime",
		"option2": "Cucumber",
		"option3": "Eggplant",
		"option4": "Avocado",
		"correctAnswer": "3"
	},
	"8": {
		"question": "Anggur",
		"option1": "Soursop",
		"option2": "Jackfruit",
		"option3": "Banana",
		"option4": "Grape",
		"correctAnswer": "4"
	},
	"9": {
		"question": "Nangka",
		"option1": "Jackfruit",
		"option2": "Grape",
		"option3": "Avocado",
		"option4": "Bean Sprout",
		"correctAnswer": "1"
	},
	"10": {
		"question": "Jeruk Nipis",
		"option1": "Soursop",
		"option2": "Lime",
		"option3": "Banana",
		"option4": "Watermelon",
		"correctAnswer": "2"
	},
	"11": {
		"question": "Mangga",
		"option1": "Carrot",
		"option2": "Grape",
		"option3": "Mango",
		"option4": "Bean Sprout",
		"correctAnswer": "3"
	},
	"12": {
		"question": "Sirsak",
		"option1": "Avocado",
		"option2": "Watermelon",
		"option3": "Dates",
		"option4": "Soursop",
		"correctAnswer": "4"
	},
	"13": {
		"question": "Ubi",
		"option1": "Sweet Potato",
		"option2": "Carrot",
		"option3": "Grape",
		"option4": "Lime",
		"correctAnswer": "1"
	},
	"14": {
		"question": "Semangka",
		"option1": "Dates",
		"option2": "Watermelon",
		"option3": "Cucumber",
		"option4": "Eggplant",
		"correctAnswer": "2"
	},
	"15": {
		"question": "Bandara",
		"option1": "Beach",
		"option2": "Grocery",
		"option3": "Airport",
		"option4": "Factory",
		"correctAnswer": "3"
	},
	"16": {
		"question": "Pantai",
		"option1": "Market",
		"option2": "Church",
		"option3": "Library",
		"option4": "Beach",
		"correctAnswer": "4"
	},
	"17": {
		"question": "Terminal Bus",
		"option1": "Bus Stop",
		"option2": "Office",
		"option3": "Harbor",
		"option4": "Zoo",
		"correctAnswer": "1"
	},
	"18": {
		"question": "Gereja",
		"option1": "Beach",
		"option2": "Church",
		"option3": "Library",
		"option4": "Mosque",
		"correctAnswer": "2"
	},
	"19": {
		"question": "Pabrik",
		"option1": "Beach",
		"option2": "Zoo",
		"option3": "Factory",
		"option4": "Harbor",
		"correctAnswer": "3"
	},
	"20": {
		"question": "Toko Pangan",
		"option1": "Mosque",
		"option2": "Office",
		"option3": "Hospital",
		"option4": "Grocery",
		"correctAnswer": "4"
	},
	"21": {
		"question": "Pelabuhan",
		"option1": "Harbor",
		"option2": "Zoo",
		"option3": "Beach",
		"option4": "Hospital",
		"correctAnswer": "1"
	},
	"22": {
		"question": "Rumah Sakit",
		"option1": "Airport",
		"option2": "Hospital",
		"option3": "Bus Stop",
		"option4": "Church",
		"correctAnswer": "2"
	},
	"23": {
		"question": "Perpustakaan",
		"option1": "Factory",
		"option2": "Office",
		"option3": "Library",
		"option4": "Beach",
		"correctAnswer": "3"
	},
	"24": {
		"question": "Masjid",
		"option1": "Library",
		"option2": "Airport",
		"option3": "Statoinary",
		"option4": "Mosque",
		"correctAnswer": "4"
	},
	"25": {
		"question": "Kantor",
		"option1": "Office",
		"option2": "Library",
		"option3": "Harbor",
		"option4": "Zoo",
		"correctAnswer": "1"
	},
	"26": {
		"question": "Pasar",
		"option1": "Beach",
		"option2": "Market",
		"option3": "Hospital",
		"option4": "Factory",
		"correctAnswer": "2"
	},
	"27": {
		"question": "Kebun Binatang",
		"option1": "Grocery",
		"option2": "Airport",
		"option3": "Zoo",
		"option4": "Hospital",
		"correctAnswer": "3"
	}
}

var quizDictionaryB = {
	"1": {
		"question": "Avocado",
		"option1": "Alpukat",
		"option2": "Mangga",
		"option3": "Ketimun",
		"option4": "Ubi",
		"correctAnswer": "1"
	},
	"2": {
		"question": "Banana",
		"option1": "Anggur",
		"option2": "Pisang",
		"option3": "Nangka",
		"option4": "Jeruk Nipis",
		"correctAnswer": "2"
	},
	"3": {
		"question": "Bean Sprout",
		"option1": "Sirsak",
		"option2": "Alpukat",
		"option3": "Toge",
		"option4": "Semangka",
		"correctAnswer": "3"
	},
	"4": {
		"question": "Carrot",
		"option1": "Eggplant",
		"option2": "Toge",
		"option3": "Jeruk Nipis",
		"option4": "Wortel",
		"correctAnswer": "4"
	},
	"5": {
		"question": "Cucumber",
		"option1": "Ketimun",
		"option2": "Kurma",
		"option3": "Nangka",
		"option4": "Ubi",
		"correctAnswer": "1"
	},
	"6": {
		"question": "Dates",
		"option1": "Mangga",
		"option2": "Kurma",
		"option3": "Wortel",
		"option4": "Semangka",
		"correctAnswer": "2"
	},
	"7": {
		"question": "Eggplant",
		"option1": "Jeruk Nipis",
		"option2": "Ketimun",
		"option3": "Terong",
		"option4": "Alpukat",
		"correctAnswer": "3"
	},
	"8": {
		"question": "Grape",
		"option1": "Sirsak",
		"option2": "Nangka",
		"option3": "Pisang",
		"option4": "Anggur",
		"correctAnswer": "4"
	},
	"9": {
		"question": "Jackfruit",
		"option1": "Nangka",
		"option2": "Anggur",
		"option3": "Alpukat",
		"option4": "Toge",
		"correctAnswer": "1"
	},
	"10": {
		"question": "Lime",
		"option1": "Sirsak",
		"option2": "Jeruk Nipis",
		"option3": "Pisang",
		"option4": "Semangka",
		"correctAnswer": "2"
	},
	"11": {
		"question": "Mango",
		"option1": "Wortel",
		"option2": "Anggur",
		"option3": "Mangga",
		"option4": "Toge",
		"correctAnswer": "3"
	},
	"12": {
		"question": "Soursop",
		"option1": "Alpukat",
		"option2": "Semangka",
		"option3": "Kurma",
		"option4": "Sirsak",
		"correctAnswer": "4"
	},
	"13": {
		"question": "Sweet Potato",
		"option1": "Ubi",
		"option2": "Wortel",
		"option3": "Anggur",
		"option4": "Jeruk Nipis",
		"correctAnswer": "1"
	},
	"14": {
		"question": "Watermelon",
		"option1": "Kurma",
		"option2": "Semangka",
		"option3": "Ketimun",
		"option4": "Terong",
		"correctAnswer": "2"
	},
	"15": {
		"question": "Aiport",
		"option1": "Pantai",
		"option2": "Toko Pangan",
		"option3": "Bandara",
		"option4": "Pabrik",
		"correctAnswer": "3"
	},
	"16": {
		"question": "Beach",
		"option1": "Pasar",
		"option2": "Gereja",
		"option3": "Perpustakaan",
		"option4": "Pantai",
		"correctAnswer": "4"
	},
	"17": {
		"question": "Bus Stop",
		"option1": "Terminal Bus",
		"option2": "Kantor",
		"option3": "Pelabuhan",
		"option4": "Kebun Binatang",
		"correctAnswer": "1"
	},
	"18": {
		"question": "Church",
		"option1": "Pantai",
		"option2": "Gereja",
		"option3": "Masjid",
		"option4": "Perpustakaan",
		"correctAnswer": "2"
	},
	"19": {
		"question": "Factory",
		"option1": "Pelabuhan",
		"option2": "Kebun Binatang",
		"option3": "Pabrik",
		"option4": "Pantai",
		"correctAnswer": "3"
	},
	"20": {
		"question": "Grocery",
		"option1": "Masjid",
		"option2": "Kantor",
		"option3": "Rumah Sakit",
		"option4": "Toko Pangan",
		"correctAnswer": "4"
	},
	"21": {
		"question": "Harbor",
		"option1": "Pelabuhan",
		"option2": "Kebun Binatang",
		"option3": "Pantai",
		"option4": "Rumah Sakit",
		"correctAnswer": "1"
	},
	"22": {
		"question": "Hospital",
		"option1": "Bandara",
		"option2": "Rumah Sakit",
		"option3": "Terminal Bus",
		"option4": "Gereja",
		"correctAnswer": "2"
	},
	"23": {
		"question": "Library",
		"option1": "Pabrik",
		"option2": "Kantor",
		"option3": "Perpustakaan",
		"option4": "Pantai",
		"correctAnswer": "3"
	},
	"24": {
		"question": "Mosque",
		"option1": "Perpustakaan",
		"option2": "Bandara",
		"option3": "Pasar",
		"option4": "Masjid",
		"correctAnswer": "4"
	},
	"25": {
		"question": "Office",
		"option1": "Kantor",
		"option2": "Perpustakaan",
		"option3": "Pelabuhan",
		"option4": "Kebun Binatang",
		"correctAnswer": "1"
	},
	"26": {
		"question": "Market",
		"option1": "Pantai",
		"option2": "Pasar",
		"option3": "Rumah Sakit",
		"option4": "Pabrik",
		"correctAnswer": "2"
	},
	"27": {
		"question": "Zoo",
		"option1": "Toko Pangan",
		"option2": "Bandara",
		"option3": "Kebun Binatang",
		"option4": "Rumah Sakit",
		"correctAnswer": "3"
	}
}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func randomizeArray():
	
	var tempArray = []
	
	for i in range(1, 28):
		tempArray.append(i)
	tempArray.shuffle()
	
	return tempArray

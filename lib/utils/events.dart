import 'package:flutter/material.dart';

// models
import '../models/models.dart';

// ! Don't edit anything other than the events
// * Date format: year, month, day

List<Event> events = [
  Event(
    key: UniqueKey(),
    title: 'Registration/Orientation (Old students)',
    day: DateTime(2020, 7, 30),
  ),
  Event(
    key: UniqueKey(),
    title: 'Registration/Orientation (New students)',
    day: DateTime(2020, 9, 16),
  ),
  Event(
    key: UniqueKey(),
    title: 'Commencement of Classes (Old students)',
    day: DateTime(2020, 8, 1),
  ),
  Event(
    key: UniqueKey(),
    title: 'Commencement of Classes (New Students)',
    day: DateTime(2020, 9, 28),
  ),
  Event(
    key: UniqueKey(),
    title: 'Convocation',
  ),
  Event(
    key: UniqueKey(),
    title: 'Registration for project (UG students final year)',
    day: DateTime(2020, 9, 17),
  ),
  Event(
    key: UniqueKey(),
    title: 'Two unit tests',
  ),
  Event(
    key: UniqueKey(),
    title: 'Department wise evaluation of project',
    day: DateTime(2020, 11, 10),
  ),
  Event(
    key: UniqueKey(),
    title: 'University sports meet',
    day: DateTime(2020, 11, 20),
  ),
  Event(
    key: UniqueKey(),
    title: 'Final evaluation of project',
    day: DateTime(2020, 11, 25),
  ),
  Event(
    key: UniqueKey(),
    title: 'Remajor examination',
    day: DateTime(2020, 12, 16),
  ),
  Event(
    key: UniqueKey(),
    title: 'Semester break',
    day: DateTime(2021, 1, 4),
  ),
  Event(
    key: UniqueKey(),
    title: 'Major theory examination',
    day: DateTime(2021, 2, 11),
  ),
  Event(
    key: UniqueKey(),
    title: 'Major practical examination',
    day: DateTime(2021, 3, 3),
  ),
  Event(
    key: UniqueKey(),
    title: 'Declaration of result',
    day: DateTime(2021, 3, 18),
  ),
  Event(
    key: UniqueKey(),
    title: 'Registration of students',
    day: DateTime(2021, 3, 18),
  ),
  Event(
    key: UniqueKey(),
    title: 'commencement of classes',
    day: DateTime(2021, 30, 19),
  ),
  Event(
    key: UniqueKey(),
    title: 'Department wise evaluation of project (Continued...)',
    day: DateTime(2021, 4, 27),
  ),
  Event(
    key: UniqueKey(),
    title: 'Two unit tests',
  ),
  Event(
    key: UniqueKey(),
    title: 'Innovation Day (Final evaluation of project)',
  ),
  Event(
    key: UniqueKey(),
    title: 'Annual Cultural Festival - Annant',
  ),
  Event(
    key: UniqueKey(),
    title: 'Major Practical examination',
    day: DateTime(2021, 7, 14),
  ),
  Event(
    key: UniqueKey(),
    title: 'Major theory examination',
    day: DateTime(2021, 7, 20),
  ),
  Event(
    key: UniqueKey(),
    title: 'Declaration of Result',
    day: DateTime(2021, 8, 11),
  ),
  Event(
    key: UniqueKey(),
    title: 'Semester break',
    day: DateTime(2021, 8, 11),
  ),
  Event(
    key: UniqueKey(),
    title: 'Preparatory Classes for Remajor Examination',
    day: DateTime(2021, 8, 16),
  ),
  Event(
    key: UniqueKey(),
    title: 'Remajor Examination',
    day: DateTime(2021, 8, 23),
  ),
  Event(
    key: UniqueKey(),
    title: 'Makar Sakranti',
    day: DateTime(2021, 1, 14),
    isFestival: true,
    description:
        "Makar Sankranti or Uttarayan or Maghi or simply Sankranti, also known in Bangladesh as Poush Sankranti, is a harvest festival day in the Hindu calendar, dedicated to the deity Surya (sun). It is observed each year the day Sun enters the Capricorn zodiac which corresponds with the month of January as per the Gregorian calendar. It marks the first day of the sun's transit into Makara rashi (Capricorn).",
  ),
  Event(
    key: UniqueKey(),
    title: 'Pongal',
    day: DateTime(2021, 1, 17),
    isFestival: true,
    description:
        "Pongal (பொங்கல், also spelled Poṅkal), is also referred to as Thai Pongal (தைப்பொங்கல், also spelled Tai Pongal), is a multi-day Hindu harvest festival of South India, particularly in the Tamil community. It is observed at the start of the month Tai according to Tamil solar calendar, and this is typically about January 14. It is dedicated to the Hindu sun god, the Surya, and corresponds to Makar Sankranti, the harvest festival under many regional names celebrated throughout India. The three days of the Pongal festival are called Bhogi Pongal, Surya Pongal and Maattu Pongal. Some Tamils celebrate a fourth day of Pongal as Kanum Pongal.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Basant Panchami',
    day: DateTime(2021, 1, 16),
    isFestival: true,
    description:
        "Vasant Panchami, also called Sarasvati Puja in honor of the goddess Saraswati, is a festival that marks the preparation for the arrival of spring. The festival is celebrated by people in the Indian subcontinent in various ways depending on the region. Vasant Panchami also marks the start of preparation for Holika and Holi, which take place forty days later. The Vasant Utsava (festival) on Panchami is celebrated forty days before spring, because any season's transition period is 40 days, and after that, the season comes into full bloom.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Maha Shivratri',
    day: DateTime(2021, 2, 11),
    isFestival: true,
    description:
        "Maha Shivaratri (IAST: Mahāśivarātri) is a Hindu festival celebrated annually in honour of the god Shiva. The name also refers to the night when Lord Shiva performs the heavenly dance. There is a Shivaratri in every luni-solar month of the Hindu calendar, on the month's 13th night/14th day, but once a year in late winter (February/March, or Phalguna as per North Indian Hindu calendar while the same day is considered to fall in Maagha Maas Krishna Paksha as per South Indian Hindu calendar) and before the arrival of Summer, marks Maha Shivaratri which means 'the Great Night of Shiva'",
  ),
  Event(
    key: UniqueKey(),
    title: 'Holi',
    day: DateTime(2021, 3, 29),
    isFestival: true,
    description:
        "Holi is a popular ancient Indian festival, also known as the 'Festival of Love', the 'Festival of Colours' and the 'Festival of Spring'. The festival celebrates the eternal and divine love of Radha Krishna. It also signifies the triumph of good over the evil, as it celebrates the victory of Vishnu as Narasimha Narayana over Hiranyakashipu. It originated and is predominantly celebrated in India and Nepal but has also spread to other regions of Asia and parts of the Western world through the diaspora from the Indian subcontinent.\n\nHoli celebrates the arrival of spring, the end of winter, the blossoming of love and for many, it is a festive day to meet others, play and laugh, forget and forgive, and repair broken relationships. The festival also celebrates the beginning of a good spring harvest season.[16][17] It lasts for a night and a day, starting on the evening of the Purnima (Full Moon Day) falling in the Hindu calendar month of Phalguna, which falls around the middle of March in the Gregorian calendar. The first evening is known as Holika Dahan (burning of Demon Holika) or Chhoti Holi and the following day as Holi, Rangwali Holi, Dol Purnima, Dhuleti, Dhulandi,[18] Ukuli, Manjal Kuli,[19] Yaosang, Shigmo or Phagwah, Jajiri.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Mewar',
    day: DateTime(2021, 3, 27),
    isFestival: true,
    description:
        "The celebration of Mewar Festival includes a number of practices, followed by the local people. They dress the images of Gangaur and Isar. It is followed by a procession that moves through the various parts of the city. As the procession reaches Lake Pichola, the images are taken on boats. The celebration of Mewar Festival also includes organizing a number of cultural events and activities. Dances, songs and cultural programs are also performed. The people of this region boast a joyous mood and enjoy every bit of the festival.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Baisakhi',
    day: DateTime(2021, 4, 14),
    isFestival: true,
    description:
        "Vaisakhi (IAST: vaisākhī), also pronounced Baisakhi, marks the first day of the month of Vaisakha and is usually celebrated annually on 13 or 14 April as the solar new year. It is additionally a spring harvest festival in the Punjab.\n\nFor Sikhs, in addition to its significance as the New Year, during which Sikhs hold kirtans, visit local Gurdwaras, community fairs, hold nagar kirtan processions, raise the Nishan Sahib flag, and gather to socialize and share festive foods, Vaisakhi observes major events in the history of Sikhism and the Indian subcontinent that happened in the Punjab region. Vaisakhi as a major Sikh festival marks the birth of the Khalsa order by Guru Gobind Singh, the tenth Guru of Sikhism, on Vaisakhi of 1699. Later, Ranjit Singh was proclaimed as Maharaja of the Sikh Empire on 12 April 1801 (to coincide with Vaisakhi), creating a unified political state, Vaisakhi was also the day when Bengal Army officer Reginald Dyer orders his troops to shoot into a protesting crowd, an event which would come to be known the Jallianwala Bagh massacre; the massacre proved influential to the history of the Indian independence movement.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Bihu',
    day: DateTime(2021, 4, 13),
    isFestival: true,
    description:
        "Bihu is a set of three important Assamese festivals in the Indian state of Assam —Rongali or Bohag Bihu observed in April, Kongali or Kati Bihu observed in October, and Bhogali or Magh Bihu observed in January. The Rongali Bihu is the most important of the three, celebrating spring festival. The Bhogali Bihu or the Magh Bihu is a harvest festival, with community feasts. The Kongali Bihu or the Kati Bihu is the sombre, thrifty one reflecting a season of short supplies and is an animistic festival.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Thrissur Pooram',
    day: DateTime(2021, 5, 3),
    isFestival: true,
    description:
        "The Thrissur Pooram is an annual temple festival held in Thrissur, Kerala, India. It is held at the Vadakkunnathan (Shiva) Temple in Thrissur every year on the Pooram day—the day when the moon rises with the Pooram star in the Malayalam Calendar month of Medam. It is the largest and most famous of all poorams in India.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Buddha Jayanti',
    day: DateTime(2021, 5, 7),
    isFestival: true,
    description:
        "Buddha's Birthday (also known as Buddha Jayanti, also known as his day of enlightenment - Buddha Purnima, Buddha Pournami) is a Buddhist festival that is celebrated in most of East Asia and South Asia commemorating the birth of the Prince Siddhartha Gautama, later the Gautama Buddha, who was the founder of Buddhism. According to Buddhist tradition, Gautama Buddha was born c. 563-483 BCE in Lumbini.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Eid Ul Fitr',
    day: DateTime(2021, 5, 13),
    isFestival: true,
    description:
        "Eid al-Fitr is the earlier of the two official holidays celebrated within Islam (the other being Eid al-Adha). The religious holiday is celebrated by Muslims worldwide because it marks the end of the month-long dawn-to-sunset fasting of Ramadan. It falls on the first day of Shawwal in the Islamic calendar; this does not always fall on the same Gregorian day, as the start of any lunar Hijri month varies based on when the new moon is sighted by local religious authorities. The holiday is known under various other names in different languages and countries around the world. The day is also called Lesser Eid, or simply Eid.\n\nEid al-Fitr has a particular salat (Islamic prayer) that consists of two rakats (units) generally performed in an open field or large hall. It may only be performed in congregation (jamāʿat) and features six additional Takbirs (raising of the hands to the ears while saying 'Allāhu 'Akbar', meaning 'God is the greatest') in the Hanafi school of Sunni Islam: three at the start of the first rakat and three just before rukūʿ in the second rakat. Other Sunni schools usually have 12 Takbirs, similarly split in groups of seven and five. In Shia Islam, the salat has six Takbirs in the first rakat at the end of qira'a, before rukūʿ, and five in the second. Depending on the juristic opinion of the locality, this salat is either farḍ (فرض, obligatory), mustaḥabb (strongly recommended) or mandūb (مندوب, preferable). After the salat, Muslims celebrate the Eid al-Fitr in various ways[9] with food ('Eid cuisine') being a central theme, which also gives the holiday the nickname 'Sweet Eid' or 'Sugar Feast'.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Ratha Yatra',
    day: DateTime(2021, 6, 23),
    isFestival: true,
    description:
        "Ratha Yatra[a], or Chariot festival, is any public procession in a chariot. The term particularly refers to the annual Ratha Yatra in Odisha, Jharkhand, West Bengal and other East Indian states, particularly the Odia festival that involve a public procession with a chariot with deities Jagannath (Vishnu avatar), Balabhadra (his brother), Subhadra (his sister) and Sudarshana Chakra (his weapon) on a ratha, a wooden deula-shaped chariot. Ratha Yatra processions have been historically common in Vishnu-related (Jagannath, Rama, Krishna) traditions in Hinduism across India, in Shiva-related traditions, saints and goddesses in Nepal, with Tirthankaras in Jainism, as well as tribal folk religions found in the eastern states of India. Notable Ratha Yatras in India include the Ratha Yatra of Puri, the Dhamrai Ratha Yatra and the Ratha Yatra of Mahesh. Hindu communities outside India, such as in Singapore, celebrate Ratha Yatra such as those associated with Jagannath, Krishna, Shiva and Mariamman. According to Knut Jacobsen, a Ratha Yatra has religious origins and meaning, but the events have a major community heritage, social sharing and cultural significance to the organizers and participants.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Hemis',
    day: DateTime(2021, 6, 30),
    isFestival: true,
    description:
        "Marking the birth of Guru Padmasambhava, Hemis Festival is not only one of the most important Buddhist celebration in Ladakh but is also the most popular festival amongst tourists. Held in one of the most-visited monasteries in Ladakh, Hemis Gompa, the festival is a two-day event that is celebrated on the 10th day of the fifth month of Tibetan Calendar, which is the month of June/July in Gregorian Calendar.\n\nOn this popular festival in Ladakh, Cham Dance and other traditional dances are performed in Hemis Monastery on the beats of drums and cymbal and on the tunes of long pipe like Tibetan music instrument. On both days, giant thangkas (Buddhist paintings) are unfurled for the public. In fact, every 12th year, the largest thangka in Ladakh is unfurled in Hemis on the first day of the festival for the public to see.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Janmashtmi',
    day: DateTime(2021, 8, 12),
    isFestival: true,
    description:
        "ishna Janmashtami, also known simply as Janmashtami or Gokulashtami, is an annual Hindu festival that celebrates the birth of Krishna, the eighth avatar of Vishnu. According to Hindu lunisolar calendar, it is observed on the eighth tithi (Ashtami) of the Krishna Paksha (dark fortnight) in Bhadrapada Masa. This overlaps with August or September of the Gregorian calendar.\n\nIt is an important festival, particularly in the Vaishnavism tradition of Hinduism. Dance-drama enactments of the life of Krishna according to the Bhagavata Purana (such as Rasa Lila or Krishna Lila), devotional singing through the midnight when Krishna was born, fasting (upavasa), a night vigil (Ratri Jagaran), and a festival (Mahotsav) on the following day are a part of the Janmashtami celebrations. It is celebrated particularly in Mathura and Vrindavan, along with major Vaishnava and non-sectarian communities found in Manipur, Assam, Bihar, West Bengal, Odisha, Madhya Pradesh, Rajasthan, Gujarat, Maharashtra, Karnataka, Kerala, Andra Pradesh, Tamil Nadu and all the other states of India.\n\nKrishna Janmashtami is followed by the festival Nandotsav, which celebrates the occasion when Nanda Baba distributed gifts to the community in honor of the birth.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Rakshabandhan',
    day: DateTime(2021, 8, 22),
    isFestival: true,
    description:
        "Raksha Bandhan, is a popular, traditionally Hindu, annual rite, or ceremony, which is central to a festival of the same name celebrated in South Asia, and in other parts of the world significantly influenced by Hindu culture. On this day, sisters of all ages tie a talisman, or amulet, called the Rakhi, around the wrists of their brothers, symbolically protecting them, receiving a gift in return, and traditionally investing the brothers with a share of the responsibility of their potential care.\n\nRaksha Bandhan is observed on the last day of the Hindu lunar calendar month of Shraavana, which typically falls in August. The expression 'Raksha Bandhan,' Sanskrit, literally, 'the bond of protection, obligation, or care,' is now principally applied to this ritual. Until the mid-20th-century, the expression was more commonly applied to a similar ritual, also held on the same day, with precedence in ancient Hindu texts, in which a domestic priest ties amulets, charms, or threads on the wrists of his patrons, or changes their sacred thread, and receives gifts of money; in some places, this is still the case. In contrast, the sister-brother festival, with origins in folk culture, had names which varied with location, with some rendered as Saluno, Silono, and Rakri. A ritual associated with Saluno included the sisters placing shoots of barley behind the ears of their brothers.\n\nOf special significance to married women, Raksha Bandhan is rooted in the practice of territorial or village exogamy, in which a bride marries out of her natal village or town, and her parents, by custom, do not visit her in her married home. In rural north India, where village exogamy is strongly prevalent, large numbers of married Hindu women travel back to their parents' homes every year for the ceremony. Their brothers, who typically live with the parents or nearby, sometimes travel to their sisters' married home to escort them back. Many younger married women arrive a few weeks earlier at their natal homes and stay until the ceremony. The brothers serve as lifelong intermediaries between their sisters' married and parental homes, as well as potential stewards of their security.\n\nIn urban India, where families are increasingly nuclear, the festival has become more symbolic, but continues to be highly popular. The rituals associated with this festival have spread beyond their traditional regions and have been transformed through technology and migration, the movies, social interaction, and promotion by politicized Hinduism, as well as by the nation state.\n\nAmong women and men who are not blood relatives, there is also a transformed tradition of voluntary kin relations, achieved through the tying of rakhi amulets, which have cut across caste and class lines, and Hindu and Muslim divisions. In some communities or contexts, other figures, such as a matriarch, or a person in authority, can be included in the ceremony in ritual acknowledgement of their benefaction.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Onam',
    day: DateTime(2021, 8, 23),
    isFestival: true,
    description:
        "Onam is an annual harvest festival celebrated in the Indian state of Kerala. A major annual event for Keralites, it is the official festival of the state and includes a spectrum of cultural events. Drawing from Hindu legends, Onam commemorates King Mahabali.\n\nWithin the textual tradition (prim. Mahabharata), Mahabali is noted to be an Asura, who found liberation at the feet of Vishnu through charity and religious rectitude. However, there are other interpretations of the same myth-cycle. One version, situated within the Bali tradition, celebrates him as a lower-caste Dravidian who challenged Brahminic hegemony. In the state-sanctioned celebrations, Mahabali is portrayed as a cultural hero: a just and benevolent ruler, he chose to even give up his rule/life for protecting his subjects, and was allowed by Vamana to return once a year.\n\nThe festival probably has ancient origins and it became intricately linked with Hindu legends at some later date. The earliest known reference is found in Maturaikkāñci - a Sangam poem - which mentions Onam being celebrated in Madurai temples. Since then, multiple temple inscriptions record celebrations of Onam. The date is based on the Panchangam which falls on the 22nd nakshatra Thiruvonam in the month Chingam of Malayalam calendar, which in Gregorian calendar falls between August-September.\n\nIn a neo-liberal India, the festival has been increasingly re-positioned as a tourist event. It has also been subject to multiple political appropriations — Ritty A. Lukose notes that a festival which has been culturally inclusive within the 'secular lexicon' of Hinduism is being increasingly turned into an event of exclusivism by Hindu Nationalists.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Independance Day',
    day: DateTime(2021, 8, 30),
    isFestival: true,
    description:
        "Independence Day is celebrated annually on 15 August as a national holiday in India commemorating the nation's independence from the United Kingdom on 15 August 1947, the day when the provisions of the 1947 Indian Independence Act, which transferred legislative sovereignty to the Indian Constituent Assembly, came into effect. India retained King George VI as head of state until its transition to a republic, when the nation adopted the Constitution of India on 26 January 1950 (celebrated as Indian Republic Day) and replaced the dominion prefix, Dominion of India, with the enactment of the sovereign law Constitution of India. India attained independence following the Independence Movement noted for largely non-violent resistance and civil disobedience.\n\nIndependence coincided with the partition of India, in which British India was divided along religious lines into the Dominions of India and Pakistan; the partition was accompanied by violent riots and mass casualties, and the displacement of nearly 15 million people due to religious violence. On 15 August 1947, the first Prime Minister of India, Jawaharlal Nehru raised the Indian national flag above the Lahori Gate of the Red Fort in Delhi. On each subsequent Independence Day, the incumbent Prime Minister customarily raises the flag and gives an address to the nation. The entire event is broadcast by Doordarshan, India's national broadcaster, and usually begins with the shehnai music of Ustad Bismillah Khan. Independence Day is observed throughout India with flag-hoisting ceremonies, parades and cultural events. It is a national holiday.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Ganesh Chaturthi',
    day: DateTime(2021, 8, 31),
    isFestival: true,
    description:
        "Ganesh Chaturthi (ISO: Gaṇeśa Caturthī), also known as Vinayaka Chaturthi (Vināyaka Caturthī), or Vinayaka Chaviti (Vināyaka Cavitī) is a Hindu festival celebrating the arrival of Lord Ganesh to earth from Kailash Parvat with his mother Goddess Parvati/Gauri. The festival is marked with the installation of Lord Ganesh's clay murtis privately in homes and publicly by Shri Bal Gangadhar Tilak popularly known as Lokmanya Tilak in Pune in the year 1893 on elaborate pandals (temporary stages). Observations include chanting of Vedic hymns and Hindu texts such as, prayers and vrata (fasting). Offerings and prasāda from the daily prayers, that are distributed from the pandal to the community, include sweets such as modaka as it is believed to be a favourite of Lord Ganesh. The festival ends on the tenth day after start, when the idol is carried in a public procession with music and group chanting, then immersed in a nearby body of water such as a river or sea, called visarjan.. In Mumbai alone, around 150,000 statues are immersed annually. Thereafter the clay idol dissolves and Ganesh is believed to return to Mount Kailash to Parvati and Shiva. The festival celebrates Lord Ganesh as the God of New Beginnings and the Remover of Obstacles as well as the god of wisdom and intelligence and is observed throughout India, especially in the states such as Maharashtra and Goa. Ganesh Chaturthi is also observed in Nepal and by the Hindu diaspora elsewhere such as in Australia, New Zealand, Canada, Singapore, Malaysia, Trinidad and Tobago, Guyana, Suriname, other parts of the Caribbean, Fiji, Mauritius, South Africa, United States, and Europe. In the Gregorian calendar, Ganesh Chaturthi falls between 22 August and 20 September every year.\n\nAt public venues, along with the reading of texts and group feasting, athletic and martial arts competitions are also held",
  ),
  Event(
    key: UniqueKey(),
    title: 'Navratri',
    day: DateTime(2021, 10, 7),
    isFestival: true,
    description:
        "Navaratri[a] is a Hindu festival that spans nine nights (and ten days) and is celebrated every year in the autumn season. It is observed for different reasons and celebrated differently in various parts of the Hindu Indian cultural sphere. Theoretically, there are four seasonal Navaratri. However, in practice, it is the post-monsoon autumn festival called Sharada Navaratri that is the most observed in the honour of the divine feminine Devi (Durga). The festival is celebrated in the bright half of the Hindu calendar month Ashvin, which typically falls in the Gregorian months of September and October",
  ),
  Event(
    key: UniqueKey(),
    title: 'Durga Puja',
    day: DateTime(2021, 10, 15),
    isFestival: true,
    description:
        "Durga Puja, also known as Durgotsava or Sharodotsava, is an annual Hindu festival originating in the Indian subcontinent which reveres and pays homage to the Hindu goddess Durga and is also celebrated because of Durga's victory over Mahishasur.[1][2] It is particularly popular and traditionally celebrated in the Indian states of West Bengal, Bihar, Jharkhand, Odisha, Rajasthan, Tripura, Assam, Maharastra, Uttar Pradesh, Haryana, Gujarat, Uttrakhand and the country of Bangladesh. The festival is observed in the Indian calendar month of Ashwin, which corresponds to September-October in the Gregorian calendar. Durga Puja, is a ten-day festival, of which the last five are of the most significance. The puja is performed in homes and public, the latter featuring a temporary stage and structural decorations (known as pandals). The festival is also marked by scripture recitations, performance arts, revelry, gift-giving, family visits, feasting, and public processions. Durga puja is an important festival in the Shaktism tradition of Hinduism.\n\nAs per Hindu scriptures, the festival marks the victory of goddess Durga in her battle against the shape-shifting asura, Mahishasura. Thus, the festival epitomizes the victory of good over evil, though it is also in part a harvest festival celebrating the goddess as the motherly power behind all of life and creation. Durga puja coincides with Navaratri and Dussehra celebrations observed by other traditions of Hinduism, in which the Ram Lila dance-drama is enacted, celebrating the victory of Rama against Ravana, and effigies of Ravana are burnt.\n\nThe primary goddess revered during Durga Puja is Durga but celebrations also include other major deities of Hinduism such as Lakshmi (the goddess of wealth and prosperity), Saraswati (the goddess of knowledge and music), Ganesha (the god of good beginnings), and Kartikeya (the god of war). In Bengali and Odia traditions, these deities are considered to be Durga's children, and Durga Puja is believed to commemorate Durga's visit to her natal home with her beloved children. The festival is preceded by Mahalaya, which is believed to mark the start of Durga's journey to her natal home. Primary celebrations begin on the sixth day (Shasthi), on which the goddess is welcomed with rituals. The festival ends on the tenth day (Vijaya Dashami) when devotees embark on a procession carrying the worshipped clay sculpture-idols to a river, or other water body, and immerse them, symbolic of her return to the divine cosmos and her marital home with Shiva in Kailash. Regional and community variations in celebration of the festival and rituals observed exist.\n\nDurga puja is an old tradition of Hinduism, though its exact origins are unclear. Surviving manuscripts from the 14th—century provide guidelines for Durga puja, while historical records suggest that royalty and wealthy families were sponsoring major Durga puja festivities since at least the 16th-century. The prominence of Durga puja increased during the British Raj in the provinces of Bengal, Odisha and Assam. However, in modern times, the importance of Durga puja is more as a social and cultural festival than a religious one, wherever it is observed.\n\nOver the years, Durga puja has morphed into an inseparable part of Indian culture with a diverse group of people celebrating this festival in their unique way while on tradition.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Dussehra',
    day: DateTime(2021, 10, 30),
    isFestival: true,
    description:
        "Vijayadashami (Sanskrit: विजयदशमी, romanized: Vijayadaśamī), also known as Dussehra, Dasara or Dashain, is a major Hindu festival celebrated at the end of Navaratri every year. It is observed on the tenth day in the Hindu calendar month of Ashvin, the seventh month of the Hindu Luni-Solar Calendar, which typically falls in the Gregorian months of September and October.\n\nVijayadashami is observed for different reasons and celebrated differently in various parts of the Indian subcontinent. In the southern, eastern, northeastern, and some northern states of India, Vijayadashami marks the end of Durga Puja, remembering goddess Durga's victory over the buffalo demon Mahishasura to restore and protect dharma. In the northern, central and western states, the festival is synonymously called Dussehra (also spelled Dasara, Dashahara). In these regions, it marks the end of Ramlila and remembers god Rama's victory over Ravana. Alternatively, it marks a reverence for one of the aspects of goddess Devi, such as Durga or Saraswati.\n\nVijayadashami celebrations include processions to a river or ocean front that involve carrying clay statues of Durga, Lakshmi, Saraswati, Ganesha and Kartikeya, accompanied by music and chants, after which the images are immersed in the water for dissolution and farewell. Elsewhere, on Dasara, towering effigies of Ravana, symbolising evil, are burnt with fireworks, marking evil's destruction. The festival also starts the preparations for Diwali, the important festival of lights, which is celebrated twenty days after Vijayadashami.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Diwali',
    day: DateTime(2021, 11, 4),
    isFestival: true,
    description:
        "Diwali or Divali; related to Jain Diwali, Bandi Chhor Divas, Tihar, Swanti, Sohrai and Bandna is a festival of lights and one of the major festivals celebrated by Hindus, Jains, Sikhs and some Buddhists, notably Newar Buddhists. The festival usually lasts five days and is celebrated during the Hindu lunisolar month Kartika (between mid-October and mid-November). One of the most popular festivals of Hinduism, Diwali symbolizes the spiritual 'victory of light over darkness, good over evil, and knowledge over ignorance'. The festival is widely associated with Lakshmi, goddess of prosperity, with many other regional traditions connecting the holiday to Sita and Rama, Vishnu, Krishna, Yama, Yami, Durga, Kali, Hanuman, Ganesha, Kubera, Dhanvantari, or Vishvakarman. Furthermore, it is, in some regions, a celebration of the day Rama returned to his kingdom Ayodhya with his wife Sita and his brother Lakshmana after defeating Ravana in Lanka and serving 14 years of exile.\n\nIn the lead-up to Diwali, celebrants will prepare by cleaning, renovating, and decorating their homes and workplaces with diyas (oil lamps) and rangolis (colorful art circle patterns). During Diwali, people wear their finest clothes, illuminate the interior and exterior of their homes with diyas and rangoli, perform worship ceremonies of Lakshmi, the goddess of prosperity and wealth,[note 1] light fireworks, and partake in family feasts, where mithai (sweets) and gifts are shared. Diwali is also a major cultural event for the Hindu, Sikh and Jain diaspora. The five-day long festival originated in the Indian subcontinent and is mentioned in early Sanskrit texts. Diwali is usually celebrated twenty days after the Vijayadashami (Dussehra, Dasara, Dasain) festival, with Dhanteras, or the regional equivalent, marking the first day of the festival when celebrants prepare by cleaning their homes and making decorations on the floor, such as rangolis. The second day is Naraka Chaturdashi. The third day is the day of Lakshmi Puja and the darkest night of the traditional month. In some parts of India, the day after Lakshmi Puja is marked with the Govardhan Puja and Balipratipada (Padwa). Some Hindu communities mark the last day as Bhai Dooj or the regional equivalent, which is dedicated to the bond between sister and brother,[23] while other Hindu and Sikh craftsmen communities mark this day as Vishwakarma Puja and observe it by performing maintenance in their work spaces and offering prayers.\n\nSome other faiths in India also celebrate their respective festivals alongside Diwali. The Jains observe their own Diwali which marks the final liberation of Mahavira, the Sikhs celebrate Bandi Chhor Divas to mark the release of Guru Hargobind from a Mughal Empire prison,while Newar Buddhists, unlike other Buddhists, celebrate Diwali by worshipping Lakshmi, while the Hindus of Eastern India and Bangladesh generally celebrate Diwali by worshipping the goddess Kali. The main day of the festival of Diwali (the day of Lakshmi Puja) is an official holiday in Fiji,[32] Guyana,[33] India, Malaysia,[a][34] Mauritius, Myanmar, Nepal, Pakistan, Singapore, Sri Lanka, Suriname, and Trinidad and Tobago.",
  ),
  Event(
    key: UniqueKey(),
    title: 'Gurupurab',
    day: DateTime(2021, 11, 19),
    isFestival: true,
    description:
        "Guru Nanak Dev Ji Gurpurab, also known as Guru Nanak's Prakash Utsav, celebrates the birth of the first Sikh guru, Guru Nanak. One of the most celebrated Sikh gurus and the founder of Sikhism, Guru Nanak Dev is highly revered by the Sikh community. This is one of the most sacred festivals in Sikhism, or Sikhi.The festivities in the Sikh religion revolve around the anniversaries of the 10 Sikh Gurus. These Gurus were responsible for shaping the beliefs of the Sikhs . Their birthdays, known as Gurpurab, are occasions for celebration and prayer among the Sikhs",
  ),
  Event(
    key: UniqueKey(),
    title: 'Christmas',
    day: DateTime(2021, 12, 25),
    isFestival: true,
    description:
        "Christmas is an annual festival commemorating the birth of Jesus Christ, observed primarily on December 25[a] as a religious and cultural celebration among billions of people around the world. A feast central to the Christian liturgical year, it is preceded by the season of Advent or the Nativity Fast and initiates the season of Christmastide, which historically in the West lasts twelve days and culminates on Twelfth Night. Christmas Day is a public holiday in many countries, is celebrated religiously by a majority of Christians, as well as culturally by many non-Christians, and forms an integral part of the holiday season organized around it.\n\nThe traditional Christmas narrative, the Nativity of Jesus, delineated in the New Testament says that Jesus was born in Bethlehem, in accordance with messianic prophecies. When Joseph and Mary arrived in the city, the inn had no room and so they were offered a stable where the Christ Child was soon born, with angels proclaiming this news to shepherds who then spread the word.\n\nAlthough the month and date of Jesus' birth are unknown, the church in the early fourth century fixed the date as December 25. This corresponds to the date of the winter solstice on the Roman calendar. It is exactly nine months after Annunciation on March 25, also the date of the spring equinox. Most Christians celebrate on December 25 in the Gregorian calendar, which has been adopted almost universally in the civil calendars used in countries throughout the world. However, part of the Eastern Christian Churches celebrate Christmas on December 25 of the older Julian calendar, which currently corresponds to January 7 in the Gregorian calendar. For Christians, believing that God came into the world in the form of man to atone for the sins of humanity, rather than knowing Jesus' exact birth date, is considered to be the primary purpose in celebrating Christmas.\n\nThe celebratory customs associated in various countries with Christmas have a mix of pre-Christian, Christian, and secular themes and origins.Popular modern customs of the holiday include gift giving; completing an Advent calendar or Advent wreath; Christmas music and caroling; viewing a Nativity play; an exchange of Christmas cards; church services; a special meal; and the display of various Christmas decorations, including Christmas trees, Christmas lights, nativity scenes, garlands, wreaths, mistletoe, and holly. In addition, several closely related and often interchangeable figures, known as Santa Claus, Father Christmas, Saint Nicholas, and Christkind, are associated with bringing gifts to children during the Christmas season and have their own body of traditions and lore. Because gift-giving and many other aspects of the Christmas festival involve heightened economic activity, the holiday has become a significant event and a key sales period for retailers and businesses. Over the past few centuries, Christmas has had a steadily growing economic effect in many regions of the world.",
  ),
];

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `Employer` (
  `Id` int(11) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `Employer` (`Id`, `Type`, `Name`) VALUES
(1, 'I', 'AGRICULTURE, FORESTRY, etc.'),
(3, 'III', 'FISHING, etc.'),
(4, 'IV', 'MINING, QUARRYING, SAND PITS, etc.'),
(5, 'V', 'BUILDING CONSTRUCTION, etc.'),
(6, 'VI', 'FOODS, DRINKS, TOBACCO, etc.'),
(7, 'VII', 'TEXTILES, etc.'),
(8, 'VIII', 'WOOD INDUSTRY, UPHOLSTERY, etc.'),
(9, 'IX', 'PRINTING AND PAPER INDUSTRY, etc.'),
(10, 'X', 'CHEMICAL INDUSTRIES, RUBBER, OIL, PAINT, etc.'),
(11, 'XI', 'LEATHER INDUSTRY, etc.'),
(12, 'XII', 'GLASS, BRICKS, TILES, CONCRETE, etc.'),
(13, 'XIII', 'IRON, STEEL, ARTIFICIAL LIMBS, GALVANIZING, GARAGES, METALS, etc.'),
(14, 'XIV', 'JEWELLERS, DIAMONDS, ASBESTOS, BITUMEN, etc.'),
(15, 'XV', 'TRADE, COMMERCE, etc.'),
(16, 'XVI', 'BANKING, INSURANCE, etc.'),
(17, 'XVII', 'AIR, ROAD TRANSPORT HAULIERS, etc.'),
(18, 'XVIII', 'LOCAL AUTHORITIES, DIVISIONAL COUNCILS, POWER STATIONS, etc.'),
(19, 'XIX', 'PERSONAL SERVICES, HOTELS, FLATS, etc.'),
(20, 'XX', 'ENTERTAINMENT, SPORT, etc.'),
(21, 'XXI', 'MEDICAL SERVICES, ANIMAL HOSPITALS, etc.'),
(22, 'XXII', 'PROFESSIONAL SERVICES, etc.'),
(23, 'XXIII', 'EDUCATIONAL SERVICES, etc.'),
(24, 'XXIV', 'CHARITABLE, RELIGIOUS, POLITICAL AND TRADE ORGANIZATIONS, etc.');

CREATE TABLE `EmployerSubs` (
  `Id` int(11) NOT NULL,
  `EmployerId` int(11) NOT NULL,
  `Description` longtext NOT NULL,
  `ShortDescription` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `EmployerSubs` (`Id`, `EmployerId`, `Description`, `ShortDescription`) VALUES
(111, 1, 'Any farming operations that are not definable under the subclasses as set out in the table of rates hereunder, are subject to the rate for this subclass. (2) Oyster cultivation; sheep shearing; dipping contractors as a separate undertaking; the organizing and conducting of agricultural shows.  ', 'Farming Operations thats NOT Definable'),
(114, 1, 'Farming operations where the farmer is mainly engaged in forestry, horticulture and/or crop farming (tillage - any kind of crop) other than sugar cane and tea growing; and has one or more tractors and/or power-driven saws; grass cutting; pressing and/or baling of chaff, Lucerne, etc.; orchard cultivation; ploughing; shelling of ground nuts and/or threshing as a business.  ', 'Crop Farming Operations'),
(116, 1, 'Farming operations where the farmer is mainly engaged in forestry, horticulture and/or crop farming (tillage - any kind of crop) other than sugar cane and tea growing; and has one or more tractors and/or power-driven saws; grass cutting; pressing and/or baling of chaff, Lucerne, etc.; orchard cultivation; ploughing; shelling of ground nuts and/or threshing as a business.  ', 'Livestock Farming'),
(118, 1, 'Farming operations where the farmer carries on livestock farming and tillage on a more or less equal scale and he has one or more tractors and/or power-driven saws.  ', 'Sugar cane / Tea growing Farming Operations'),
(300, 3, 'Fishing, rock lobster catching, whaling and sealing - all operations including boat repairs and the activities of all sea-going personnel, but excluding land-based processing; factory ships - all operations.  ', 'Fishing, Boat repairs and all sea operations'),
(400, 4, 'Underground mining and/or prospecting for any kind of mineral, metal and precious or semi-precious stones where such activities are conducted by means of shafts, tunnels and winches, but excluding coal mining; mine dump contracting.  ', 'Underground Mining excluding coal'),
(411, 4, 'Coal mining.  ', 'Coal mining'),
(420, 4, 'Open cast mining, including slate quarrying but excluding coal mining and quarrying elsewhere rated; recovery of diamonds from sea, alluvial mining and/or surface workings in connection with the recovery of or prospecting for any kind of mineral, metal and precious or semi-precious stones; working of sand, gravel and clay pits; recovery of gold from mine dumps; working of salt pans.  ', 'Open cast mining'),
(440, 4, 'Quarrying of stone, flint, lime, etc. including stone crushing and all other operations incidental thereto.  ', 'Quarrying of stine, flint, lime, etc.'),
(441, 4, 'Stone crushing operations as a separate business.  ', 'Stone crushing operations'),
(500, 5, 'All building operations, including demolition work; painting and plastering not elsewhere rated; tombstone erection; construction of swimming pools, including maintenance not undertaken as a separate business; electrical contractors; (where the above mentioned building operations involve work in connection with buildings over two storeys or other structures over 12m in height the risk may be specially rated).  ', 'Building, Demolition, Plumbing, etc.'),
(501, 5, 'Installation of composition floors; wooden floor surfacing and laying, erection of ceilings; gas fitting and plumbing including domestic drain laying where such operations are incidental to the business of a plumber; sports ground construction; asphalt contracting as a separate business; installation of fire protection devices, landscape gardening; domestic gardening services; floor and wall tiling; pavement construction, anti-soil erosion work. Window cleaning. Sign erection including sign writing on buildings. Maintenance and cleaning of swimming pools as a separate business.  ', 'Installation. Cleaning, sign erections'),
(502, 5, 'Any tunneling, rock drilling and/or blasting in connection with any structure or waterworks not elsewhere stated, or in connection with sanitary engineering and/or sewerage construction; well sinking. Note: Only the direct wages expended on these operations should be segregated unless the employer undertakes tunneling, rock drilling and/or blasting as a business when all wages incidental to general wages are subject to this rate.  ', 'Tunneling, Drilling, Blastings,Sewerage construction, Engineering'),
(505, 5, 'Water boring and any other drilling activities not elsewhere rated.', 'Water boring'),
(512, 5, 'Operations of civil engineers including earth moving, not elsewhere rated; road making; Irrigation furrow construction; sanitary engineering and/or sewer construction; bridge building and/or repairing; railway construction; dam construction; breakwater, pier and/or harbour construction. Note: Direct wages expended in connection with tunneling, rock drilling and/or blasting operations are subject to the rate for subclass 0502. Asphalting of roads and streets is regarded as an operation incidental to road making. Operations of an asphalt contractor undertaking road and/or street surfacing are subject to the rate laid down for this subclass  ', 'Civil engineering related.'),
(521, 5, 'Maintenance and operation of irrigation works and water works not otherwise stated.', 'Irrigation works'),
(530, 5, 'Erection and/or dismantling of steel structures and industrial plants including constructional steel engineering; erection and/or dismantling of scaffolds, including shuttering; any work pertaining to the alteration, repair or demolition of buildings, steeples, towers or chimney shafts over 12m in height as a business.  ', 'Erection/Dismantling of steel structures'),
(531, 5, 'Lift, heating, ventilation and/or refrigeration installation; repair and/or maintenance if carried on as a separate business; windmill and/or fence erection and/or repairing as a separate business.  ', 'Industrial installations/ Repairs/ Maintenance'),
(532, 5, 'Steel reinforcing operations.', 'Steel reinforcing operations.                                                                                                                         '),
(600, 6, 'All operations in connection with the wholesale and retail meat trade not elsewhere stated; abattoirs; bacon and meat curing; meat extract manufacturing; meat canning and by-products manufacturing; livestock dealing, driving and handling; offal cleaning as a separate business; tallow or tallow by-products manufacturing as a separate business.  ', 'Meat/ Live stock operations'),
(601, 6, 'Dairying including milk depots; butter and cheese factories; creameries; condensed milk factories; operation of cold storage plants.', 'Dairy products'),
(610, 6, 'Fish, whale and/or lobster processing on land.', 'Fish on land processing'),
(612, 6, 'Fresh fruit packing, grading and/or storing.', 'Fruit operations'),
(613, 6, 'Jam manufacturing, preserving and/or canning of fruit, vegetables, food, etc., including packing, storage, etc.; dehydrated food manufacturing.', 'Canned Food, Jam, packing/storing etc.'),
(621, 6, 'Corn and grain milling including distribution where this is undertaken from the mill premises; cereal food manufacturing; peanut product manufacturing; oil manufacturing for household use (other than fish and cotton-seed oil).  ', 'Milling and Distribution. Food product manufactoring'),
(622, 6, 'Baking, confectionery, biscuit, chocolate, cocoa and/or sweet manufacturing including shops for the sale or distribution of the above products if such shops and depots are conducted by or on behalf of the manufacturers of the above mentioned products.  ', 'Baking and Sweet manufacturing'),
(630, 6, 'Animal food manufacturing, Lucerne milling; oyster shell grit manufacturing; grinding of curry powder, jelly powder manufacturing, macaroni manufacturing; pickle and sauce manufacturing, vinegar works unless conduction in conjunction with wineries when the rate of subclass 0642 applies; potato chips and/or crisp manufacturing as a separate business; starch manufacturing, glucose and saccharine manufacturing, yeast manufacturing, miscellaneous food products not elsewhere stated.  ', 'Animal food, Sea food and different miscellaneous food'),
(640, 6, 'Aerated mineral water manufacturing, cordial manufacturing; fruit juices and concentrates manufacturing (not elsewhere stated); bottling as a separate business.', 'Mineral water, Juices, concentrates and Botteling'),
(641, 6, 'Brewing and/or malt manufacturing including distributing depots.  ', 'Brewing and/or malt manufacturing including distributing depots.'),
(642, 6, 'Treatment of argol and wine lees; blending, distilling and/or manufacturing of spirituous liquors, including wineries; manufacturing of grape juice and/or grape syrup, including the manufacture of scents if undertaken by an employer whose main operations fall to be rated under this subclass.  ', 'Treatment, Blending, Distilling of alcohol, juice and scents'),
(643, 6, 'Coffee grinding, blending and/or packing as a separate business; tea manufacturing, blending and/or packing as a separate business; peanut roasting as a separate business. Note: This rate also applies to employers whose main business is that of tea and coffee merchants and who undertake grinding, blending and packing of tea and/or coffee.  ', 'Coffee, Tee manufacturing'),
(650, 6, 'Cigarettes and/or tobacco manufacturing and/or warehousing including all operations incidental thereto.  ', 'Cigarettes/ Tobacco operations'),
(700, 7, 'Manufacture of blankets and articles of a similar nature not elsewhere stated; cloth milling; textile weaving. Wool washing; spinning and/or weaving of fibres; manufacture of surgical dressings not elsewhere stated; teasing of textile waste.', 'Blankets/ Material manufacturing/weaving'),
(701, 7, 'Cotton ginning and cottonseed oil manufacturing; cotton waste spinning; cotton wool manufacturing.  ', 'Cotton related operations'),
(712, 7, 'Bag-making as a separate business (other than paper or leather) from bolts of material, the manufacture of plastic articles including plastic clothing and plastic bags if no moulding or extrusion is undertaken; bag repairing; felt and under felt manufacturing; matressmaking; net and tackle-making; sail and tent making from bolts of material; canvas goods manufacturing; waterproofing of canvas and other textiles; cord rope and twine making, coconut fiber mat and matting manufacturing, etc., sisal products manufacturing not otherwise stated.  ', 'Manufacturing new products with recycling'),
(720, 7, 'Art needlework; bead necklace making, cap, hat, clothing and surgical dressing manufacturing if no spinning or weaving is undertaking, knitting works, dressmaking, tailoring; sewing cotton manufacturing; bias binding manufacturing; manufacturing-turing articles from fur; manufacture of water-proof clothing from bolts of woven fabrics; curtain manufacturing; interior (soft) decorating; cushion and eiderdown manufacturing; lamp shade and stand manufacturing as a separate business where the employer does not use any woodworking or other machinery. Note: Any water-proofing operation including the manufacture of water-proof canvas goods falls to be rated under subclass 0712. A retail milliner shop is rated under subclass 1520.  ', 'needle work, clothes, decor making operations'),
(801, 8, 'Saw milling as a separate business including woodworking operations.  ', 'Saw and Woodworking'),
(810, 8, 'The business of a builder\'s hardware merchant with wood-working machine operations, timber contractors; bark milling; beaver board manufacturing; billiard table manufacturing; boat, launch and yacht (fibre glass, wood and sail) building and repairing; box, trunk and packing case (wood) manufacturing; cabinet works; carpentry; cooperage and vat making; fire-wood, split pole and mine props manufacturing; furniture manufacturing; joinery (as a separate business); wooden floor block manufacturing; wood turning (as a separate business); wooden toy manufacturing; pulping of wood for the manufacture of hardboard, paper, cellulose, etc. Other woodworking operations not elsewhere rated.  ', 'Building and machine working operations'),
(811, 8, 'Basket manufacturing; blind manufacturing, brush and broom manufacturing; match manufacturing; picture frame manufacturing-turing; sports goods manufacturing; umbrella and sunshade manufacturing; straw envelope manufacturing; tobacco pipe manufacturing; cork, including crown cork manufacturing; manufacture of equipment for indoor games not elsewhere rated; woodwork manufacturing as a separate business; upholstery or spray painting, French polishing and/or lacquering of furniture other than metal furniture as a separate business.  ', 'Sport equipment and House hold items manufacturing'),
(900, 9, 'Printing and publishing; cardboard and/or strawboard box manufacturing; stationery manufacturing; paper bag and/or toilet paper manufacturing; all operations of a paper merchant who also undertakes the manufacture of stationery and/or cardboard or strawboard boxes; die-sinking and engraving; enduring of paper and board by means of gloss varnishing. Note: Where a printing firm also undertakes the business of a publisher, bookseller, stationer or stationery manufacturer, such operations are regarded as incidental to the business, of a printer.  ', 'Printing, publishing. Paper, Cardboard and stationery manufacturing'),
(910, 9, 'Paper, cardboard and/or strawboard manufacturing where no wood pulping is involved.  ', 'Paper, cardboard manufacturing where no wood pulping is involved  '),
(1000, 10, 'Explosives manufacturing as a separate business including the attachment of safety fuses to detonators. The business of fumigator, extermination of rodents, pests, growth by means of chemical process or the administration of poisons with no flying risks.  ', 'Explosives, Fumigators and poison chemicals'),
(1005, 10, 'Explosives, acid, dip, spray, insecticide and chemical manufacturing if all these operations are carried on by the same undertaking; fireworks manufacturing and display.  ', 'Fireworks, chemicals, explosives made by same company'),
(1020, 10, 'Manufacture of chrome salts, bone meal, fertilizer, distemper, crayon, chalk, paint, boiler compound, soldering fluid and flux disinfectant, insecticide, glue, ice and/or chemical manufacturing-turing not elsewhere stated manure milling and compost manufacturing; plastic products manufacturing not elsewhere rated; emery wheel manufacturing.  ', 'Industrial products manufacturing'),
(1021, 10, 'Gas manufacturing as a separate business, coke and/or charcoal manufacturing as a separate business.  ', 'Gas, Coke / Charcoal manufactoring as seperate business'),
(1025, 10, 'Candle and/or soap manufacturing; grease manufacturing as a separate business; cotton-seed oil manufacturing.  ', 'Candle, Soap, Grease, oil manufacturing'),
(1030, 10, 'Polish, perfume, beauty preparation, medicine (including manufacturing chemists), toilet requisites; dip and/or ink manufacturing; dry-cell battery manufacturing.  ', 'ink, medicine, perfume, dry-cell battery etc manufactoring'),
(1041, 10, 'Oil (mineral) and petrol importing and distribution not elsewhere stated. Oil (mineral) and petrol refining and/or blending, including distribution as well as mining and treatment of torbanite shale.  ', 'Distribution, mining and treatment of minirals'),
(1050, 10, 'Rubber stamp manufacturing; rubber and canvas shoe manufacturing; manufacture of mats, etc. from discarded tyres, etc., as a separate business; adhesive and insulation tape manufacturing.  ', 'Rubber related manufacturing.'),
(1052, 10, 'Vulcanizing including retreading as a separate business; the manufacture of rubber products including distribution of the manufactured products; the manufacturing of pneumatic rubber tyres.  ', 'Manufacturing and Distribution of rubber and vulcanizing products'),
(1100, 11, 'Tanning and/or curing of hides and skins as a separate business; fell stripping.  ', 'Tanning/Curring of hides and fell stripping'),
(1105, 11, 'Leather clothing, boot, shoe and/or slipper manufacturing; shoe repairing; manufacturing of fancy leather goods as a separate business; harness and or saddle making as a separate business; leather works not otherwise stated.  ', 'Leather Clothing/Shoes/Products manufacturing and repairs'),
(1200, 12, 'Glass and/or bottle manufacturing; incandescent lamp manufacturing.  ', 'Glass manufactoring'),
(1201, 12, 'Leaded lights manufacturing; glazing, beveling and/or silvering including the business of a glass merchant.  ', 'Glass merchant, Lights manufactoring'),
(1210, 12, 'Cement and lime manufacturing including kaolin works and incidental quarrying operations.  ', 'Cement, Lime, Kaolin, Quarrying operations'),
(1211, 12, 'Concrete products manufacturing as a separate business.  ', 'Concrete products manufacturing- separate business'),
(1220, 12, 'Brick, tile and/or pottery manufacturing including gypsum works.  ', 'Brick, tile, pottery manufacturing including gypsum'),
(1230, 12, 'Granite and/or marble products manufacturing including monumental works and sculpture as a separate business.  ', 'Granite, marble , monumental amd sculpture works'),
(1300, 13, 'Iron and steel production including processing and all quarrying and/or mining as well as other operations if incidental thereto.  ', 'Iron/steel mining/quarrying operations'),
(1301, 13, 'Foundry products manufacturing as a separate business; stove manufacturing.  ', 'Stove and Foundry manufacturing'),
(1331, 13, 'Iron button, buckle, hook, eye, hairpin and/or metal badges and brooch manufacturing; air-gun pellets manufacturing; leaden toy and novelty manufacturing; solder manufacturing; Venetian blind manufacturing and repairing; artificial limb manufacturing and repairing; manufacturing of vehicle and other number plates.  ', 'Iron accessories.Artificial limbs, numberplates, gun pellets, toys manufacturing'),
(1340, 13, 'Metal tube manufacturing; metal furniture, door and/or window manufacturing; sheet metal products manufacturing as a separate business; wire, wire spring, wire rope, wire goods, fencing and/or gate manufacturing; tin container manufacturing; lead pipe manufacturing; blacksmith as a separate business (including furriers); iron bedstead manufacturing, cutlery manufacturing including repairing if undertaken by the manufacturer; scale making and repairing; cycle frame manufacturing; electro-static powder spray paining; metal spraying; derusting of metals; manufacturing of gas producers, electric battery; accumulator and/or electrode manufacturing; building and/or repairing of ships (other than fiber glass, wooden or sailing ships) including repairs to ships whilst moored to the quay side or anchored in the harbour or roadstead or whilst undergoing trial runs; chain manufacturing as a separate business; aluminum products manufacturing and installation; welding as a separate business; galvanizing as a separate business; metal products manufacturing including the business of saw doctors; lighthouse and/or marine lighting engineering and metal or engineering works not otherwise classified but excluding structural steel erection or steel reinforcing operations rated under subclasses 0530 or 0532.  ', 'Metal, Iron related works and manufacturing'),
(1350, 13, 'Electric cable manufacturing; manufacture of safety razor blades.  ', 'Electric cables and safety razors manufacturing'),
(1360, 13, 'Motor cars assembly as a business including all operations in connection therewith.  ', 'motor car assembly and related operations'),
(1361, 13, 'Motor garaging, including servicing and/or repairing of motor vehicles; the business of the owner of a motor graveyard or scrap yard); the business of an automotive electrician as a separate business; petrol and oil filling station; locksmithing; aircraft repairing and/or servicing as a separate business; employment of parking attendants; the business of a dealer in new/second hand motor vehicles; motor vehicle hiring if repairs are undertaken. Note: The sale of motor spare parts and/or cars etc., as well as the supply of petrol, oil and/or air is incidental to the business of a motor garage owner whether such services are supplied on the garage premises or not. This rate also applies to a dealer in second-hand spare parts if the employer undertakes the dismantling of cars.  ', 'Motor services'),
(1363, 13, 'Wagon, coach, carriage and/or motor body building as a separate business; panel beating and spraying as a separate business; motor car radiator manufacturing and repairing as a separate business.  ', 'Panel beating and body and parts manufacturing '),
(1400, 14, 'Dealers in diamonds and precious stones, including jewelers, matchmaking and repairing; optical instruments making; including the business of an optician; surgical and scientific instrument dealing and/or assembling.  ', 'Dimond, gemstone dealing and related works'),
(1401, 14, 'Electroplating as a separate business.  ', 'Electroplating as a separate business.  '),
(1420, 14, 'Asbestos products manufacturing when not carried on as an operation incidental to asbestos mining. Bitumen products manufacturing.  ', 'Buten products, Asbestos manufacturing'),
(1511, 15, 'The business of wholesale or retail liquor dealer not otherwise stated; grocer (wholesale or retail); confectioner(who has no baking or sweet making operations); sandwich maker or supplier; market agent; the wholesale and/or retail business of butter or egg merchant, including egg circles; fish, poultry and/or game dealer; forage, produce or grain merchant; fruit merchant; the activities of agricultural co-operative societies nor elsewhere rated; greengrocer, or fruit and vegetable hawker; florist; seeds man, manure dealer; potato chip dealer including cooked meat shops, distribution of cold drinks as a separate business.  ', 'Liquor dealer, Grocer,Confectioner and Food dealers '),
(1520, 15, 'The business of wholesale and/or retail tailors, outfitters; drapers; furriers or milliners; including wholesale and/or retail boot and shoe shops.  ', 'Outfitters, Drapers, boot and shoe shops'),
(1532, 15, 'The business (wholesale and/or retail) of musical instruments, computers, household electrical appliances, video, TV and wireless dealer including installation, assembling and repairing thereof; erecting and repairing of electric clocks, armature winding as a separate business.  ', 'Repair, assembly of Musical instruments and Household electronics'),
(1540, 15, 'The business of- corundum merchant; curio, art, antique or carpet dealer; taxidermist; sports goods dealer; bottle and bag merchant; retail leather merchant; retail soft furnishing dealer; fabric dealer departmental chain stores; picture and frame dealer; retail shopkeeper not otherwise stated. agricultural or irrigation machinery or implement dealer; or retail/wholesale hardware merchant (including cutlery and tool stores as a separate business), or machinery importer and/or distributor, or engineering supply merchants who undertake no repairs, installation or erection; pedal cycle or sewing machine dealer including repairs and assembly; the business of furniture dealer (wholesale and/or retail) in which no woodworking machines are used and if no storage or removal of furniture etc., is undertaken.', 'Trade/Commerce. Art, Antique, Carpet, Taxidermist, Leather,Fabric etc dealer'),
(1542, 15, 'The business of-cement, lime or coal merchant, ship\'s chandler; wholesale/retain iron and steel merchant or scrap metal dealer or mining material merchant (where these activities involve dismantling or demolition, recovery from ships, from underwater or underground, etc., the risk may be specially rated. agricultural or irrigation machinery or implement dealer or hardware merchant (including cutlery and tool stores as a separate business), or machinery importer and/or distributor, or engineering supply merchants who undertake installation and/or erection (including repairs); paint, glue, plumbers accessories, wire, gate or fencing material merchant, gunsmith including the sale of arms and ammunition as a separate business. builder\'s supply merchant with no woodworking machine operations.', 'Building supply and related products'),
(1550, 15, 'The business of general retail dealer; chemist or herbalist; photographer; photographic appliance dealer; tobacconist; bookseller and/or stationer; typewriter agent including office equipment shops; commercial traveler and/or manufacturer\'s representative; wholesale leather merchant; wholesale soft furnishing merchant; wholesale merchant (not otherwise stated); hide, skin and wool merchant or broker, paper merchant not undertaking any manufacturing operations; tea, coffee or sugar merchant; with no roasting operations; feather dealer or maker of feather dusters; rubber merchant; tyre or motor accessories dealer.  ', 'General Retailers'),
(1600, 16, 'The business of banking, insurance, financial investment or trust company; funeral insurance society; stock and share broker; estate and financial agent; building society; control boards medical aid funds; business of assessor (loss) appraiser.  ', 'Banking and Insurance'),
(1701, 17, 'Air transportation; aerial surveying and photography as a separate business.  ', 'Air transportation; aerial surveying/ photography '),
(1710, 17, 'Operation of railways; the business of taxicab; motorbus; livery stable proprietor; motor driving schools; railway motor transport agencies; operating of aerial cable ways.  ', 'Railway and Road public transportation'),
(1711, 17, 'The business of cartage, transport or sanitary service contractor; strewing of fertiliser as a business.  ', 'Cartage, Transport,Sanitary, Fertiliser related business'),
(1715, 17, 'All TRANSNET operations.  ', 'Transnet operations'),
(1720, 17, 'The business of tourist, travel, shipping forwarding, landing and/or stevedoring agent; and tally clerks; but excluding stevedoring operations, loading or discharging railway trucks or vessels, to which the rate of subclass 1722 applies; motor vehicle hiring if no repairs are undertaken.  ', 'Tourists, Travil, Car hire, loading railway vessels'),
(1722, 17, 'The business of boat owner plying for hire; ferry owner; ships sailors; ship owner; pleasure boats; stevedoring operations, including the loading or discharging of railway trucks or vessels: aerial crop spraying.  ', 'Boat, Ferry, Ships, Sailors Aerial Crop Spraying'),
(1723, 17, 'Bonded warehouses, including clerical staff and store men at the warehouse and employees engaged in loading and unloading; the business of fruit stowage inspector (on ships); ships painter or cleaner.  ', 'Warehouse staff, Ships painter/Cleaner'),
(1730, 17, 'Operating and maintaining of broadcasting stations, excluding erection work.  ', 'Broadcast Stations, excl. erection work '),
(1745, 17, 'Telecommunication services.  ', 'Telecommunication services'),
(1750, 17, 'Postal services.  ', 'Postal services'),
(1800, 18, 'The exercise and performance of the powers and duties of a city council; municipal council; borough council; town council; village management board; local board; health committees, property, township and/or estate managing in connection with which the functions of a local authority are carried out. The exercise and performance of the powers and duties of a divisional council, including quarrying.  ', 'Councils, Boards'),
(1820, 18, 'Operating of power stations for the generation and supply of electricity (as a separate business).  ', 'Power Stations'),
(1900, 19, 'The business of conducting a boarding-house; licensed hotel, including off-sales on the same premises; billiard saloon, cafe, including catering; restaurant; tea-room; bar; residential; social or night club not otherwise stated: garrison institute.  ', 'Boarding-house,Hotel, Saloon, Cafe, Resturant, Bar, Residential, Clubs'),
(1910, 19, 'The business of cleaning and dyeing; dry-cleaning, including receiving depots; the business of laundering.  ', 'Laundry and Dry-cleaning'),
(1920, 19, 'The business of hairdressers; barbers; beauty shop proprietor.  ', 'Hairdressers, Barbers Beuty parlors'),
(1940, 19, 'The business of funeral undertaking and directing; excluding coffin-manufacturing and monumental masonry; operating of crematoria, cemetery boards.  ', 'Funeral undertaker and related business'),
(1960, 19, 'Property managing, including service flats, township and/or estate managing in connection with which the functions of a local authority are not carried out and no agricultural operations are carried on (any agricultural operations carried on are subject to the rates for Class I), the business of advertising agent (including bill posting) and/or contractor; commercial artist and/or designer; enquiry and/or collecting agent; labour recruiting agent; messenger agency.  ', 'Property Managing, Labour recruiting agents, messenger agency'),
(1970, 19, 'Security Services.  ', 'Security Services.  '),
(1975, 19, 'Correctional Services.  ', 'Correctional Services.  '),
(2000, 20, 'Operation of dance halls; entertainment exhibition, including theatres and bioscopes, music halls, skating rinks, games of skill, wonderland arcades, film production, distribution, exhibition or renovation, the business of physical culture coach.  ', 'Dance halls, Theatres, Entertainment Halls, exhibitions'),
(2010, 20, 'The business of conducting automobile clubs; sports clubs not otherwise stated; boating, rowing or yacht clubs with no sea-going or woodworking risks; boxing or wrestling promoter, bookmaker or turf accountant.  ', 'Sport, Automobile, Boating, Rowing and Yacht Clubs. -non sea'),
(2011, 20, 'The business of amusement park or circus owner; pleasure-ground owner; stock-car racing.  ', 'Amusement park, Circus'),
(2020, 20, 'The business of horse trainer or dealer; racing stable proprietor; the business of conducting racing; turf or jockey club.  ', 'Horse trainer/dealer. Jocky,Racing Clubs and related activities'),
(2100, 21, 'Dentistry; the business of medical practitioner, masseur or radiologist, including nursing and ambulance associations; chiropodists; the business of conducting electro medical institutes.  ', 'Dentistry, All Medical Practitioners, and related assosiations etc.'),
(2110, 21, 'The business of running hospitals; maternity or nursing homes; medical research laboratories; asylums, sanatoria; clinics; malaria health committees; the business of veterinary surgeon; dog breeder; bird fancier; domestic pet dealer; the business of conducting animal hospitals and homes.  ', 'Hospitals, Nursing homes, medical research laboratories, clinics etc'),
(2200, 22, 'The business of analyst; assayer; analytical chemist; architect; surveyor; geologist; consulting engineer; messenger of the Court; the business of conducting an observatory.  ', 'Analysts, chemists, architects surveyor. - Proffessional Services'),
(2210, 22, 'The business of accountant; auditor; advocate; attorney; conveyancer; notary; law agent; quantity surveyor; editing and journalistic work provided no printing and/or publishing, other than distribution through the post, is undertaken; press agency; typing and roneo work as a separate business; any other profession not otherwise stated.  ', 'Auditor, Advocate, Attorney, law agents, press agency etc. '),
(2300, 23, 'Educational services including universities, colleges; trade schools; training ships; art galleries; music schools; dancing academies or schools; nursery schools; charm schools, libraries; museums; botanical gardens where these are not conducted in conjunction with any other undertaking or business.  ', 'Educational institutions.'),
(2320, 23, 'Services in connection with national parks, upkeep and maintenance of zoological gardens.  ', 'National Parks'),
(2410, 24, 'Activities of trade unions; industrial councils; trade or professional associations; chambers of commerce; unemployment benefit funds. Activities of charitable institutions not falling within any other subclasses, including child welfare societies; orphanages; religious or political organizations; societies for the prevention of cruelty to animals; free-masons; boy scout clubs; anti-waste organizations; mission stations. Red Cross Societies; etc., not otherwise stated.  ', 'Child welfare, orphanages, Religious or political organisations. Masonary, scout clubs etc');



CREATE TABLE `Students` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `Surname` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `DateOfBirth` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `SubjectsEnrolled` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `Employer`
  ADD PRIMARY KEY (`Id`);

ALTER TABLE `EmployerSubs`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `EmployerId` (`EmployerId`);

--
ALTER TABLE `Students`
  ADD PRIMARY KEY (`Id`);
--
ALTER TABLE `EmployerSubs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2411;

ALTER TABLE `Students`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `EmployerSubs`
  ADD CONSTRAINT `EmployerSubs_ibfk_1` FOREIGN KEY (`EmployerId`) REFERENCES `Employer` (`Id`);
COMMIT;

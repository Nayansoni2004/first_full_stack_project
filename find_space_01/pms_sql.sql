create database pmsdb;

use pmsdb;

-- table 1 users order-4
create table users
(
    user_id int auto_increment primary key,
    name char(50) not null,
    email varchar(255) not null unique,
    password varchar(500) not null,
    dob date,
    gender char(1),
    address varchar(400),
    city_id int not null,
    contact char(10) not null unique,
    logo char(255),
    status_id int not null default 2,
    activation_code char(100),
    constraint fk_users_cities foreign key (city_id) references cities (city_id),
    constraint fk_users_status foreign key (status_id) references status (status_id)
);

-- table 2 status  order-1
create table status
(
    status_id int auto_increment primary key,
    type char(20) not null
);

-- table 3 states order-2
create table states
(
    state_id int auto_increment primary key,
    name char(35) not null
);

INSERT INTO states (name) VALUES
('Andhra Pradesh'),
('Arunachal Pradesh'),
('Assam'),
('Bihar'),
('Chhattisgarh'),
('Goa'),
('Gujarat'),
('Haryana'),
('Himachal Pradesh'),
('Jharkhand'),
('Karnataka'),
('Kerala'),
('Madhya Pradesh'),
('Maharashtra'),
('Manipur'),
('Meghalaya'),
('Mizoram'),
('Nagaland'),
('Odisha'),
('Punjab'),
('Rajasthan'),
('Sikkim'),
('Tamil Nadu'),
('Telangana'),
('Tripura'),
('Uttar Pradesh'),
('Uttarakhand'),
('West Bengal');

-- table 4 cities order-3
create table cities 
(
    city_id int auto_increment primary key,
    name char(35) not null,
    state_id int not null,
    constraint fk_cities_states foreign key (state_id) references states (state_id)
);

INSERT INTO cities (name, state_id) VALUES
-- Andhra Pradesh (State ID: 1)
('Visakhapatnam', 1), ('Vijayawada', 1), ('Guntur', 1), ('Nellore', 1), ('Kurnool', 1), 
('Rajahmundry', 1), ('Kadapa', 1), ('Tirupati', 1), ('Anantapur', 1), ('Eluru', 1),

-- Arunachal Pradesh (State ID: 2)
('Itanagar', 2), ('Tawang', 2), ('Ziro', 2), ('Bomdila', 2), ('Roing', 2), 
('Tezu', 2), ('Pasighat', 2), ('Seppa', 2), ('Daporijo', 2), ('Aalo', 2),

-- Assam (State ID: 3)
('Guwahati', 3), ('Dibrugarh', 3), ('Silchar', 3), ('Jorhat', 3), ('Nagaon', 3), 
('Tezpur', 3), ('Tinsukia', 3), ('Bongaigaon', 3), ('Karimganj', 3), ('Sivasagar', 3),

-- Bihar (State ID: 4)
('Patna', 4), ('Gaya', 4), ('Bhagalpur', 4), ('Muzaffarpur', 4), ('Purnia', 4), 
('Darbhanga', 4), ('Begusarai', 4), ('Arrah', 4), ('Katihar', 4), ('Munger', 4),

-- Chhattisgarh (State ID: 5)
('Raipur', 5), ('Bhilai', 5), ('Bilaspur', 5), ('Korba', 5), ('Durg', 5), 
('Rajnandgaon', 5), ('Jagdalpur', 5), ('Raigarh', 5), ('Ambikapur', 5), ('Dhamtari', 5),

-- Goa (State ID: 6)
('Panaji', 6), ('Vasco da Gama', 6), ('Margao', 6), ('Mapusa', 6), ('Ponda', 6), 
('Bicholim', 6), ('Curchorem', 6), ('Sanguem', 6), ('Canacona', 6), ('Valpoi', 6),

-- Gujarat (State ID: 7)
('Ahmedabad', 7), ('Surat', 7), ('Vadodara', 7), ('Rajkot', 7), ('Bhavnagar', 7), 
('Jamnagar', 7), ('Gandhinagar', 7), ('Junagadh', 7), ('Anand', 7), ('Mehsana', 7),

-- Haryana (State ID: 8)
('Chandigarh', 8), ('Faridabad', 8), ('Gurgaon', 8), ('Ambala', 8), ('Panipat', 8), 
('Karnal', 8), ('Yamunanagar', 8), ('Rohtak', 8), ('Hisar', 8), ('Bhiwani', 8),

-- Himachal Pradesh (State ID: 9)
('Shimla', 9), ('Manali', 9), ('Dharamshala', 9), ('Mandi', 9), ('Solan', 9), 
('Chamba', 9), ('Kullu', 9), ('Bilaspur', 9), ('Una', 9), ('Hamirpur', 9),

-- Jharkhand (State ID: 10)
('Ranchi', 10), ('Jamshedpur', 10), ('Dhanbad', 10), ('Bokaro', 10), ('Hazaribagh', 10), 
('Deoghar', 10), ('Giridih', 10), ('Ramgarh', 10), ('Medininagar', 10), ('Chaibasa', 10),

-- Karnataka (State ID: 11)
('Bangalore', 11), ('Mysore', 11), ('Hubli', 11), ('Mangalore', 11), ('Belgaum', 11), 
('Davanagere', 11), ('Bellary', 11), ('Shimoga', 11), ('Tumkur', 11), ('Bidar', 11),

-- Kerala (State ID: 12)
('Thiruvananthapuram', 12), ('Kochi', 12), ('Kozhikode', 12), ('Thrissur', 12), ('Kollam', 12), 
('Palakkad', 12), ('Alappuzha', 12), ('Kannur', 12), ('Kottayam', 12), ('Malappuram', 12),

-- Madhya Pradesh (State ID: 13)
('Bhopal', 13), ('Indore', 13), ('Gwalior', 13), ('Jabalpur', 13), ('Ujjain', 13), 
('Sagar', 13), ('Satna', 13), ('Ratlam', 13), ('Rewa', 13), ('Chhindwara', 13),

-- Maharashtra (State ID: 14)
('Mumbai', 14), ('Pune', 14), ('Nagpur', 14), ('Thane', 14), ('Nashik', 14), 
('Aurangabad', 14), ('Solapur', 14), ('Amravati', 14), ('Kolhapur', 14), ('Latur', 14),

-- Manipur (State ID: 15)
('Imphal', 15), ('Thoubal', 15), ('Bishnupur', 15), ('Churachandpur', 15), ('Senapati', 15), 
('Ukhrul', 15), ('Tamenglong', 15), ('Kakching', 15), ('Noney', 15), ('Jiribam', 15),

-- Meghalaya (State ID: 16)
('Shillong', 16), ('Tura', 16), ('Nongstoin', 16), ('Jowai', 16), ('Baghmara', 16), 
('Williamnagar', 16), ('Resubelpara', 16), ('Khliehriat', 16), ('Mairang', 16), ('Ampati', 16),

-- Mizoram (State ID: 17)
('Aizawl', 17), ('Lunglei', 17), ('Saiha', 17), ('Champhai', 17), ('Serchhip', 17), 
('Kolasib', 17), ('Lawngtlai', 17), ('Mamit', 17), ('Bairabi', 17), ('Saitual', 17),

-- Nagaland (State ID: 18)
('Kohima', 18), ('Dimapur', 18), ('Mokokchung', 18), ('Tuensang', 18), ('Wokha', 18), 
('Zunheboto', 18), ('Mon', 18), ('Phek', 18), ('Longleng', 18), ('Kiphire', 18),

-- Odisha (State ID: 19)
('Bhubaneswar', 19), ('Cuttack', 19), ('Rourkela', 19), ('Brahmapur', 19), ('Sambalpur', 19), 
('Puri', 19), ('Balasore', 19), ('Baripada', 19), ('Jharsuguda', 19), ('Jeypore', 19),

-- Punjab (State ID: 20)
('Ludhiana', 20), ('Amritsar', 20), ('Jalandhar', 20), ('Patiala', 20), ('Bathinda', 20), 
('Pathankot', 20), ('Mohali', 20), ('Hoshiarpur', 20), ('Moga', 20), ('Kapurthala', 20),

-- Rajasthan (State ID: 21)
('Jaipur', 21), ('Jodhpur', 21), ('Udaipur', 21), ('Kota', 21), ('Ajmer', 21), 
('Bikaner', 21), ('Alwar', 21), ('Bharatpur', 21), ('Sikar', 21), ('Pali', 21),

-- Sikkim (State ID: 22)
('Gangtok', 22), ('Geyzing', 22), ('Mangan', 22), ('Namchi', 22), ('Rangpo', 22), 
('Ravangla', 22), ('Singtam', 22), ('Jorethang', 22), ('Pakyong', 22), ('Soreng', 22),

-- Tamil Nadu (State ID: 23)
('Chennai', 23), ('Coimbatore', 23), ('Madurai', 23), ('Tiruchirappalli', 23), ('Salem', 23), 
('Erode', 23), ('Tirunelveli', 23), ('Thoothukudi', 23), ('Vellore', 23), ('Dindigul', 23),

-- Telangana (State ID: 24)
('Hyderabad', 24), ('Warangal', 24), ('Nizamabad', 24), ('Karimnagar', 24), ('Khammam', 24), 
('Ramagundam', 24), ('Mahbubnagar', 24), ('Siddipet', 24), ('Miryalaguda', 24), ('Nalgonda', 24),

-- Tripura (State ID: 25)
('Agartala', 25), ('Dharmanagar', 25), ('Udaipur', 25), ('Kailashahar', 25), ('Belonia', 25), 
('Khowai', 25), ('Ambassa', 25), ('Sonamura', 25), ('Bishalgarh', 25), ('Sabroom', 25),

-- Uttar Pradesh (State ID: 26)
('Lucknow', 26), ('Kanpur', 26), ('Varanasi', 26), ('Agra', 26), ('Meerut', 26), 
('Allahabad', 26), ('Bareilly', 26), ('Gorakhpur', 26), ('Aligarh', 26), ('Jhansi', 26),

-- Uttarakhand (State ID: 27)
('Dehradun', 27), ('Haridwar', 27), ('Rishikesh', 27), ('Roorkee', 27), ('Haldwani', 27), 
('Nainital', 27), ('Kashipur', 27), ('Rudrapur', 27), ('Pithoragarh', 27), ('Chamoli', 27),

-- West Bengal (State ID: 28)
('Kolkata', 28), ('Howrah', 28), ('Durgapur', 28), ('Asansol', 28), ('Siliguri', 28), 
('Kharagpur', 28), ('Bardhaman', 28), ('Malda', 28), ('Jalpaiguri', 28), ('Haldia', 28);


-- table 5 properties order-6
create table properties
(
    property_id int auto_increment primary key,
    title char(50) not null,
    address varchar(400) not null,
    city_id int not null, 
    property_type_id int not null,
    user_id int not null,
    description varchar(1000) not null,
    status_id int not null,
    floors int not null,
    bhk int not null,
    constraint fk_properties_cities foreign key (city_id) references cities (city_id),
    constraint fk_properties_ptypes foreign key (property_type_id) references property_types (property_type_id),
    constraint fk_properties_users foreign key (user_id) references users (user_id),
    constraint fk_properties_status foreign key (status_id) references status (status_id)
);

-- table 6 area_type: order-7
create table area_type
(
    area_type_id int auto_increment primary key,
    type char(50) not null
);

-- table 7 property_area: order-8
create table property_area
(
    property_area_id int auto_increment primary key,
    property_id int not null,
    area_type_id int not null,
    area int not null,
    constraint fk_parea_properties foreign key (property_id) references properties (property_id),
    constraint fk_parea_atype foreign key (area_type_id) references area_type (area_type_id)
);

-- table 8 property_media: order-10
create table property_media
(
    property_media_id int auto_increment primary key,
    property_id int not null,
    media_path varchar(255) not null,
    view_type_id int not null,
    media_type tinyint(1) not null,
    constraint fk_pmedia_properties foreign key (property_id) references properties (property_id),
    constraint fk_pmedia_vtypes foreign key (view_type_id) references view_types (view_type_id)
);

-- table 9 view_types: order-9
create table view_types
(
    view_type_id int auto_increment primary key,
    view_type varchar(20) not null
);

-- table 10 property_types: order-5
create table property_types
(
    property_type_id int auto_increment primary key,
    type char(50) not null
);

-- table 11 property_features: order-12
create table property_features 
(
    property_feature_id int auto_increment primary key,
    property_id int not null,
    feature_id int not null,
    description char(255) not null,
    constraint fk_pfeatures_properties foreign key (property_id) references properties (property_id),
    constraint fk_pfeatures_features foreign key (feature_id) references features (feature_id)
);

-- table 12 features: order-11
create table features
(
    feature_id int auto_increment primary key,
    title char(35) not null
);

-- table 13 property_actions: order-13
create table property_actions
(
    property_action_id int auto_increment primary key,
    property_id int not null,
    action_date date not null,
    action_type tinyint(1) not null,
    amount int not null,
    initial_payment int,
    status_id int not null default 1,
    user_id int,
    constraint fk_pactions_properties foreign key(property_id) references properties (property_id),
    constraint fk_pactions_status foreign key (status_id) references status (status_id),
    constraint fk_pactions_users foreign key (user_id) references users (user_id)
);

alter table property_actions modify column user_id int not null;

-- table 14 user_types: order-14
create table user_types
(
    user_type_id int auto_increment primary key,
    type varchar(50) not null unique
);

-- table 15 user_roles: order-15
create table user_roles
(
    user_role_id int auto_increment primary key,
    user_id int not null,
    user_type_id int not null,
    constraint fk_uroles_users foreign key (user_id) references users (user_id),
    constraint fk_uroles_utypes foreign key (user_type_id) references user_types (user_type_id)
);
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ done ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
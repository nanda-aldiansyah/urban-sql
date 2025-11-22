create table users (
    id_users serial primary key,
    name text not null,
    email text not null unique,
    phone text,
    password_hash text not null
);

create table sos_request (
    id_sos serial primary key,
    id_users integer not null references users(id_users),
    sos_type text not null,
    description text,
    created_at timestamp default now(),
    status text default 'pending'
);

create table public_reports (
    id_report serial primary key,
    id_users integer not null references users(id_users),
    report_type text not null,
    description text,
    location_text text not null,
    latitude double precision,
    longitude double precision,
    photo_url text,
    created_at timestamp default now(),
    status text default 'pending'
);

create table health_regist (
    id_reg serial primary key,
    id_users integer not null references users(id_users),
    facility_name text not null,
    service_type text not null,
    created_at timestamp default now(),
    status text default 'pending'
);

create table routes (
    id_route serial primary key,
    id_users integer not null references users(id_users),
    origin text not null,
    destination text not null,
    transportation_type text not null
);

create table community (
    id_community serial primary key,
    name_community varchar(100) not null,
    description text,
    created_by integer not null references users(id_users),
    created_at timestamp default now()
);

create table community_post (
    id_post serial primary key,
    id_community integer not null references community(id_community),
    id_users integer not null references users(id_users),
    content text not null,
    photo_url text,
    created_at timestamp default now()
);

create table community_comment (
    id_comment serial primary key,
    id_post integer not null references community_post(id_post),
    id_users integer not null references users(id_users),
    comment_text text not null,
    created_at timestamp default now()
);

create table community_member (
    id_member serial primary key,
    id_community integer not null references community(id_community),
    id_users integer not null references users(id_users),
    joined_at timestamp default now()
);

create table places (
    id_place serial primary key,
    name text not null,
    location_text text,
    price_info text,
    created_at timestamp default now()
);

create table tickets (
    id_ticket serial primary key,
    id_users integer not null references users(id_users),
    id_place integer not null references places(id_place),
    visit_date date not null,
    quantity integer not null,
    total_price integer,
    payment_status text default 'unpaid',
    created_at timestamp default now()
);

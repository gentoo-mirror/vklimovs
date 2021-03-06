# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

WEBAPP_MANUAL_SLOT="yes"

inherit go-module systemd webapp

DESCRIPTION="The Single Sign-On Multi-Factor portal for web apps"
HOMEPAGE="https://www.authelia.com/"

EGO_SUM=(
		"aletheia.icu/broccoli/fs v0.0.0-20200420200651-c5ac961a357a"
		"aletheia.icu/broccoli/fs v0.0.0-20200420200651-c5ac961a357a/go.mod"
		"cloud.google.com/go v0.26.0/go.mod"
		"cloud.google.com/go v0.34.0/go.mod"
		"cloud.google.com/go v0.38.0/go.mod"
		"cloud.google.com/go v0.41.0"
		"cloud.google.com/go v0.41.0/go.mod"
		"cloud.google.com/go v0.44.1/go.mod"
		"cloud.google.com/go v0.44.2/go.mod"
		"cloud.google.com/go v0.45.1/go.mod"
		"cloud.google.com/go v0.46.3/go.mod"
		"cloud.google.com/go/bigquery v1.0.1/go.mod"
		"cloud.google.com/go/datastore v1.0.0/go.mod"
		"cloud.google.com/go/firestore v1.1.0/go.mod"
		"cloud.google.com/go/pubsub v1.0.1/go.mod"
		"cloud.google.com/go/storage v1.0.0/go.mod"
		"dmitri.shuralyov.com/gpu/mtl v0.0.0-20190408044501-666a987793e9/go.mod"
		"github.com/Azure/go-ntlmssp v0.0.0-20200615164410-66371956d46c"
		"github.com/Azure/go-ntlmssp v0.0.0-20200615164410-66371956d46c/go.mod"
		"github.com/BurntSushi/toml v0.3.1"
		"github.com/BurntSushi/toml v0.3.1/go.mod"
		"github.com/BurntSushi/xgb v0.0.0-20160522181843-27f122750802"
		"github.com/BurntSushi/xgb v0.0.0-20160522181843-27f122750802/go.mod"
		"github.com/BurntSushi/xgbutil v0.0.0-20160919175755-f7c97cef3b4e"
		"github.com/BurntSushi/xgbutil v0.0.0-20160919175755-f7c97cef3b4e/go.mod"
		"github.com/DATA-DOG/go-sqlmock v1.4.1"
		"github.com/DATA-DOG/go-sqlmock v1.4.1/go.mod"
		"github.com/Gurpartap/logrus-stack v0.0.0-20170710170904-89c00d8a28f4"
		"github.com/Gurpartap/logrus-stack v0.0.0-20170710170904-89c00d8a28f4/go.mod"
		"github.com/OneOfOne/xxhash v1.2.2"
		"github.com/OneOfOne/xxhash v1.2.2/go.mod"
		"github.com/Workiva/go-datastructures v1.0.52"
		"github.com/Workiva/go-datastructures v1.0.52/go.mod"
		"github.com/alecthomas/template v0.0.0-20160405071501-a0175ee3bccc/go.mod"
		"github.com/alecthomas/units v0.0.0-20151022065526-2efee857e7cf/go.mod"
		"github.com/andybalholm/brotli v1.0.0"
		"github.com/andybalholm/brotli v1.0.0/go.mod"
		"github.com/armon/circbuf v0.0.0-20150827004946-bbbad097214e/go.mod"
		"github.com/armon/consul-api v0.0.0-20180202201655-eb2c6b5be1b6/go.mod"
		"github.com/armon/go-metrics v0.0.0-20180917152333-f0300d1749da/go.mod"
		"github.com/armon/go-radix v0.0.0-20180808171621-7fddfc383310/go.mod"
		"github.com/armon/go-socks5 v0.0.0-20160902184237-e75332964ef5"
		"github.com/armon/go-socks5 v0.0.0-20160902184237-e75332964ef5/go.mod"
		"github.com/asaskevich/govalidator v0.0.0-20190424111038-f61b66f89f4a"
		"github.com/asaskevich/govalidator v0.0.0-20190424111038-f61b66f89f4a/go.mod"
		"github.com/authelia/session/v2 v2.3.0"
		"github.com/authelia/session/v2 v2.3.0/go.mod"
		"github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973/go.mod"
		"github.com/beorn7/perks v1.0.0/go.mod"
		"github.com/bgentry/speakeasy v0.1.0/go.mod"
		"github.com/bketelsen/crypt v0.0.3-0.20200106085610-5cbc8cc4026c/go.mod"
		"github.com/blang/semver v3.5.1+incompatible"
		"github.com/blang/semver v3.5.1+incompatible/go.mod"
		"github.com/boombuler/barcode v1.0.1-0.20190219062509-6c824513bacc"
		"github.com/boombuler/barcode v1.0.1-0.20190219062509-6c824513bacc/go.mod"
		"github.com/bradfitz/gomemcache v0.0.0-20190913173617-a41fca850d0b/go.mod"
		"github.com/cespare/xxhash v1.1.0"
		"github.com/cespare/xxhash v1.1.0/go.mod"
		"github.com/cespare/xxhash/v2 v2.1.1"
		"github.com/cespare/xxhash/v2 v2.1.1/go.mod"
		"github.com/client9/misspell v0.3.4/go.mod"
		"github.com/cockroachdb/apd v1.1.0"
		"github.com/cockroachdb/apd v1.1.0/go.mod"
		"github.com/coreos/bbolt v1.3.2/go.mod"
		"github.com/coreos/etcd v3.3.10+incompatible/go.mod"
		"github.com/coreos/etcd v3.3.13+incompatible/go.mod"
		"github.com/coreos/go-semver v0.2.0/go.mod"
		"github.com/coreos/go-semver v0.3.0/go.mod"
		"github.com/coreos/go-systemd v0.0.0-20190321100706-95778dfbb74e/go.mod"
		"github.com/coreos/go-systemd v0.0.0-20190719114852-fd7a80b32e1f/go.mod"
		"github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f/go.mod"
		"github.com/cpuguy83/go-md2man/v2 v2.0.0/go.mod"
		"github.com/creack/pty v1.1.7/go.mod"
		"github.com/davecgh/go-spew v1.1.0/go.mod"
		"github.com/davecgh/go-spew v1.1.1"
		"github.com/davecgh/go-spew v1.1.1/go.mod"
		"github.com/deckarep/golang-set v1.7.1"
		"github.com/deckarep/golang-set v1.7.1/go.mod"
		"github.com/dgrijalva/jwt-go v3.2.0+incompatible"
		"github.com/dgrijalva/jwt-go v3.2.0+incompatible/go.mod"
		"github.com/dgryski/go-rendezvous v0.0.0-20200823014737-9f7001d12a5f"
		"github.com/dgryski/go-rendezvous v0.0.0-20200823014737-9f7001d12a5f/go.mod"
		"github.com/dgryski/go-sip13 v0.0.0-20181026042036-e10d5fee7954/go.mod"
		"github.com/duosecurity/duo_api_golang v0.0.0-20190308151101-6c680f768e74"
		"github.com/duosecurity/duo_api_golang v0.0.0-20190308151101-6c680f768e74/go.mod"
		"github.com/facebookgo/stack v0.0.0-20160209184415-751773369052"
		"github.com/facebookgo/stack v0.0.0-20160209184415-751773369052/go.mod"
		"github.com/fasthttp/router v1.2.4"
		"github.com/fasthttp/router v1.2.4/go.mod"
		"github.com/fatih/color v1.7.0/go.mod"
		"github.com/fsnotify/fsnotify v1.4.7"
		"github.com/fsnotify/fsnotify v1.4.7/go.mod"
		"github.com/fsnotify/fsnotify v1.4.9"
		"github.com/fsnotify/fsnotify v1.4.9/go.mod"
		"github.com/ghodss/yaml v1.0.0/go.mod"
		"github.com/go-asn1-ber/asn1-ber v1.5.1"
		"github.com/go-asn1-ber/asn1-ber v1.5.1/go.mod"
		"github.com/go-gl/glfw v0.0.0-20190409004039-e6da0acd62b1/go.mod"
		"github.com/go-kit/kit v0.8.0/go.mod"
		"github.com/go-ldap/ldap/v3 v3.2.3"
		"github.com/go-ldap/ldap/v3 v3.2.3/go.mod"
		"github.com/go-logfmt/logfmt v0.3.0/go.mod"
		"github.com/go-logfmt/logfmt v0.4.0/go.mod"
		"github.com/go-redis/redis/v8 v8.4.2"
		"github.com/go-redis/redis/v8 v8.4.2/go.mod"
		"github.com/go-sql-driver/mysql v1.5.0"
		"github.com/go-sql-driver/mysql v1.5.0/go.mod"
		"github.com/go-stack/stack v1.8.0"
		"github.com/go-stack/stack v1.8.0/go.mod"
		"github.com/gofrs/uuid v3.2.0+incompatible"
		"github.com/gofrs/uuid v3.2.0+incompatible/go.mod"
		"github.com/gogo/protobuf v1.1.1/go.mod"
		"github.com/gogo/protobuf v1.2.1/go.mod"
		"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b"
		"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b/go.mod"
		"github.com/golang/groupcache v0.0.0-20190129154638-5b532d6fd5ef/go.mod"
		"github.com/golang/mock v1.1.1/go.mod"
		"github.com/golang/mock v1.2.0/go.mod"
		"github.com/golang/mock v1.3.1"
		"github.com/golang/mock v1.3.1/go.mod"
		"github.com/golang/mock v1.4.4"
		"github.com/golang/mock v1.4.4/go.mod"
		"github.com/golang/protobuf v1.2.0/go.mod"
		"github.com/golang/protobuf v1.3.1"
		"github.com/golang/protobuf v1.3.1/go.mod"
		"github.com/golang/protobuf v1.3.2"
		"github.com/golang/protobuf v1.3.2/go.mod"
		"github.com/golang/protobuf v1.4.0-rc.1/go.mod"
		"github.com/golang/protobuf v1.4.0-rc.1.0.20200221234624-67d41d38c208/go.mod"
		"github.com/golang/protobuf v1.4.0-rc.2/go.mod"
		"github.com/golang/protobuf v1.4.0-rc.4.0.20200313231945-b860323f09d0/go.mod"
		"github.com/golang/protobuf v1.4.0/go.mod"
		"github.com/golang/protobuf v1.4.2"
		"github.com/golang/protobuf v1.4.2/go.mod"
		"github.com/google/btree v0.0.0-20180813153112-4030bb1f1f0c/go.mod"
		"github.com/google/btree v1.0.0/go.mod"
		"github.com/google/go-cmp v0.2.0/go.mod"
		"github.com/google/go-cmp v0.3.0"
		"github.com/google/go-cmp v0.3.0/go.mod"
		"github.com/google/go-cmp v0.3.1/go.mod"
		"github.com/google/go-cmp v0.4.0"
		"github.com/google/go-cmp v0.4.0/go.mod"
		"github.com/google/go-cmp v0.5.3"
		"github.com/google/go-cmp v0.5.3/go.mod"
		"github.com/google/go-github/v27 v27.0.4/go.mod"
		"github.com/google/go-querystring v1.0.0/go.mod"
		"github.com/google/martian v2.1.0+incompatible"
		"github.com/google/martian v2.1.0+incompatible/go.mod"
		"github.com/google/pprof v0.0.0-20181206194817-3ea8567a2e57/go.mod"
		"github.com/google/pprof v0.0.0-20190515194954-54271f7e092f/go.mod"
		"github.com/google/renameio v0.1.0/go.mod"
		"github.com/googleapis/gax-go/v2 v2.0.4/go.mod"
		"github.com/googleapis/gax-go/v2 v2.0.5"
		"github.com/googleapis/gax-go/v2 v2.0.5/go.mod"
		"github.com/gopherjs/gopherjs v0.0.0-20181017120253-0766667cb4d1"
		"github.com/gopherjs/gopherjs v0.0.0-20181017120253-0766667cb4d1/go.mod"
		"github.com/gorilla/websocket v1.4.0/go.mod"
		"github.com/gorilla/websocket v1.4.2/go.mod"
		"github.com/grpc-ecosystem/go-grpc-middleware v1.0.0/go.mod"
		"github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0/go.mod"
		"github.com/grpc-ecosystem/grpc-gateway v1.9.0/go.mod"
		"github.com/hashicorp/consul/api v1.1.0/go.mod"
		"github.com/hashicorp/consul/sdk v0.1.1/go.mod"
		"github.com/hashicorp/errwrap v1.0.0/go.mod"
		"github.com/hashicorp/go-cleanhttp v0.5.1/go.mod"
		"github.com/hashicorp/go-immutable-radix v1.0.0/go.mod"
		"github.com/hashicorp/go-msgpack v0.5.3/go.mod"
		"github.com/hashicorp/go-multierror v1.0.0/go.mod"
		"github.com/hashicorp/go-rootcerts v1.0.0/go.mod"
		"github.com/hashicorp/go-sockaddr v1.0.0/go.mod"
		"github.com/hashicorp/go-syslog v1.0.0/go.mod"
		"github.com/hashicorp/go-uuid v1.0.0/go.mod"
		"github.com/hashicorp/go-uuid v1.0.1/go.mod"
		"github.com/hashicorp/go.net v0.0.1/go.mod"
		"github.com/hashicorp/golang-lru v0.5.0/go.mod"
		"github.com/hashicorp/golang-lru v0.5.1"
		"github.com/hashicorp/golang-lru v0.5.1/go.mod"
		"github.com/hashicorp/hcl v1.0.0"
		"github.com/hashicorp/hcl v1.0.0/go.mod"
		"github.com/hashicorp/logutils v1.0.0/go.mod"
		"github.com/hashicorp/mdns v1.0.0/go.mod"
		"github.com/hashicorp/memberlist v0.1.3/go.mod"
		"github.com/hashicorp/serf v0.8.2/go.mod"
		"github.com/hpcloud/tail v1.0.0"
		"github.com/hpcloud/tail v1.0.0/go.mod"
		"github.com/inconshreveable/mousetrap v1.0.0"
		"github.com/inconshreveable/mousetrap v1.0.0/go.mod"
		"github.com/jackc/chunkreader v1.0.0"
		"github.com/jackc/chunkreader v1.0.0/go.mod"
		"github.com/jackc/chunkreader/v2 v2.0.0/go.mod"
		"github.com/jackc/chunkreader/v2 v2.0.1"
		"github.com/jackc/chunkreader/v2 v2.0.1/go.mod"
		"github.com/jackc/pgconn v0.0.0-20190420214824-7e0022ef6ba3/go.mod"
		"github.com/jackc/pgconn v0.0.0-20190824142844-760dd75542eb/go.mod"
		"github.com/jackc/pgconn v0.0.0-20190831204454-2fabfa3c18b7/go.mod"
		"github.com/jackc/pgconn v1.4.0/go.mod"
		"github.com/jackc/pgconn v1.5.0/go.mod"
		"github.com/jackc/pgconn v1.5.1-0.20200601181101-fa742c524853/go.mod"
		"github.com/jackc/pgconn v1.6.4"
		"github.com/jackc/pgconn v1.6.4/go.mod"
		"github.com/jackc/pgio v1.0.0"
		"github.com/jackc/pgio v1.0.0/go.mod"
		"github.com/jackc/pgmock v0.0.0-20190831213851-13a1b77aafa2"
		"github.com/jackc/pgmock v0.0.0-20190831213851-13a1b77aafa2/go.mod"
		"github.com/jackc/pgpassfile v1.0.0"
		"github.com/jackc/pgpassfile v1.0.0/go.mod"
		"github.com/jackc/pgproto3 v1.1.0"
		"github.com/jackc/pgproto3 v1.1.0/go.mod"
		"github.com/jackc/pgproto3/v2 v2.0.0-alpha1.0.20190420180111-c116219b62db/go.mod"
		"github.com/jackc/pgproto3/v2 v2.0.0-alpha1.0.20190609003834-432c2951c711/go.mod"
		"github.com/jackc/pgproto3/v2 v2.0.0-rc3/go.mod"
		"github.com/jackc/pgproto3/v2 v2.0.0-rc3.0.20190831210041-4c03ce451f29/go.mod"
		"github.com/jackc/pgproto3/v2 v2.0.1/go.mod"
		"github.com/jackc/pgproto3/v2 v2.0.2"
		"github.com/jackc/pgproto3/v2 v2.0.2/go.mod"
		"github.com/jackc/pgservicefile v0.0.0-20200307190119-3430c5407db8"
		"github.com/jackc/pgservicefile v0.0.0-20200307190119-3430c5407db8/go.mod"
		"github.com/jackc/pgservicefile v0.0.0-20200714003250-2b9c44734f2b"
		"github.com/jackc/pgservicefile v0.0.0-20200714003250-2b9c44734f2b/go.mod"
		"github.com/jackc/pgtype v0.0.0-20190421001408-4ed0de4755e0/go.mod"
		"github.com/jackc/pgtype v0.0.0-20190824184912-ab885b375b90/go.mod"
		"github.com/jackc/pgtype v0.0.0-20190828014616-a8802b16cc59/go.mod"
		"github.com/jackc/pgtype v1.2.0/go.mod"
		"github.com/jackc/pgtype v1.3.1-0.20200510190516-8cd94a14c75a/go.mod"
		"github.com/jackc/pgtype v1.3.1-0.20200606141011-f6355165a91c/go.mod"
		"github.com/jackc/pgtype v1.4.2"
		"github.com/jackc/pgtype v1.4.2/go.mod"
		"github.com/jackc/pgx/v4 v4.0.0-20190420224344-cc3461e65d96/go.mod"
		"github.com/jackc/pgx/v4 v4.0.0-20190421002000-1b8f0016e912/go.mod"
		"github.com/jackc/pgx/v4 v4.0.0-pre1.0.20190824185557-6972a5742186/go.mod"
		"github.com/jackc/pgx/v4 v4.5.0/go.mod"
		"github.com/jackc/pgx/v4 v4.6.1-0.20200510190926-94ba730bb1e9/go.mod"
		"github.com/jackc/pgx/v4 v4.6.1-0.20200606145419-4e5062306904/go.mod"
		"github.com/jackc/pgx/v4 v4.8.1"
		"github.com/jackc/pgx/v4 v4.8.1/go.mod"
		"github.com/jackc/puddle v0.0.0-20190413234325-e4ced69a3a2b/go.mod"
		"github.com/jackc/puddle v0.0.0-20190608224051-11cab39313c9/go.mod"
		"github.com/jackc/puddle v1.1.0/go.mod"
		"github.com/jackc/puddle v1.1.1/go.mod"
		"github.com/jonboulle/clockwork v0.1.0/go.mod"
		"github.com/json-iterator/go v1.1.6/go.mod"
		"github.com/jstemmer/go-junit-report v0.0.0-20190106144839-af01ea7f8024/go.mod"
		"github.com/jtolds/gls v4.20.0+incompatible"
		"github.com/jtolds/gls v4.20.0+incompatible/go.mod"
		"github.com/julienschmidt/httprouter v1.2.0/go.mod"
		"github.com/kisielk/errcheck v1.1.0/go.mod"
		"github.com/kisielk/gotool v1.0.0/go.mod"
		"github.com/klauspost/compress v1.10.7"
		"github.com/klauspost/compress v1.10.7/go.mod"
		"github.com/konsorten/go-windows-terminal-sequences v1.0.1"
		"github.com/konsorten/go-windows-terminal-sequences v1.0.1/go.mod"
		"github.com/konsorten/go-windows-terminal-sequences v1.0.2/go.mod"
		"github.com/konsorten/go-windows-terminal-sequences v1.0.3"
		"github.com/konsorten/go-windows-terminal-sequences v1.0.3/go.mod"
		"github.com/kr/logfmt v0.0.0-20140226030751-b84e30acd515/go.mod"
		"github.com/kr/pretty v0.1.0"
		"github.com/kr/pretty v0.1.0/go.mod"
		"github.com/kr/pty v1.1.1"
		"github.com/kr/pty v1.1.1/go.mod"
		"github.com/kr/pty v1.1.8/go.mod"
		"github.com/kr/text v0.1.0"
		"github.com/kr/text v0.1.0/go.mod"
		"github.com/lib/pq v1.0.0/go.mod"
		"github.com/lib/pq v1.1.0/go.mod"
		"github.com/lib/pq v1.2.0/go.mod"
		"github.com/lib/pq v1.3.0/go.mod"
		"github.com/lib/pq v1.9.0"
		"github.com/lib/pq v1.9.0/go.mod"
		"github.com/magiconair/properties v1.8.0"
		"github.com/magiconair/properties v1.8.0/go.mod"
		"github.com/magiconair/properties v1.8.1"
		"github.com/magiconair/properties v1.8.1/go.mod"
		"github.com/mattn/go-colorable v0.0.9/go.mod"
		"github.com/mattn/go-colorable v0.1.1/go.mod"
		"github.com/mattn/go-colorable v0.1.2/go.mod"
		"github.com/mattn/go-colorable v0.1.6/go.mod"
		"github.com/mattn/go-isatty v0.0.3/go.mod"
		"github.com/mattn/go-isatty v0.0.5/go.mod"
		"github.com/mattn/go-isatty v0.0.7/go.mod"
		"github.com/mattn/go-isatty v0.0.8/go.mod"
		"github.com/mattn/go-isatty v0.0.9/go.mod"
		"github.com/mattn/go-isatty v0.0.12/go.mod"
		"github.com/mattn/go-sqlite3 v1.14.5/go.mod"
		"github.com/mattn/go-sqlite3 v2.0.3+incompatible"
		"github.com/mattn/go-sqlite3 v2.0.3+incompatible/go.mod"
		"github.com/matttproud/golang_protobuf_extensions v1.0.1/go.mod"
		"github.com/miekg/dns v1.0.14/go.mod"
		"github.com/mitchellh/cli v1.0.0/go.mod"
		"github.com/mitchellh/go-homedir v1.0.0/go.mod"
		"github.com/mitchellh/go-homedir v1.1.0"
		"github.com/mitchellh/go-homedir v1.1.0/go.mod"
		"github.com/mitchellh/go-testing-interface v1.0.0/go.mod"
		"github.com/mitchellh/gox v0.4.0/go.mod"
		"github.com/mitchellh/iochan v1.0.0/go.mod"
		"github.com/mitchellh/mapstructure v0.0.0-20160808181253-ca63d7c062ee/go.mod"
		"github.com/mitchellh/mapstructure v1.1.2"
		"github.com/mitchellh/mapstructure v1.1.2/go.mod"
		"github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd/go.mod"
		"github.com/modern-go/reflect2 v1.0.1/go.mod"
		"github.com/mwitkow/go-conntrack v0.0.0-20161129095857-cc309e4a2223/go.mod"
		"github.com/nxadm/tail v1.4.4"
		"github.com/nxadm/tail v1.4.4/go.mod"
		"github.com/oklog/ulid v1.3.1/go.mod"
		"github.com/onsi/ginkgo v1.6.0/go.mod"
		"github.com/onsi/ginkgo v1.12.1/go.mod"
		"github.com/onsi/ginkgo v1.14.2"
		"github.com/onsi/ginkgo v1.14.2/go.mod"
		"github.com/onsi/gomega v1.7.1"
		"github.com/onsi/gomega v1.7.1/go.mod"
		"github.com/onsi/gomega v1.10.1/go.mod"
		"github.com/onsi/gomega v1.10.3"
		"github.com/onsi/gomega v1.10.3/go.mod"
		"github.com/otiai10/copy v1.2.0"
		"github.com/otiai10/copy v1.2.0/go.mod"
		"github.com/otiai10/curr v0.0.0-20150429015615-9b4961190c95"
		"github.com/otiai10/curr v0.0.0-20150429015615-9b4961190c95/go.mod"
		"github.com/otiai10/curr v1.0.0"
		"github.com/otiai10/curr v1.0.0/go.mod"
		"github.com/otiai10/mint v1.3.0"
		"github.com/otiai10/mint v1.3.0/go.mod"
		"github.com/otiai10/mint v1.3.1"
		"github.com/otiai10/mint v1.3.1/go.mod"
		"github.com/pascaldekloe/goe v0.0.0-20180627143212-57f6aae5913c/go.mod"
		"github.com/pelletier/go-toml v1.2.0"
		"github.com/pelletier/go-toml v1.2.0/go.mod"
		"github.com/pelletier/go-toml v1.4.0"
		"github.com/pelletier/go-toml v1.4.0/go.mod"
		"github.com/philhofer/fwd v1.1.1"
		"github.com/philhofer/fwd v1.1.1/go.mod"
		"github.com/pkg/errors v0.8.0/go.mod"
		"github.com/pkg/errors v0.8.1/go.mod"
		"github.com/pkg/errors v0.9.1"
		"github.com/pkg/errors v0.9.1/go.mod"
		"github.com/pmezard/go-difflib v1.0.0"
		"github.com/pmezard/go-difflib v1.0.0/go.mod"
		"github.com/posener/complete v1.1.1/go.mod"
		"github.com/pquerna/otp v1.2.0"
		"github.com/pquerna/otp v1.2.0/go.mod"
		"github.com/prometheus/client_golang v0.9.1/go.mod"
		"github.com/prometheus/client_golang v0.9.3/go.mod"
		"github.com/prometheus/client_model v0.0.0-20180712105110-5c3871d89910/go.mod"
		"github.com/prometheus/client_model v0.0.0-20190129233127-fd36f4220a90/go.mod"
		"github.com/prometheus/common v0.0.0-20181113130724-41aa239b4cce/go.mod"
		"github.com/prometheus/common v0.4.0/go.mod"
		"github.com/prometheus/procfs v0.0.0-20181005140218-185b4288413d/go.mod"
		"github.com/prometheus/procfs v0.0.0-20190507164030-5867b95ac084/go.mod"
		"github.com/prometheus/tsdb v0.7.1/go.mod"
		"github.com/rogpeppe/fastuuid v0.0.0-20150106093220-6724a57986af/go.mod"
		"github.com/rogpeppe/go-internal v1.3.0/go.mod"
		"github.com/rs/xid v1.2.1/go.mod"
		"github.com/rs/zerolog v1.13.0/go.mod"
		"github.com/rs/zerolog v1.15.0/go.mod"
		"github.com/russross/blackfriday/v2 v2.0.1/go.mod"
		"github.com/ryanuber/columnize v0.0.0-20160712163229-9b3edd62028f/go.mod"
		"github.com/satori/go.uuid v1.2.0/go.mod"
		"github.com/savsgio/dictpool v0.0.0-20201211144637-d4adfdb24374"
		"github.com/savsgio/dictpool v0.0.0-20201211144637-d4adfdb24374/go.mod"
		"github.com/savsgio/gotils v0.0.0-20200616100644-13ff1fd2c28c"
		"github.com/savsgio/gotils v0.0.0-20200616100644-13ff1fd2c28c/go.mod"
		"github.com/savsgio/gotils v0.0.0-20200909101946-939aa3fc74fb"
		"github.com/savsgio/gotils v0.0.0-20200909101946-939aa3fc74fb/go.mod"
		"github.com/sean-/seed v0.0.0-20170313163322-e2103e2c3529/go.mod"
		"github.com/shopspring/decimal v0.0.0-20180709203117-cd690d0c9e24/go.mod"
		"github.com/shopspring/decimal v0.0.0-20200227202807-02e2044944cc"
		"github.com/shopspring/decimal v0.0.0-20200227202807-02e2044944cc/go.mod"
		"github.com/shurcooL/sanitized_anchor_name v1.0.0/go.mod"
		"github.com/simia-tech/crypt v0.4.3"
		"github.com/simia-tech/crypt v0.4.3/go.mod"
		"github.com/sirupsen/logrus v1.2.0/go.mod"
		"github.com/sirupsen/logrus v1.4.1/go.mod"
		"github.com/sirupsen/logrus v1.4.2/go.mod"
		"github.com/sirupsen/logrus v1.6.0"
		"github.com/sirupsen/logrus v1.6.0/go.mod"
		"github.com/smartystreets/assertions v0.0.0-20180927180507-b2de0cb4f26d"
		"github.com/smartystreets/assertions v0.0.0-20180927180507-b2de0cb4f26d/go.mod"
		"github.com/smartystreets/goconvey v1.6.4"
		"github.com/smartystreets/goconvey v1.6.4/go.mod"
		"github.com/soheilhy/cmux v0.1.4/go.mod"
		"github.com/spaolacci/murmur3 v0.0.0-20180118202830-f09979ecbc72"
		"github.com/spaolacci/murmur3 v0.0.0-20180118202830-f09979ecbc72/go.mod"
		"github.com/spf13/afero v1.1.2"
		"github.com/spf13/afero v1.1.2/go.mod"
		"github.com/spf13/cast v1.3.0"
		"github.com/spf13/cast v1.3.0/go.mod"
		"github.com/spf13/cobra v0.0.7"
		"github.com/spf13/cobra v0.0.7/go.mod"
		"github.com/spf13/jwalterweatherman v1.0.0"
		"github.com/spf13/jwalterweatherman v1.0.0/go.mod"
		"github.com/spf13/pflag v1.0.3"
		"github.com/spf13/pflag v1.0.3/go.mod"
		"github.com/spf13/viper v1.4.0/go.mod"
		"github.com/spf13/viper v1.7.1"
		"github.com/spf13/viper v1.7.1/go.mod"
		"github.com/stretchr/objx v0.1.0/go.mod"
		"github.com/stretchr/objx v0.1.1"
		"github.com/stretchr/objx v0.1.1/go.mod"
		"github.com/stretchr/objx v0.2.0/go.mod"
		"github.com/stretchr/testify v1.2.0/go.mod"
		"github.com/stretchr/testify v1.2.2/go.mod"
		"github.com/stretchr/testify v1.3.0/go.mod"
		"github.com/stretchr/testify v1.4.0/go.mod"
		"github.com/stretchr/testify v1.5.1/go.mod"
		"github.com/stretchr/testify v1.6.1"
		"github.com/stretchr/testify v1.6.1/go.mod"
		"github.com/subosito/gotenv v1.2.0"
		"github.com/subosito/gotenv v1.2.0/go.mod"
		"github.com/tebeka/selenium v0.9.9"
		"github.com/tebeka/selenium v0.9.9/go.mod"
		"github.com/tinylib/msgp v1.1.5"
		"github.com/tinylib/msgp v1.1.5/go.mod"
		"github.com/tmc/grpc-websocket-proxy v0.0.0-20190109142713-0ad062ec5ee5/go.mod"
		"github.com/tstranex/u2f v1.0.0"
		"github.com/tstranex/u2f v1.0.0/go.mod"
		"github.com/ttacon/chalk v0.0.0-20160626202418-22c06c80ed31/go.mod"
		"github.com/ugorji/go v1.1.4/go.mod"
		"github.com/valyala/bytebufferpool v1.0.0"
		"github.com/valyala/bytebufferpool v1.0.0/go.mod"
		"github.com/valyala/fasthttp v1.15.1"
		"github.com/valyala/fasthttp v1.15.1/go.mod"
		"github.com/valyala/fasthttp v1.18.0"
		"github.com/valyala/fasthttp v1.18.0/go.mod"
		"github.com/valyala/tcplisten v0.0.0-20161114210144-ceec8f93295a/go.mod"
		"github.com/xiang90/probing v0.0.0-20190116061207-43a291ad63a2/go.mod"
		"github.com/xordataexchange/crypt v0.0.3-0.20170626215501-b2862e3d0a77/go.mod"
		"github.com/yuin/goldmark v1.2.1/go.mod"
		"github.com/zenazn/goji v0.9.0/go.mod"
		"go.etcd.io/bbolt v1.3.2/go.mod"
		"go.opencensus.io v0.21.0/go.mod"
		"go.opencensus.io v0.22.0"
		"go.opencensus.io v0.22.0/go.mod"
		"go.opentelemetry.io/otel v0.14.0"
		"go.opentelemetry.io/otel v0.14.0/go.mod"
		"go.uber.org/atomic v1.3.2/go.mod"
		"go.uber.org/atomic v1.4.0/go.mod"
		"go.uber.org/atomic v1.6.0/go.mod"
		"go.uber.org/multierr v1.1.0/go.mod"
		"go.uber.org/multierr v1.5.0/go.mod"
		"go.uber.org/tools v0.0.0-20190618225709-2cfd321de3ee/go.mod"
		"go.uber.org/zap v1.9.1/go.mod"
		"go.uber.org/zap v1.10.0/go.mod"
		"golang.org/x/crypto v0.0.0-20180904163835-0709b304e793/go.mod"
		"golang.org/x/crypto v0.0.0-20181029021203-45a5f77698d3/go.mod"
		"golang.org/x/crypto v0.0.0-20181112202954-3d3f9f413869/go.mod"
		"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2"
		"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
		"golang.org/x/crypto v0.0.0-20190411191339-88737f569e3a/go.mod"
		"golang.org/x/crypto v0.0.0-20190510104115-cbcb75029529/go.mod"
		"golang.org/x/crypto v0.0.0-20190605123033-f99c8df09eb5"
		"golang.org/x/crypto v0.0.0-20190605123033-f99c8df09eb5/go.mod"
		"golang.org/x/crypto v0.0.0-20190820162420-60c769a6c586/go.mod"
		"golang.org/x/crypto v0.0.0-20190911031432-227b76d455e7/go.mod"
		"golang.org/x/crypto v0.0.0-20191011191535-87dc89f01550/go.mod"
		"golang.org/x/crypto v0.0.0-20200323165209-0ec3e9974c59/go.mod"
		"golang.org/x/crypto v0.0.0-20200604202706-70a84ac30bf9"
		"golang.org/x/crypto v0.0.0-20200604202706-70a84ac30bf9/go.mod"
		"golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9"
		"golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9/go.mod"
		"golang.org/x/exp v0.0.0-20190121172915-509febef88a4/go.mod"
		"golang.org/x/exp v0.0.0-20190306152737-a1d7652674e8/go.mod"
		"golang.org/x/exp v0.0.0-20190510132918-efd6b22b2522/go.mod"
		"golang.org/x/exp v0.0.0-20190829153037-c13cbed26979/go.mod"
		"golang.org/x/exp v0.0.0-20191030013958-a1ab85dbe136/go.mod"
		"golang.org/x/image v0.0.0-20190227222117-0694c2d4d067/go.mod"
		"golang.org/x/image v0.0.0-20190802002840-cff245a6509b/go.mod"
		"golang.org/x/lint v0.0.0-20181026193005-c67002cb31c3/go.mod"
		"golang.org/x/lint v0.0.0-20190227174305-5b3e6a55c961/go.mod"
		"golang.org/x/lint v0.0.0-20190301231843-5614ed5bae6f/go.mod"
		"golang.org/x/lint v0.0.0-20190313153728-d0100b6bd8b3/go.mod"
		"golang.org/x/lint v0.0.0-20190409202823-959b441ac422/go.mod"
		"golang.org/x/lint v0.0.0-20190909230951-414d861bb4ac/go.mod"
		"golang.org/x/lint v0.0.0-20190930215403-16217165b5de/go.mod"
		"golang.org/x/mobile v0.0.0-20190312151609-d3739f865fa6/go.mod"
		"golang.org/x/mobile v0.0.0-20190719004257-d2bd2a29d028/go.mod"
		"golang.org/x/mod v0.0.0-20190513183733-4bf6d317e70e/go.mod"
		"golang.org/x/mod v0.1.0/go.mod"
		"golang.org/x/mod v0.3.0/go.mod"
		"golang.org/x/net v0.0.0-20180724234803-3673e40ba225/go.mod"
		"golang.org/x/net v0.0.0-20180826012351-8a410e7b638d/go.mod"
		"golang.org/x/net v0.0.0-20180906233101-161cd47e91fd/go.mod"
		"golang.org/x/net v0.0.0-20181023162649-9b4f9f5ad519/go.mod"
		"golang.org/x/net v0.0.0-20181114220301-adae6a3d119a/go.mod"
		"golang.org/x/net v0.0.0-20181201002055-351d144fa1fc/go.mod"
		"golang.org/x/net v0.0.0-20181220203305-927f97764cc3/go.mod"
		"golang.org/x/net v0.0.0-20190108225652-1e06a53dbb7e/go.mod"
		"golang.org/x/net v0.0.0-20190213061140-3a22650c66bd/go.mod"
		"golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod"
		"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
		"golang.org/x/net v0.0.0-20190501004415-9ce7a6920f09/go.mod"
		"golang.org/x/net v0.0.0-20190503192946-f4e77d36d62c/go.mod"
		"golang.org/x/net v0.0.0-20190522155817-f3200d17e092/go.mod"
		"golang.org/x/net v0.0.0-20190603091049-60506f45cf65/go.mod"
		"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
		"golang.org/x/net v0.0.0-20190813141303-74dc4d7220e7/go.mod"
		"golang.org/x/net v0.0.0-20200520004742-59133d7f0dd7/go.mod"
		"golang.org/x/net v0.0.0-20200602114024-627f9648deb9"
		"golang.org/x/net v0.0.0-20200602114024-627f9648deb9/go.mod"
		"golang.org/x/net v0.0.0-20201006153459-a7d1128ccaa0/go.mod"
		"golang.org/x/net v0.0.0-20201016165138-7b1cca2348c0/go.mod"
		"golang.org/x/net v0.0.0-20201021035429-f5854403a974"
		"golang.org/x/net v0.0.0-20201021035429-f5854403a974/go.mod"
		"golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be/go.mod"
		"golang.org/x/oauth2 v0.0.0-20190226205417-e64efc72b421/go.mod"
		"golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45"
		"golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45/go.mod"
		"golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f/go.mod"
		"golang.org/x/sync v0.0.0-20181108010431-42b317875d0f/go.mod"
		"golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4/go.mod"
		"golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6/go.mod"
		"golang.org/x/sync v0.0.0-20190423024810-112230192c58"
		"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
		"golang.org/x/sync v0.0.0-20201020160332-67f06af15bc9/go.mod"
		"golang.org/x/sys v0.0.0-20180823144017-11551d06cbcc/go.mod"
		"golang.org/x/sys v0.0.0-20180830151530-49385e6e1522/go.mod"
		"golang.org/x/sys v0.0.0-20180905080454-ebe1bf3edb33/go.mod"
		"golang.org/x/sys v0.0.0-20180909124046-d0be0721c37e/go.mod"
		"golang.org/x/sys v0.0.0-20181026203630-95b1ffbd15a5/go.mod"
		"golang.org/x/sys v0.0.0-20181107165924-66b7b1311ac8/go.mod"
		"golang.org/x/sys v0.0.0-20181116152217-5ac8a444bdc5/go.mod"
		"golang.org/x/sys v0.0.0-20181116161606-93218def8b18/go.mod"
		"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
		"golang.org/x/sys v0.0.0-20190222072716-a9d3bda3a223/go.mod"
		"golang.org/x/sys v0.0.0-20190312061237-fead79001313/go.mod"
		"golang.org/x/sys v0.0.0-20190403152447-81d4e9dc473e/go.mod"
		"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
		"golang.org/x/sys v0.0.0-20190422165155-953cdadca894"
		"golang.org/x/sys v0.0.0-20190422165155-953cdadca894/go.mod"
		"golang.org/x/sys v0.0.0-20190502145724-3ef323f4f1fd/go.mod"
		"golang.org/x/sys v0.0.0-20190507160741-ecd444e8653b/go.mod"
		"golang.org/x/sys v0.0.0-20190606165138-5da285871e9c/go.mod"
		"golang.org/x/sys v0.0.0-20190624142023-c5567b49c5d0"
		"golang.org/x/sys v0.0.0-20190624142023-c5567b49c5d0/go.mod"
		"golang.org/x/sys v0.0.0-20190813064441-fde4db37ae7a/go.mod"
		"golang.org/x/sys v0.0.0-20190826190057-c7b8b68b1456/go.mod"
		"golang.org/x/sys v0.0.0-20190904154756-749cb33beabd/go.mod"
		"golang.org/x/sys v0.0.0-20191005200804-aed5e4c7ecf9/go.mod"
		"golang.org/x/sys v0.0.0-20191120155948-bd437916bb0e/go.mod"
		"golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod"
		"golang.org/x/sys v0.0.0-20200223170610-d5e6a3e2c0ae/go.mod"
		"golang.org/x/sys v0.0.0-20200323222414-85ca7c5b95cd"
		"golang.org/x/sys v0.0.0-20200323222414-85ca7c5b95cd/go.mod"
		"golang.org/x/sys v0.0.0-20200519105757-fe76b779f299/go.mod"
		"golang.org/x/sys v0.0.0-20200602225109-6fdc65e7d980"
		"golang.org/x/sys v0.0.0-20200602225109-6fdc65e7d980/go.mod"
		"golang.org/x/sys v0.0.0-20200930185726-fdedc70b468f"
		"golang.org/x/sys v0.0.0-20200930185726-fdedc70b468f/go.mod"
		"golang.org/x/text v0.3.0"
		"golang.org/x/text v0.3.0/go.mod"
		"golang.org/x/text v0.3.1-0.20180807135948-17ff2d5776d2/go.mod"
		"golang.org/x/text v0.3.2"
		"golang.org/x/text v0.3.2/go.mod"
		"golang.org/x/text v0.3.3"
		"golang.org/x/text v0.3.3/go.mod"
		"golang.org/x/time v0.0.0-20181108054448-85acf8d2951c/go.mod"
		"golang.org/x/time v0.0.0-20190308202827-9d24e82272b4/go.mod"
		"golang.org/x/tools v0.0.0-20180221164845-07fd8470d635/go.mod"
		"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
		"golang.org/x/tools v0.0.0-20190114222345-bf090417da8b/go.mod"
		"golang.org/x/tools v0.0.0-20190226205152-f727befe758c/go.mod"
		"golang.org/x/tools v0.0.0-20190311212946-11955173bddd/go.mod"
		"golang.org/x/tools v0.0.0-20190312151545-0bb0c0a6e846/go.mod"
		"golang.org/x/tools v0.0.0-20190312170243-e65039ee4138/go.mod"
		"golang.org/x/tools v0.0.0-20190328211700-ab21143f2384/go.mod"
		"golang.org/x/tools v0.0.0-20190425150028-36563e24a262/go.mod"
		"golang.org/x/tools v0.0.0-20190425163242-31fd60d6bfdc/go.mod"
		"golang.org/x/tools v0.0.0-20190506145303-2d16b83fe98c/go.mod"
		"golang.org/x/tools v0.0.0-20190606124116-d0a3d012864b/go.mod"
		"golang.org/x/tools v0.0.0-20190621195816-6e04913cbbac/go.mod"
		"golang.org/x/tools v0.0.0-20190624190245-7f2218787638"
		"golang.org/x/tools v0.0.0-20190624190245-7f2218787638/go.mod"
		"golang.org/x/tools v0.0.0-20190628153133-6cdbf07be9d0/go.mod"
		"golang.org/x/tools v0.0.0-20190816200558-6889da9d5479/go.mod"
		"golang.org/x/tools v0.0.0-20190823170909-c4a336ef6a2f/go.mod"
		"golang.org/x/tools v0.0.0-20190911174233-4f2ddba30aff/go.mod"
		"golang.org/x/tools v0.0.0-20191012152004-8de300cfc20a/go.mod"
		"golang.org/x/tools v0.0.0-20191029041327-9cc4af7d6b2c/go.mod"
		"golang.org/x/tools v0.0.0-20191029190741-b9c20aec41a5/go.mod"
		"golang.org/x/tools v0.0.0-20191112195655-aa38f8e97acc/go.mod"
		"golang.org/x/tools v0.0.0-20191119224855-298f0cb1881e/go.mod"
		"golang.org/x/tools v0.0.0-20201022035929-9cf592e881e9/go.mod"
		"golang.org/x/xerrors v0.0.0-20190410155217-1f06c39b4373/go.mod"
		"golang.org/x/xerrors v0.0.0-20190513163551-3ee3066db522/go.mod"
		"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod"
		"golang.org/x/xerrors v0.0.0-20191011141410-1b5146add898/go.mod"
		"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543"
		"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543/go.mod"
		"golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1"
		"golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1/go.mod"
		"google.golang.org/api v0.4.0/go.mod"
		"google.golang.org/api v0.7.0"
		"google.golang.org/api v0.7.0/go.mod"
		"google.golang.org/api v0.8.0/go.mod"
		"google.golang.org/api v0.9.0/go.mod"
		"google.golang.org/api v0.13.0/go.mod"
		"google.golang.org/appengine v1.1.0/go.mod"
		"google.golang.org/appengine v1.4.0/go.mod"
		"google.golang.org/appengine v1.5.0/go.mod"
		"google.golang.org/appengine v1.6.1"
		"google.golang.org/appengine v1.6.1/go.mod"
		"google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8/go.mod"
		"google.golang.org/genproto v0.0.0-20190307195333-5fe7a883aa19/go.mod"
		"google.golang.org/genproto v0.0.0-20190418145605-e7d98fc518a7/go.mod"
		"google.golang.org/genproto v0.0.0-20190425155659-357c62f0e4bb/go.mod"
		"google.golang.org/genproto v0.0.0-20190502173448-54afdca5d873/go.mod"
		"google.golang.org/genproto v0.0.0-20190626174449-989357319d63"
		"google.golang.org/genproto v0.0.0-20190626174449-989357319d63/go.mod"
		"google.golang.org/genproto v0.0.0-20190801165951-fa694d86fc64/go.mod"
		"google.golang.org/genproto v0.0.0-20190819201941-24fa4b261c55/go.mod"
		"google.golang.org/genproto v0.0.0-20190911173649-1774047e7e51/go.mod"
		"google.golang.org/genproto v0.0.0-20191108220845-16a3f7862a1a"
		"google.golang.org/genproto v0.0.0-20191108220845-16a3f7862a1a/go.mod"
		"google.golang.org/grpc v1.19.0/go.mod"
		"google.golang.org/grpc v1.20.1/go.mod"
		"google.golang.org/grpc v1.21.0/go.mod"
		"google.golang.org/grpc v1.21.1"
		"google.golang.org/grpc v1.21.1/go.mod"
		"google.golang.org/protobuf v0.0.0-20200109180630-ec00e32a8dfd/go.mod"
		"google.golang.org/protobuf v0.0.0-20200221191635-4d8936d0db64/go.mod"
		"google.golang.org/protobuf v0.0.0-20200228230310-ab0ca4ff8a60/go.mod"
		"google.golang.org/protobuf v1.20.1-0.20200309200217-e05f789c0967/go.mod"
		"google.golang.org/protobuf v1.21.0/go.mod"
		"google.golang.org/protobuf v1.23.0"
		"google.golang.org/protobuf v1.23.0/go.mod"
		"gopkg.in/alecthomas/kingpin.v2 v2.2.6/go.mod"
		"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405"
		"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
		"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127"
		"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
		"gopkg.in/errgo.v2 v2.1.0/go.mod"
		"gopkg.in/fsnotify.v1 v1.4.7"
		"gopkg.in/fsnotify.v1 v1.4.7/go.mod"
		"gopkg.in/inconshreveable/log15.v2 v2.0.0-20180818164646-67afb5ed74ec/go.mod"
		"gopkg.in/ini.v1 v1.51.0"
		"gopkg.in/ini.v1 v1.51.0/go.mod"
		"gopkg.in/resty.v1 v1.12.0/go.mod"
		"gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7"
		"gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7/go.mod"
		"gopkg.in/yaml.v2 v2.0.0-20170812160011-eb3733d160e7/go.mod"
		"gopkg.in/yaml.v2 v2.2.1/go.mod"
		"gopkg.in/yaml.v2 v2.2.2/go.mod"
		"gopkg.in/yaml.v2 v2.2.4"
		"gopkg.in/yaml.v2 v2.2.4/go.mod"
		"gopkg.in/yaml.v2 v2.3.0"
		"gopkg.in/yaml.v2 v2.3.0/go.mod"
		"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c"
		"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
		"honnef.co/go/tools v0.0.0-20190102054323-c2f93a96b099/go.mod"
		"honnef.co/go/tools v0.0.0-20190106161140-3f1c8253044a/go.mod"
		"honnef.co/go/tools v0.0.0-20190418001031-e561f6794a2a/go.mod"
		"honnef.co/go/tools v0.0.1-2019.2.3/go.mod"
		"rsc.io/binaryregexp v0.2.0/go.mod"
		)
go-module_set_globals

SRC_URI="https://github.com/authelia/authelia/archive/v${PV}.tar.gz -> ${P}.tar.gz
	https://github.com/authelia/authelia/releases/download/v${PV}/authelia-public_html.tar.gz -> ${P}-public_html.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="Apache-2.0 BSD BSD-2 MIT MPL-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="mysql postgres +sqlite"

REQUIRED_USE="|| ( mysql postgres sqlite )"

COMMON_DEPEND="acct-group/authelia
	acct-user/authelia"
BDEPEND="${COMMON_DEPEND}
	dev-go/broccoli"
RDEPEND="${COMMON_DEPEND}
	mysql? ( virtual/mysql )
	postgres? ( dev-db/postgresql )
	sqlite? ( dev-db/sqlite:3 )
	|| ( net-proxy/haproxy www-servers/nginx )
	dev-db/redis
	virtual/mta"

PATCHES=(
	"${FILESDIR}"/"${PN}"-enable-mysql-via-unix-socket.patch
)

src_prepare() {
	mv "${WORKDIR}"/public_html "${S}"

	sed -i "s|# log_file_path:.*|log_file_path: /var/log/${PN}/${PN}.log|" \
		config.template.yml

	sed -i "s|__BUILD_COMMIT__|v${PV}|" cmd/authelia/constants.go
	sed -i "s|__BUILD_TAG__|v${PV}|" cmd/authelia/constants.go

	default
}

src_compile() {
	pushd "internal/configuration" > /dev/null || die
	go generate -v -x .
	popd > /dev/null || die

	pushd "internal/server" > /dev/null || die
	go generate -v -x .
	popd > /dev/null || die

	pushd "cmd/authelia" > /dev/null || die
	go build -v -x -o authelia
	popd > /dev/null || die
}

src_install() {
	webapp_src_preinst

	insinto /etc/authelia
	newins config.template.yml configuration.yml

	newinitd "${FILESDIR}"/authelia.initd authelia

	systemd_dounit authelia.service

	dobin cmd/authelia/authelia

	dodoc BREAKING.md CONTRIBUTING.md README.md SECURITY.md

	keepdir /var/log/authelia

	insinto "${MY_HTDOCSDIR}"
	doins -r public_html/*

	webapp_src_install

	fowners authelia:authelia /var/log/authelia
}

pkg_postinst() {
	elog "Authelia consist of a backend server and some static assets. You"
	elog "need to configure and setup both to start using Authelia:"
	elog
	elog "- For the backend server, configure authentication backend, access"
	elog "  control, session and other persistent storage in"
	elog "  /etc/authelia/configuration.yml."
	elog
	elog "- You can launch Authelia server by running:"
	elog
	elog "    # /etc/init.d/authelia start"
	elog
	elog "- For static assets:"
	elog "    - Install web parts of Authelia using webapp-config."
	elog "    - Set up a web server to serve static assets at the path"
	elog "      Authelia expects."
	elog "    - Set up a web server to forward X-Forwarded-For,"
	elog "      X-Forwarded-Proto, X-Forwarded-Host to the portal plus"
	elog "      X-Forwarded-URI to the /verify endpoint."

	webapp_pkg_postinst
}

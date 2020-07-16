<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'quiz' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '-oa(dEeJq9[4J-E%EE45a5[WiF[yk_tt#FVRe&ZguKt>Ax0#/4,rL>z$<e]8Ku )' );
define( 'SECURE_AUTH_KEY',  '/8MuJ&u0Uc%4`$0Io,lwS+G&J<Y}-VoNb4/1U]2:hA<J)+G_deE$o:wlxgCfd(/,' );
define( 'LOGGED_IN_KEY',    'XHv[U{ :ROL!Y2{Bh@tEwT5squoKW#Tp,}g`h3}50Y_2}&4J7*vN!U8(GOTCB94s' );
define( 'NONCE_KEY',        '|x+8fS?~ZZtM]|fTAyo:%V<}~w4,pmrRZ/1NvN9ogVhHI^PMql/y@NRQ-%}31W*3' );
define( 'AUTH_SALT',        'a[jnL};m!0`2)fh0L[8h2{:2<hT.Je)Z+r5Q&xIf>>cDFID+)BU/VfC@;R-7HQSk' );
define( 'SECURE_AUTH_SALT', 'h%]S6L`y!7^,KU*Gw`DwNgx22.$!+9].F~?9<5MtRP4IA;D`[7@F|WaI];.t(I<$' );
define( 'LOGGED_IN_SALT',   'Id(G,tO:8Qt$*_DXLHF_:|?efGR?2dN7/wUq}>E=#lZ|~fH6RB7g}*.6`(<Bbo!/' );
define( 'NONCE_SALT',       'ZG.i:ZwA9#<Z38)(@{1u1U)(WMs:@SCRH(Dkc/WS$n:R}lIlIku`ZH@b~Sd?77_:' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

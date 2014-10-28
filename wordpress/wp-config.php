<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress-db');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'DL{,YlqP?&q>19tRQnUV1Ue3,QZ, ,dT4<yUypm:%@|0sv?mRF]hMq=]a2/nx54g');
define('SECURE_AUTH_KEY',  'e,A$6OE%.VH{m%hZ_[b;2+z-+AnbmaO1SxH1{#;!AIS0TlAW9a4H`;Y|l-Z?7H0)');
define('LOGGED_IN_KEY',    'uJ1A&(J&?*-wV}is,!^XzCmSdXC.[a@n!|C<N-l4)+}:89S-YoeTk&(eK}qty};=');
define('NONCE_KEY',        'FUEPT2t/ZNx?+]70&crb!OfvdCOl3Hh7|tn^~J9r5-0fd+%{M0hns)p&YIX*o7Yg');
define('AUTH_SALT',        '%ax)I2+<tmT0}fXFlJ6&-,_67&)-)] s`y|T,@w2 F[9!`4rTZ+8XOQ,blpc(/LK');
define('SECURE_AUTH_SALT', 'l4@}=f^FcNpQ`K6[/<Dcp:JRqu~J&{Y@hu@;qd8=~Y:1,I)Kd}FxckBQblq9!j#&');
define('LOGGED_IN_SALT',   'Yz7huwHN)CMHnHN`vN)e]2f^X/eK1`|WFD|>Nv`Cy]ab&Nyy;Drj6|rw?$~5R>[6');
define('NONCE_SALT',       'aqY2lpZOSxU;vJl=6^9^A0%$U,,ZK{:VC UcfpX >1v;C*~F}7|Wk+bk>}i63spF');
/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

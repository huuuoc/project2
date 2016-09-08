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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'namlimxanh1.vn');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         '=oBJefh]x1FMV?T_8YH.G<[ua:t9+>up2,0i+~RC7O1[ PvL@soc5I v` WLa-%w');
define('SECURE_AUTH_KEY',  'YUG$Yit$g:GB*izPA-VhjE{$mw&eu@5@+Nk/;/7ZO)^De]i]_c/[fT>i,$8dRITr');
define('LOGGED_IN_KEY',    'zY?S,]9Hb6]YX.`:Z0is%OH]>&1N>7bon;O407ZP]r>;:?*JG9AQg6ium{0R8_t=');
define('NONCE_KEY',        '8>mg}B5^?vl><VhD+n8 l< n-oE?7d-(1QmG<Nx*<^1:3f#7^9sBR%,v-/xA)u|B');
define('AUTH_SALT',        '*b|F8XFvI>pf_|ym:FX`PD-_p4Cgq[z5XC<_;SuU-Cwk@Qe>3;R|xW%}%L,>?^/F');
define('SECURE_AUTH_SALT', 'u]:4T]:Gs}NECemklt-UZ417K_?2qzlsmhm7n-*ODGNq+0)+/%a_#&|v7s!QxQ@s');
define('LOGGED_IN_SALT',   'SUfi iN_XdozxWx0a/W4r!L#&^NH2#N!Md1$ilO/li_$P~xpjyvw738R:cIvugy#');
define('NONCE_SALT',       ';xAb7BW+!YloNMRsL<cn8]6#*)Bi9U*!Rs(a:Wl2%WNk.9@PT:_<*8b6?Fc^HM):');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

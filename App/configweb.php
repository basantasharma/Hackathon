<?php

namespace App;

/**
 * Application configuration
 *
 * PHP version 7.0
 */
class Config
{

    /**
     * Database host
     * @var string
     */
    const DB_HOST = 'sql109.epizy.com';

    /**
     * Database name
     * @var string
     */
    const DB_NAME = 'epiz_26842464_users';

    /**
     * Database user
     * @var string
     */
    const DB_USER = 'epiz_26842464';

    /**
     * Database password
     * @var string
     */
    const DB_PASSWORD = 'Go6WkVy0qCIK';

    /**
     * Show or hide error messages on screen
     * @var boolean
     */
    const SHOW_ERRORS = true;

    const SECRET_KEY = 'SHuN7XeoGEKikfWIvVMkmvEuIxSGsNTP';

    const SMTP_HOST = 'mail.repairtofix.com';
    
    const SMTP_AUTH = true;
    
    const MAIL_USERNAME = 'basanta@repairtofix.com';
    
    const MAIL_PASSWORD = 'JRJ1VkmFxXfj';
    
    const MAIL_PORT = 465;
}
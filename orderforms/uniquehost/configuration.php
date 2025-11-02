<?php
/**
 * UniqueHost order form configuration
 */

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

return [
    'name' => 'UniqueHost Aurora',
    'description' => 'Gradient-rich order experience for hosting, VPS, and dedicated plans.',
    'author' => 'UniqueHost Studio',
    'templates' => [
        'cart' => 'cart.tpl',
        'products' => 'products.tpl',
        'configureproduct' => 'configureproduct.tpl',
        'review' => 'review.tpl',
        'complete' => 'complete.tpl',
    ],
];

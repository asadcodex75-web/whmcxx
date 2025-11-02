# WHMCXX Template

Custom "WHMCXX" WHMCS client area theme and "WHMCXX Nebula Cart" order form. The design focuses on dark, neon gradients, oversized typography, and generous rounding for a premium hosting feel.

## Structure

```
templates/
└── whmcxx/
    ├── assets/
    │   ├── css/style.css
    │   └── js/main.js
    ├── includes/
    │   ├── footer.tpl
    │   └── header.tpl
    ├── dedicated-servers.tpl
    ├── homepage.tpl
    ├── login.tpl
    ├── register.tpl
    ├── shared-hosting.tpl
    └── vps-hosting.tpl
orderforms/
└── whmcxx_cart/
    ├── config.ini.php
    ├── configureproduct.tpl
    ├── footer.tpl
    ├── header.tpl
    ├── products.tpl
    ├── style.css
    ├── summary.tpl
    └── viewcart.tpl
```

## Usage

1. Copy the folders in this repository into your WHMCS installation root.
2. Activate the **WHMCXX** template from **Setup → General Settings → General → Template**.
3. Activate the **WHMCXX Nebula Cart** order form from **Setup → General Settings → Ordering → Order Form Template**.
4. Optional: populate the smarty arrays (`$sharedplans`, `$vpsplans`, `$dediplans`) via custom hooks or assign arrays from modules to render dynamic plan listings.

The template uses the Urbanist font from Google Fonts and relies purely on CSS/JS within the repository. No build process is required.

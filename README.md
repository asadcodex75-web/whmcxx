# UniqueHost WHMCS Theme

This repository contains a custom WHMCS front-end experience named **UniqueHost**. It ships with:

- A full website theme (header, footer, homepage, login, registration, and product listing views) built with modern gradients and glassmorphism styling.
- A matching order form template (`UniqueHost Aurora`) for browsing, configuring, and checking out shared hosting, VPS, and dedicated server products.

## Installation

1. Copy the `templates/uniquehost` directory into your WHMCS installation under `templates/`.
2. Copy the `orderforms/uniquehost` directory into your WHMCS installation under `orderforms/`.
3. In the WHMCS admin area, navigate to **Setup → General Settings → General** and select `uniquehost` as your active template.
4. Navigate to **Setup → General Settings → Ordering** and select `UniqueHost Aurora` as the default order form template.

## Customisation Tips

- Shared/VPS/dedicated products automatically render when the associated WHMCS product groups are assigned. Placeholder cards appear when no products are linked yet.
- Update brand colours by editing the CSS variables at the top of `templates/uniquehost/css/style.css` and `orderforms/uniquehost/style.css`.
- Replace testimonial copy, hero content, or footer contact information inside the respective template files to fit your brand.

## License

This template is provided as-is without warranty. Customize freely for your UniqueHost deployment.

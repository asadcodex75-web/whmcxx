# NovaHost WHMCS Theme

NovaHost is a neon-accented WHMCS theme built to deliver a cohesive marketing site, client-area experience, and order flow. The theme now ships as a proper WHMCS template with Smarty `.tpl` views, PHP routing helpers, and an order form skin that wraps the native `standard_cart` workflow.

## What's Included

### Template Views (`templates/novahost/`)
- `homepage.tpl` – hero-led landing page introducing the full NovaHost experience
- `shared-hosting.tpl`, `vps-hosting.tpl`, `dedicated-server.tpl` – focused product pages with plan cards, comparison tables, and upgrade CTAs
- `store.tpl` – catalog layout with tabs for shared, VPS, dedicated, and add-on bundles
- `clientarealogin.tpl`, `clientregister.tpl` – styled authentication screens that respect WHMCS form variables, custom fields, security questions, and captcha widgets
- `cart.tpl` – neon wrapper for the chosen order form template, complete with hero header and theme styling
- `header.tpl`, `footer.tpl`, `includes/navigation.tpl` – shared layout elements with dynamic company name, active navigation states, and skip links for accessibility

### Assets
- `templates/novahost/assets/css/novahost.css` – centralised design tokens, layout primitives, cards, alerts, and order-form refinements. Adjust the CSS variables at the top to rebrand quickly.

### Order Form Skin (`templates/orderforms/novahost/`)
A lightweight order-form skin that proxies every step through the native `standard_cart` templates while inheriting NovaHost styling. Select **NovaHost Order Flow** from Setup → General Settings → Ordering (or pass `carttpl=novahost` in the URL) to activate it.

### Client-Area Routes
- `shared-hosting.php`
- `vps-hosting.php`
- `dedicated-server.php`
- `store.php`

Each file boots the WHMCS Client Area, sets breadcrumbs, and renders the matching template so the pages load correctly under `/shared-hosting.php`, `/vps-hosting.php`, `/dedicated-server.php`, and `/store.php` without blank screens.

## Installation
1. Copy the `templates/novahost` and `templates/orderforms/novahost` directories into your WHMCS installation.
2. Upload the PHP route files (`shared-hosting.php`, `vps-hosting.php`, `dedicated-server.php`, `store.php`) to your WHMCS web root.
3. In WHMCS, set **Setup → General Settings → General → Template** to `novahost`.
4. (Optional) Under **Setup → General Settings → Ordering**, choose `NovaHost Order Flow` to skin the cart with the matching visuals.

## Notes
- Navigation links automatically reference `{$WEB_ROOT}` and highlight active states.
- The login/register templates surface WHMCS errors, captcha markup, and custom fields, so core functionality keeps working.
- The order template reuses `standard_cart` logic but applies NovaHost styling, eliminating the duplicate descriptions and dead-end buttons from earlier static mock-ups.

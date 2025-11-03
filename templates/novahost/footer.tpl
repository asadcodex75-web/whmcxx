      <footer class="site-footer">
        <div class="container">
          <div class="footer-grid">
            <div>
              <a href="{$WEB_ROOT}/index.php" class="brand">{$companyname|default:'NovaHost'|escape}</a>
              <p>
                A bright, dependable WHMCS experience for hosting brands who expect
                polish and performance in equal measure.
              </p>
            </div>
            <div>
              <h4>Products</h4>
              <ul>
                <li><a href="{$WEB_ROOT}/shared-hosting.php">Shared Hosting</a></li>
                <li><a href="{$WEB_ROOT}/vps-hosting.php">Managed VPS</a></li>
                <li><a href="{$WEB_ROOT}/dedicated-server.php">Dedicated Servers</a></li>
              </ul>
            </div>
            <div>
              <h4>Resources</h4>
              <ul>
                <li><a href="{$WEB_ROOT}/store.php">Template Store</a></li>
                <li><a href="{$WEB_ROOT}/cart.php">Order Online</a></li>
                <li><a href="{$WEB_ROOT}/clientarea.php">Client Login</a></li>
              </ul>
            </div>
            <div>
              <h4>Company</h4>
              <ul>
                <li><a href="#">About</a></li>
                <li><a href="#">Status</a></li>
                <li><a href="mailto:support@example.com">Contact</a></li>
              </ul>
            </div>
          </div>
          <div class="footer-bottom">
            <p>© {"now"|date_format:"%Y"} {$companyname|default:'NovaHost'|escape}. Built for WHMCS.</p>
            <p>Crafted for teams launching professional hosting storefronts.</p>
          </div>
        </div>
      </footer>
    </div>
    {$footeroutput}
  </body>
</html>

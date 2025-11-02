        </main>
        <footer class="site-footer">
            <div class="container footer-grid">
                <div>
                    <h3 class="footer-title">{$companyname|default:'WHMCXX Hosting'}</h3>
                    <p class="footer-text">High-performance infrastructure crafted for modern creators, developers, and agencies.</p>
                    <div class="footer-social">
                        <a href="#" aria-label="Twitter" class="footer-social__link">&#xf099;</a>
                        <a href="#" aria-label="Facebook" class="footer-social__link">&#xf09a;</a>
                        <a href="#" aria-label="LinkedIn" class="footer-social__link">&#xf0e1;</a>
                    </div>
                </div>
                <div>
                    <h4 class="footer-heading">Hosting</h4>
                    <ul class="footer-list">
                        <li><a href="{$WEB_ROOT}/shared-hosting.php">Shared Hosting</a></li>
                        <li><a href="{$WEB_ROOT}/vps-hosting.php">Cloud VPS</a></li>
                        <li><a href="{$WEB_ROOT}/dedicated-servers.php">Dedicated Servers</a></li>
                        <li><a href="{$WEB_ROOT}/cart.php?a=confproduct">Reseller Programs</a></li>
                    </ul>
                </div>
                <div>
                    <h4 class="footer-heading">Company</h4>
                    <ul class="footer-list">
                        <li><a href="{$WEB_ROOT}/contact.php">Contact</a></li>
                        <li><a href="{$WEB_ROOT}/about.php">About</a></li>
                        <li><a href="{$WEB_ROOT}/announcements.php">Announcements</a></li>
                        <li><a href="{$WEB_ROOT}/knowledgebase.php">Knowledgebase</a></li>
                    </ul>
                </div>
                <div>
                    <h4 class="footer-heading">Account</h4>
                    <ul class="footer-list">
                        <li><a href="{$WEB_ROOT}/login.php">Login</a></li>
                        <li><a href="{$WEB_ROOT}/register.php">Register</a></li>
                        <li><a href="{$WEB_ROOT}/password/reset.php">Reset Password</a></li>
                        <li><a href="{$WEB_ROOT}/clientarea.php?action=orders">Order History</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container footer-bottom__content">
                    <p>&copy; {"Y"|date} {$companyname|default:'WHMCXX Hosting'}. All rights reserved.</p>
                    <div class="footer-badges">
                        <span class="badge">PCI Secure</span>
                        <span class="badge">99.99% SLA</span>
                        <span class="badge">24/7 Support</span>
                    </div>
                </div>
            </div>
        </footer>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/js/main.js"></script>
        {if isset($footeroutput)}{$footeroutput}{/if}
    </body>
</html>

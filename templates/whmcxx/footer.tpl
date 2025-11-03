    </main>
    <footer class="site-footer" id="support">
        <div class="container footer-grid">
            <div>
                <h4>WHMCXX Hosting</h4>
                <p>Lightning-fast infrastructure, human support, and flexible plans for every stage of growth.</p>
                <p class="footer-contact">
                    <span>Email:</span> <a href="mailto:support@whmcxx.com">support@whmcxx.com</a><br>
                    <span>Phone:</span> +1 (800) 555-0199
                </p>
            </div>
            <div>
                <h4>Company</h4>
                <ul>
                    <li><a href="#features">Why WHMCXX</a></li>
                    <li><a href="#support">Contact</a></li>
                    <li><a href="#">Service Level Agreement</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                </ul>
            </div>
            <div>
                <h4>Products</h4>
                <ul>
                    <li><a href="#hosting">Shared Hosting</a></li>
                    <li><a href="#vps">Managed Cloud VPS</a></li>
                    <li><a href="#dedicated">Bare-metal Servers</a></li>
                    <li><a href="#order">Custom Solutions</a></li>
                </ul>
            </div>
            <div>
                <h4>Stay in the loop</h4>
                <form class="newsletter">
                    <input type="email" placeholder="Email address" required>
                    <button type="submit" class="btn btn-primary">Subscribe</button>
                </form>
                <div class="social-links">
                    <a href="#" aria-label="Twitter"></a>
                    <a href="#" aria-label="LinkedIn">in</a>
                    <a href="#" aria-label="GitHub">GH</a>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <p>© {"Y"|date} WHMCXX Hosting. Crafted for performance.</p>
        </div>
    </footer>
    <script src="{$WEB_ROOT}/templates/whmcxx/js/main.js"></script>
    {foreach from=$footeroutput item=fo}{$fo}{/foreach}
</body>
</html>

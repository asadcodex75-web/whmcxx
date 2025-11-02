        </main>
        <footer class="site-footer">
            <div class="container footer-grid">
                <div>
                    <h3>UniqueHost</h3>
                    <p>Your trusted partner for blazing fast hosting, secure VPS, and enterprise-grade dedicated servers.</p>
                </div>
                <div>
                    <h4>Company</h4>
                    <ul>
                        <li><a href="{$WEB_ROOT}/about.php">About</a></li>
                        <li><a href="{$WEB_ROOT}/contact.php">Contact</a></li>
                        <li><a href="{$WEB_ROOT}/tos.php">Terms of Service</a></li>
                        <li><a href="{$WEB_ROOT}/privacy.php">Privacy Policy</a></li>
                    </ul>
                </div>
                <div>
                    <h4>Hosting</h4>
                    <ul>
                        <li><a href="{$WEB_ROOT}/index.php?page=products">Shared Hosting</a></li>
                        <li><a href="{$WEB_ROOT}/index.php?page=products#vps">Managed VPS</a></li>
                        <li><a href="{$WEB_ROOT}/index.php?page=products#dedicated">Dedicated Servers</a></li>
                        <li><a href="{$WEB_ROOT}/serverstatus.php">Network Status</a></li>
                    </ul>
                </div>
                <div>
                    <h4>Get in touch</h4>
                    <p class="footer-contact">
                        <span>Email:</span> support@uniquehost.io<br>
                        <span>Phone:</span> +1 (800) 000-1234
                    </p>
                    <div class="footer-social">
                        <a href="#" aria-label="Twitter">&#xe61b;</a>
                        <a href="#" aria-label="Facebook">&#xe608;</a>
                        <a href="#" aria-label="LinkedIn">&#xe620;</a>
                    </div>
                </div>
            </div>
            <div class="container footer-meta">
                <p>&copy; {"Y"|date} {$companyname|escape}. All rights reserved.</p>
                <p>Built with care by the UniqueHost design system.</p>
            </div>
        </footer>
    </div>
    <script>
        const navToggle = document.querySelector('.nav-toggle');
        const nav = document.querySelector('.nav');
        navToggle.addEventListener('click', () => {
            nav.classList.toggle('nav-open');
            navToggle.classList.toggle('nav-open');
        });
    </script>
    {foreach from=$footeroutput item=output}{$output}{/foreach}
</body>
</html>

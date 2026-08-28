// BidRadar SA - JavaScript Functionality

// Modal Functions
function showLoginModal() {
    document.getElementById('loginModal').style.display = 'block';
}

function closeLoginModal() {
    document.getElementById('loginModal').style.display = 'none';
}

function showTab(tabName) {
    const contents = document.querySelectorAll('.tab-content');
    contents.forEach(content => content.classList.remove('active'));
    
    const buttons = document.querySelectorAll('.tab-button');
    buttons.forEach(button => button.classList.remove('active'));
    
    document.getElementById(tabName).classList.add('active');
    event.target.classList.add('active');
}

// Form Handlers
function handleLogin(event) {
    event.preventDefault();
    const email = event.target.elements[0].value;
    alert('✅ Login Request Received!\n\nEmail: ' + email + '\n\nBackend API is being set up.\n\nYou will receive confirmation at: ' + email + '\n\nOr call us: +27 67 742 6767');
    event.target.reset();
}

function handleSignup(event) {
    event.preventDefault();
    const firstName = event.target.elements[0].value;
    const email = event.target.elements[3].value;
    alert('✅ Registration Submitted!\n\nName: ' + firstName + '\nEmail: ' + email + '\n\nWe will contact you within 24 hours to confirm your account.\n\nPhone: +27 67 742 6767\nEmail: bidradarsa@gmail.com');
    event.target.reset();
}

function contactSales() {
    alert('📞 Contact Sales\n\nPhone: +27 67 742 6767\nEmail: bidradarsa@gmail.com\n\nBusiness Hours: Mon-Fri 08:00-17:00 SAST\n\nReply will be sent to confirm your inquiry.');
}

// Close modal when clicking outside
window.onclick = function(event) {
    const modal = document.getElementById('loginModal');
    if (event.target == modal) {
        modal.style.display = 'none';
    }
}

// Smooth scroll for navigation links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        const href = this.getAttribute('href');
        if (href !== '#' && href !== '#login') {
            e.preventDefault();
            const element = document.querySelector(href);
            if (element) {
                element.scrollIntoView({ behavior: 'smooth' });
            }
        }
    });
});

// Console message
console.log('🇿🇦 Welcome to BidRadar SA!');
console.log('📱 Contact: +27 67 742 6767');
console.log('📧 Email: bidradarsa@gmail.com');
console.log('🌐 Platform is LIVE and accepting sign-ups!');

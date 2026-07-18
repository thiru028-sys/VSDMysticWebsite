/* Replace the number below before launch: country code + number, no plus sign or spaces. */
const contact = {
  whatsapp: "919000000000",
  whatsappMessage: "Hello! I would like to book a session with Divyas Mystic Sanctuary."
};

document.addEventListener("DOMContentLoaded", () => {
  const bookingUrl = `https://wa.me/${contact.whatsapp}?text=${encodeURIComponent(contact.whatsappMessage)}`;
  document.querySelectorAll("[data-whatsapp]").forEach((link) => { link.href = bookingUrl; });

  const items = document.querySelectorAll(".reveal-on-scroll");
  const observer = new IntersectionObserver((entries) => {
    entries.forEach((entry) => { if (entry.isIntersecting) { entry.target.classList.add("is-visible"); observer.unobserve(entry.target); } });
  }, { threshold: 0.12 });
  items.forEach((item) => observer.observe(item));
});

## dietpi-pihole

A self hosted privacy-focused, network-wide ad-blocker and recursive DNS resolver. It's built on a repurposed ThinkPad Yoga 11e running DietPi Bookworm x86-64, Pi-hole FTL/dnsmasq, Unbound, and a small systemd + rtcwake script.

### Main Steps

  1. Download the Native PC (UEFI) Installer image from dietpi.com/#downloadinfo
  2. Flash DietPi on a USB drive with Balena Etcher
  3. Install DietPi on the laptop by accessing the boot menu, selecting your USB boot device, and following the prompts
  4. Add the laptop's MAC address to your router's DHCP reservation list for a static IP
  5. Install Pi-hole and Unbound from DietPi's GUI, follow prompts
  6. Verify Pi-hole is running on the admin web interface
  7. Add DNS filter blacklists in the web interface, used for privacy / ad-blocking / network speed / security
  8. Push changes to server using Update Gravity in web interface Tools

### Optional Steps

I removed my laptop's battery to avoid battery swelling and other possible risks. Being from a school laptop, my BIOS is restricted and I can't enable boot on AC-power. I instead added a scheduled RTC wake script that runs daily in the case of a power outage.
  
  9. Remove laptop battery
  10. Enable auto-boot when on AC power or with RTC wake

### Notes

  - Pi-hole is built on dnsmasq but uses it's own fork called pihole-FTL
  - To utilize Unbound, point Pi-hole's Custom 1 upstream to 127.0.0.1#5335
  - The RTC wake only works after AC power loss if the coin-cell battery is healthy

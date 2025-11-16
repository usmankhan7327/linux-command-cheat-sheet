# IPTABLES Cheat Sheet – Basics & Common Rules

## List Rules

```bash
iptables -L                   # List all rules
iptables -L -n                # Numeric output
iptables -L -v                # Verbose (counters)
iptables -t nat -L            # NAT table
```

## Flush / Reset Rules

```bash
iptables -F                   # Flush all rules (filter table)
iptables -t nat -F            # Flush NAT table
iptables -X                   # Delete all custom chains
iptables -Z                   # Zero all packet/byte counters
```

## Default Policies

```bash
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD DROP
```

## Allow / Block Traffic

### Allow Incoming SSH

```bash
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
```

### Allow HTTP/HTTPS

```bash
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
```

### Block an IP

```bash
iptables -A INPUT -s 192.168.1.50 -j DROP
```

### Block a Port

```bash
iptables -A INPUT -p tcp --dport 23 -j DROP       # Telnet
```

## NAT / Port Forwarding

### Enable NAT (Masquerading)

```bash
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
```

### Port Forward Example

```bash
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 8080 \
         -j DNAT --to-destination 192.168.1.10:80
```

## Allow Loopback

```bash
iptables -A INPUT -i lo -j ACCEPT
```

## Drop Invalid Packets

```bash
iptables -A INPUT -m state --state INVALID -j DROP
```

## Save & Restore Rules

```bash
iptables-save > /etc/iptables.rules
iptables-restore < /etc/iptables.rules
```

## Useful Flags

```bash
-m state --state NEW,ESTABLISHED # Match connection states
-s 1.2.3.4                        # Source IP
-d 1.2.3.4                        # Destination IP
-p tcp/udp                        # Protocol
--dport 80                        # Destination port
--sport 80                        # Source port
```

## Check Kernel Counters

```bash
iptables -L -v --line-numbers
```

---

# DIG Cheat Sheet – DNS & Reverse Lookups

## Basic DNS Lookup
```bash
dig example.com
````

* Default query is A (IPv4). Look under `ANSWER SECTION`.

## Query Specific Record Types

```bash
dig example.com A       # IPv4
dig example.com AAAA    # IPv6
dig example.com MX      # Mail servers
dig example.com NS      # Name servers
dig example.com TXT     # TXT records
dig example.com CNAME   # Canonical name
```

## Reverse DNS Lookup

```bash
dig -x 8.8.8.8          # PTR record
dig +short -x 8.8.8.8   # Only hostname
```

## Use Specific DNS Server

```bash
dig @8.8.8.8 example.com       # Google DNS
dig @1.1.1.1 example.com MX    # Cloudflare DNS
```

## Short / Clean Output

```bash
dig +short example.com          # Only IP(s)
dig +short -x 8.8.8.8           # Only hostname
```

## Additional Options

```bash
+noall +answer   # Show only answer section
+trace           # Trace resolution from root
+time=2          # Set timeout (seconds)
+stats           # Show query stats
```

## Examples

```bash
dig +short github.com            # Forward lookup
dig +short -x 140.82.121.3      # Reverse lookup
dig @1.1.1.1 example.com MX     # MX records via Cloudflare DNS
```

**Tip:** `man dig` for full options.


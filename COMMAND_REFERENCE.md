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


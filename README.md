# Network Sniffer - Beginner's Guide 🎓

A simple, educational network sniffer to learn how data travels across networks.

## What You'll Learn

- **Packets**: Small units of data traveling through networks
- **IP Addresses**: How computers identify each other (like postal addresses)
- **Protocols**: The "languages" computers use to communicate:
  - **TCP**: Reliable, connection-based (emails, websites)
  - **UDP**: Fast, connectionless (video calls, games)
  - **ICMP**: Network diagnostics (ping)
- **Ports**: Different services on the same computer (like apartment numbers)

## Prerequisites

You need:
1. **Python 3.7+** installed
2. **scapy library** (packet manipulation library)
3. **Root/Admin privileges** (to access network packets)

## Setup

### Step 1: Install Python (if not already installed)
```bash
# Check if Python 3 is installed
python3 --version

# If not, install it:
sudo apt-get install python3 python3-pip   # Linux (Ubuntu/Debian)
brew install python3                        # Mac
```

### Step 2: Install Scapy
```bash
pip3 install scapy
```

### Step 3: Verify Installation
```bash
python3 -c "from scapy.all import sniff; print('✓ Scapy installed successfully!')"
```

## Usage

### Basic: Capture 10 packets
```bash
sudo python3 sniffer.py
```

### Capture custom number of packets
```bash
sudo python3 sniffer.py 20    # Capture 20 packets
sudo python3 sniffer.py 100   # Capture 100 packets
```

### What You'll See

```
======================================================================
NETWORK SNIFFER - Educational Packet Analyzer
======================================================================

Starting packet capture (will capture 10 packets)...

======================================================================
[14:23:45] Packet Captured
======================================================================
Source IP: 192.168.1.5         → Destination IP: 142.250.185.46
Protocol: TCP            TTL: 64
TCP Ports: 54321 → 443
Flags: A
Packet Size: 1234 bytes
```

**Reading the Output:**
- **Source IP**: Where the packet came from
- **Destination IP**: Where the packet is going
- **Protocol**: Communication method (TCP/UDP/ICMP)
- **TTL**: How many hops the packet can travel
- **Ports**: TCP ports for different services
- **Flags**: TCP control signals (A=ACK, S=SYN, F=FIN)
- **Size**: How much data in this packet

## Common Scenarios

### Scenario 1: Web Browsing
When you visit a website:
- Many **TCP:443** packets (secure HTTPS traffic)
- Source ports change frequently
- Destination IP is the web server

### Scenario 2: DNS Lookup
When you type a domain name:
- **UDP:53** packets (DNS queries)
- Destination: Your DNS server (usually 8.8.8.8 or ISP DNS)

### Scenario 3: Ping Test
When you ping a host:
- **ICMP** packets
- Used to check if a host is reachable

## Beginner Challenges 🎯

1. **Challenge 1**: Capture packets and identify web traffic (port 443 or 80)
2. **Challenge 2**: Look for DNS queries (port 53 UDP)
3. **Challenge 3**: Open your browser and capture packets from that traffic
4. **Challenge 4**: Identify your computer's local IP address in the packets

## Key Concepts Explained

### IP Addresses
- **Format**: xxx.xxx.xxx.xxx (four numbers 0-255)
- **Example**: 192.168.1.5
- **Local Network**: 192.168.x.x, 10.x.x.x, 172.16-31.x.x

### Ports
- **Number range**: 0-65535
- **Well-known ports**:
  - 80: HTTP (web)
  - 443: HTTPS (secure web)
  - 53: DNS (domain names)
  - 22: SSH (remote access)
  - 25: SMTP (email sending)
  - 21: FTP (file transfer)

### Protocol Numbers
- **1**: ICMP (ping/diagnostics)
- **6**: TCP (reliable connection)
- **17**: UDP (fast, no connection)

## Troubleshooting

### "Permission denied" or "PermissionError"
**Solution**: Run with `sudo`
```bash
sudo python3 sniffer.py
```

### "No module named 'scapy'"
**Solution**: Install scapy
```bash
pip3 install scapy
```

### "No packets appearing"
**Possible causes**:
- Wrong network interface
- Network is quiet (try opening a website)
- Firewall blocking packets
- Try: `sudo python3 sniffer.py 100` to capture more packets

## Next Steps to Learn More

### Beginner:
- [ ] Capture packets from visiting different websites
- [ ] Identify patterns in UDP vs TCP traffic
- [ ] Use `ping` in another terminal and watch ICMP packets

### Intermediate:
- Modify the code to filter specific IP addresses
- Show only TCP or UDP packets
- Save packet data to a file
- Display packet contents (payload data)

### Advanced:
- Analyze packet headers in detail
- Reconstruct TCP streams
- Detect network patterns/anomalies
- Build a packet statistics dashboard

## Important Notes ⚠️

- **Legal**: Only sniff traffic on networks you own or have permission to access
- **Privacy**: Captured packets may contain sensitive data - handle carefully
- **Ethical**: Use this tool ethically to learn and improve security
- **HTTPS**: Most web traffic is encrypted; you'll see headers but not content

## Resources to Learn More

- [Scapy Official Docs](https://scapy.readthedocs.io/)
- [How TCP/IP Works](https://en.wikipedia.org/wiki/Internet_protocol_suite)
- [Network Ports Explained](https://en.wikipedia.org/wiki/Port_(computer_networking))
- [Wireshark GUI Sniffer](https://www.wireshark.org/) - Advanced tool with visual interface

---

**Happy Sniffing! 🔍** Start small, experiment, and learn how your network works.

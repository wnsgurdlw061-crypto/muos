# 無 OS v2.0 — Kali + Parrot + AI Custom Linux

> **Status: Not yet perfect** ⚠️
> This project is still under development. Bugs may exist and features may change.

A custom Linux distribution combining Kali Linux penetration testing tools, Parrot OS privacy features, and Mu OS's custom AI/automation toolkit.

**"無" (Mu)** — Like a shadow, a security OS that leaves no trace.

## Key Features

- **Kali Linux Security Tools**: nmap, wireshark, metasploit, hydra, sqlmap, nikto, hashcat, john
- **Parrot OS Privacy Protection**: Tor integration, Anonsurf, MAC address randomization
- **Security Hardening**: UFW, AppArmor, fail2ban, rkhunter, auditd
- **AI Integration**: Ollama LLM, Open WebUI, AI analysis tools
- **Custom mu CLI**: 50+ custom tools (recon, cloud, forensics, AI, etc.)
- **Korean Language Support**: Korean locale, keyboard layout, fonts
- **XFCE Desktop**: Lightweight and intuitive user interface

## mu CLI Commands

| Command | Description |
|---------|-------------|
| `mu recon` | Automated recon pipeline |
| `mu scan` | Fast port scanning |
| `mu web` | Web vulnerability scanning |
| `mu osint` | OSINT information gathering |
| `mu ai` | AI agent execution |
| `mu killswitch` | Network kill switch |
| `mu forensics` | Live forensics mode |
| `mu ctf` | CTF challenges |
| `mu status` | System dashboard |

## System Requirements

| Item | Minimum | Recommended |
|------|:-------:|:-----------:|
| CPU | 2-core 1GHz | 4-core 2GHz+ |
| RAM | 2GB | 4GB+ |
| Storage | 20GB | 40GB+ |

## Build Instructions

```bash
# Arch Linux (recommended)
sudo ./build.sh

# Docker
docker build -t mu-os-builder -f Dockerfile.arch .
docker run --privileged -v ${PWD}:/workspace mu-os-builder
```

## Default Credentials

| Account | Password |
|---------|----------|
| root | mu |
| mu | mu |

> **Security notice**: Change default passwords on first boot!

## License
Provided for educational and legitimate security testing purposes only.

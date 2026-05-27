# 無 OS v2.0 — Kali + Parrot + AI Custom Linux

> **Status: 아직 완벽하지 않음 — Not yet perfect** ⚠️
> 아직 개발 중인 프로젝트입니다. 버그가 있을 수 있으며, 기능이 변경될 수 있습니다.
> This project is still under development. Bugs may exist and features may change.

Kali Linux의 침투 테스트 도구, Parrot OS의 개인정보 보호 기능, 그리고 無 OS만의 커스텀 AI/자동화 도구를 결합한 맞춤형 Linux 배포판입니다.

**"無" (Mu)** — 그림자처럼, 凡적痕을 남기지 않는 보안 OS

## 주요 기능

- **Kali Linux 보안 도구**: nmap, wireshark, metasploit, hydra, sqlmap, nikto, hashcat, john
- **Parrot OS 프라이버시 보호**: Tor 통합, Anonsurf, MAC 주소 랜덤화
- **보안 강화**: UFW, AppArmor, fail2ban, rkhunter, auditd
- **AI 통합**: Ollama LLM, Open WebUI, AI 분석 도구
- **Custom mu CLI**: 50+ 커스텀 도구 (recon, cloud, forensics, AI 등)
- **한국어 지원**: 한국어 로케일, 키보드 레이아웃, 폰트
- **XFCE 데스크톱**: 가볍고 직관적인 UI

## mu CLI 도구

| 명령어 | 설명 |
|--------|------|
| `mu recon` | 자동 Recon 파이프라인 |
| `mu scan` | 빠른 포트 스캔 |
| `mu web` | 웹 취약점 스캔 |
| `mu osint` | OSINT 정보 수집 |
| `mu ai` | AI 에이전트 실행 |
| `mu killswitch` | 네트워크 차단 |
| `mu forensics` | Live Forensics |
| `mu ctf` | CTF 챌린지 |
| `mu status` | 시스템 대시보드 |

## 시스템 요구 사항

| 항목 | 최소 | 권장 |
|------|:----:|:----:|
| CPU | 2코어 1GHz | 4코어 2GHz+ |
| RAM | 2GB | 4GB+ |
| 저장 공간 | 20GB | 40GB+ |

## 빌드 방법

```bash
# Arch Linux (추천)
sudo ./build.sh

# Docker
docker build -t mu-os-builder -f Dockerfile.arch .
docker run --privileged -v ${PWD}:/workspace mu-os-builder
```

## 계정 정보

| 계정 | 비밀번호 |
|------|---------|
| root | mu |
| mu | mu |

## 라이선스
교육 및 합법적인 보안 테스트 목적으로 제공됩니다.

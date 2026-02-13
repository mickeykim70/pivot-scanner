
# 📋 안과장( Antigravity ) 개발 지시서: Pivot Scanner 모노레포 초기 셋업

## 🎯 목표
맥미니에서 Pivot Scanner v2.0 모노레포를 완전 새로 생성하고 기본 구조 구축

## 📂 최종 폴더 구조 (생성 후)
```
pivot-scanner/
├── 📁 docs/                    # 문서 (퍼박사/선배님)
│   ├── MASTER_PLAN_v0.1.md
│   └── Phase_0_v0.1.md
├── 📁 data-pipeline/           # Phase 0: 데이터 수집 (Python)
│   ├── requirements.txt
│   ├── scraper.py
│   ├── db_schema.sql
│   └── cron_jobs/
├── 📁 frontend/                # Phase 1: React UI
├── 📁 scripts/                 # 배포/백업 스크립트
├── .gitignore
├── README.md
└── docker-compose.yml         # 나중에 컨테이너화
```

## 🚀 작업 순서 (순서대로 실행)

### 1. 새 GitHub 리포지토리 생성 (선배님 GitHub에서)
```
Repository name: pivot-scanner
Private: Yes
README: Yes
.gitignore: Node
License: MIT
```

### 2. 맥미니 로컬 클론
```bash
cd ~/Projects  # 선배님 선호 폴더
git clone https://github.com/선배님ID/pivot-scanner.git
cd pivot-scanner
```

### 3. 폴더 구조 생성
```bash
mkdir -p docs data-pipeline frontend scripts cron_jobs
touch docs/{MASTER_PLAN_v0.1.md,Phase_0_v0.1.md}
touch data-pipeline/{requirements.txt,scraper.py,db_schema.sql}
touch .gitignore README.md docker-compose.yml
```

### 4. .gitignore 설정
```
# .gitignore 내용
node_modules/
dist/
.env
*.log
__pycache__/
data/
.DS_Store
```

### 5. README.md 기본 내용
```
# Pivot Scanner v2.0

터닝포인트 발견 시스템

## 구조
- docs/: 개발지시서
- data-pipeline/: 데이터 수집
- frontend/: React UI

## 로컬 실행
cd data-pipeline
pip install -r requirements.txt
python scraper.py
```

### 6. 초기 커밋 & 푸시
```bash
git add .
git commit -m "초기 모노레포 구조 생성 - Phase 0 준비"
git push origin main
```

## ✅ 완료 체크리스트
- [ ] GitHub pivot-scanner 리포 생성
- [ ] ~/Projects/pivot-scanner 폴더 완성
- [ ] GitHub에 구조 푸시
- [ ] 선배님께 리포 URL 공유

## ⏭️ 다음 단계
퍼박사가 docs/에 상세 스펙 작성 → Phase 0 데이터 파이프라인 구현

**완료 후 선배님께 보고:**
"pivot-scanner 모노레포 셋업 완료! https://github.com/선배님ID/pivot-scanner"

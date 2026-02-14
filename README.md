# Pivot Scanner v2.0

터닝포인트 발견 시스템

## 구조
- docs/: 개발지시서
- data-pipeline/: 데이터 수집
- frontend/: React UI

## 로컬 실행

### 1. 인프라 시작 (Docker)
```bash
docker compose up -d
```
이 명령은 PostgreSQL 데이터베이스를 시작하고 `data-pipeline/db_schema.sql`을 자동으로 실행합니다.

### 2. 데이터 수집 (Python)
```bash
cd data-pipeline
pip install -r requirements.txt
python scraper.py
```

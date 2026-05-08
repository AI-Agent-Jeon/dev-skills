---
name: cm-develop
description: 설계 기반 코드 구현 + PROGRESS.md 기록 + FEATURE-TRACKING.md 갱신
---

# /cm-develop — 개발

## 실행 조건
- 07_design FEEDBACK.md에 ✅가 있어야 한다

## 수행 절차

### 1. 입력 문서 읽기
- 04_tech/TECH-DECISIONS.md
- 07_design/SYSTEM-ARCHITECTURE.md
- 07_design/ERD.md
- 07_design/API.md
- 07_design/SCREEN-LIST.md
- 02_planning/FEATURE-LIST.md

### 2. CODING-RULES.md 생성
`08_development/CODING-RULES.md` 작성:
- 코딩 컨벤션 (네이밍, 파일 구조)
- 선택한 기술 스택의 Best Practice
- 폴더 구조 규칙
- 커밋 메시지 규칙

### 3. 코드 구현
FEATURE-LIST.md의 기능을 우선순위(P0→P1→P2) 순으로 구현:
- 아키텍처에 맞는 폴더 구조 생성
- DB 스키마 구현 (ERD.md 기반)
- API 엔드포인트 구현 (API.md 기반)
- 프론트엔드 화면 구현 (SCREEN-LIST.md 기반)

### 4. PROGRESS.md 기록
`08_development/PROGRESS.md` 작성:

```markdown
# 개발 진행 현황

## Phase 1: {구현 범위}
- 상태: ✅ 완료 / 🔄 진행 중
- 구현 기능: F001, F002, F003
- 신규 파일: {파일 목록}
- 변경 파일: {파일 목록}
- 기술적 결정: {결정 사항}
```

기능이 구현될 때마다 갱신한다.

### 5. FEATURE-TRACKING.md 갱신
구현 완료된 기능의 "구현" 컬럼을 ✅로 변경.

### 6. DASHBOARD.md 갱신
08단계를 `✅ 완료`로 변경.

### 7. 완료 안내

```
💻 개발이 완료되었습니다!

생성된 문서:
  08_development/PROGRESS.md
  08_development/CODING-RULES.md

구현 기능: {N}개 / 전체 {M}개

👉 검토 후 08_development/FEEDBACK.md를 작성해주세요.
   작성 완료 후 /cm-feedback 을 실행하세요.

💡 추가 개발 스킬:
   /gsd-execute-phase — wave 기반 병렬 실행
   /gsd-debug — 체계적 디버깅
   /dev-investigate — 가설 기반 디버깅
```

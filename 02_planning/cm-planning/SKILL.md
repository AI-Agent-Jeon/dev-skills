---
name: cm-planning
description: PRD, 기능 목록, 도메인 분석, 기능 추적 매트릭스 생성
---

# /cm-planning — 기획

## 실행 조건
- 01_init 단계가 완료되어 있어야 한다 (DASHBOARD.md에서 01 = ✅ 확인)
- 사용자로부터 프로젝트 아이디어/요구사항이 전달되어야 한다

## 수행 절차

### 1. 요구사항 수집
사용자에게 아래 항목을 질문하여 수집:
- 프로젝트 목적과 비전
- 핵심 사용자 (페르소나)
- 반드시 있어야 하는 기능 (Must-have)
- 있으면 좋은 기능 (Nice-to-have)
- 기술적 제약사항

### 2. PRD.md 생성
`02_planning/PRD.md` 작성:
- 제품 비전 (한 문장)
- 목표: 단기(1개월), 중기(3개월), 장기(6개월)
- 성공 지표 (KPI)
- 핵심 기능 요약
- 사용자 페르소나
- 범위 밖 (Out of Scope)

### 3. FEATURE-LIST.md 생성
`02_planning/FEATURE-LIST.md` 작성:
- 기능 ID (F001~)
- 기능명
- 설명
- 우선순위 (P0/P1/P2)
- 트리거 (사용자 행동 또는 시스템 이벤트)
- 수용 기준 (AC: Acceptance Criteria)
- 검증 방법

### 4. DOMAIN-ANALYSIS.md 생성
`02_planning/DOMAIN-ANALYSIS.md` 작성:
- 핵심 도메인 개념 정의
- 도메인 계층 구조
- 도메인별 정책/규칙
- 데이터 흐름
- 외부 시스템 연동

### 5. FEATURE-TRACKING.md 생성
`02_planning/FEATURE-TRACKING.md` 작성:

```markdown
| ID | 기능명 | 시나리오 | 스토리보드 | 화면 | 구현 | 단위테스트 | 시나리오테스트 | 통합테스트 |
|----|--------|---------|-----------|------|------|-----------|-------------|-----------|
| F001 | ... | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ |
```

모든 기능을 행으로 나열하고, 각 단계는 ⬜(미완료) / ✅(완료)로 추적.

### 6. DASHBOARD.md 갱신
01_init/DASHBOARD.md에서 02단계 상태를 `🔄 진행 중` → `✅ 완료`로 변경.

### 7. 완료 안내

```
📋 기획이 완료되었습니다!

생성된 문서:
  02_planning/PRD.md
  02_planning/FEATURE-LIST.md
  02_planning/DOMAIN-ANALYSIS.md
  02_planning/FEATURE-TRACKING.md

👉 검토 후 02_planning/FEEDBACK.md를 작성해주세요.
   작성 완료 후 /cm-feedback 을 실행하세요.

💡 추가 검토 스킬:
   /plan-ceo-review — CEO 관점 전략 리뷰
   /plan-eng-review — 엔지니어링 관점 리뷰
   /plan-autoplan — CEO+설계+엔지니어링 자동 순차 리뷰
```

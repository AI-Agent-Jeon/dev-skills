---
name: cm-modify
description: 이전 단계 산출물 수정 시 영향 분석 + 관련 산출물 갱신
---

# /cm-modify — 이전 단계 수정

## 실행 조건
- 프로젝트가 초기화되어 있어야 한다 (CLAUDE.md 존재)
- 사용자가 수정할 단계와 수정 내용을 명시해야 한다

## 수행 절차

### 1. 수정 대상 파악
사용자에게 확인:
- 어느 단계를 수정할 것인가? (예: 02_planning)
- 무엇을 수정할 것인가? (예: F003 기능 삭제, F015 기능 추가)

### 2. 현재 단계 확인
DASHBOARD.md에서 현재 진행 중인 단계 번호(N)를 확인한다.
수정 대상 단계 번호(M)가 N보다 작은지 확인한다.

### 3. 영향 분석
M+1 ~ N 단계의 모든 산출물 파일을 스캔하여 수정 대상(기능명, 화면명, API명 등)이 언급된 파일을 식별한다.

스캔 대상:
- 05_scenario/SCENARIOS.md — 해당 기능이 포함된 시나리오
- 06_storyboard/STORYBOARD.md — 해당 기능의 화면 분해
- 07_design/SCREEN-LIST.md — 해당 기능의 화면 정의
- 07_design/ERD.md — 해당 기능의 데이터 모델
- 07_design/API.md — 해당 기능의 API
- 08_development/ — 해당 기능의 구현 코드
- 02_planning/FEATURE-TRACKING.md — 해당 기능의 추적 행

### 4. 영향 보고

```
🔍 영향 분석 결과

수정 대상: {단계명} - {수정 내용}

영향 받는 산출물:
  ⚠️ 05_scenario/SCENARIOS.md — SC-003, SC-012에서 해당 기능 언급
  ⚠️ 07_design/SCREEN-LIST.md — SCR-005 화면에서 해당 기능 사용
  ⚠️ 07_design/API.md — POST /api/xxx 엔드포인트 관련
  ✅ 06_storyboard/STORYBOARD.md — 영향 없음

총 {N}개 파일 영향, {M}개 파일 수정 필요

👉 수정을 진행할까요? (y/n)
```

### 5. 수정 실행 (승인 시)
1. 수정 대상 단계의 산출물을 먼저 수정
2. 영향 받는 산출물을 순서대로 갱신
3. FEATURE-TRACKING.md에서 수정된 기능의 영향 받는 단계 체크를 해제(⬜)
4. DASHBOARD.md 비고란에 수정 이력 추가

### 6. 완료 보고

```
✅ 수정 완료

수정된 파일:
  - 02_planning/FEATURE-LIST.md (F003 삭제)
  - 05_scenario/SCENARIOS.md (SC-003, SC-012 갱신)
  - 07_design/SCREEN-LIST.md (SCR-005 갱신)
  - 02_planning/FEATURE-TRACKING.md (F003 행 삭제)

👉 수정된 산출물을 검토해주세요.
```

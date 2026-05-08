---
name: cm-scenario
description: 사용자 시나리오 작성. SCENARIOS.md 생성 + FEATURE-TRACKING.md 갱신
---

# /cm-scenario — 시나리오 작성

## 실행 조건
- 04_tech 단계가 완료되어 있어야 한다

## 수행 절차

### 1. 입력 문서 읽기
- 02_planning/PRD.md
- 02_planning/FEATURE-LIST.md
- 03_concept/CONCEPT-DECISION.md

### 2. SCENARIOS.md 생성
`05_scenario/SCENARIOS.md` 작성:

각 시나리오는 아래 형식:

```markdown
## SC-{번호}: {시나리오 제목}

**관련 기능:** F001, F003
**전제조건:** {사전 상태}
**사용자 유형:** {페르소나}

### 행동 흐름
1. 사용자가 {행동}
2. 시스템이 {반응}
3. 사용자가 {행동}
4. 시스템이 {결과}

### 기대 결과
- {최종 상태/결과}

### 예외 상황
- {예외 케이스}: {대응}
```

시나리오 작성 기준:
- FEATURE-LIST.md의 모든 P0 기능은 최소 1개 시나리오에 포함
- 정상 흐름 + 예외 흐름 모두 작성
- 사용자 관점에서 자연스러운 행동 순서

### 3. FEATURE-TRACKING.md 갱신
02_planning/FEATURE-TRACKING.md에서 시나리오에 포함된 기능의 "시나리오" 컬럼을 ✅로 변경.

### 4. DASHBOARD.md 갱신
05단계를 `✅ 완료`로 변경.

### 5. 완료 안내

```
📖 시나리오가 작성되었습니다!

생성된 문서:
  05_scenario/SCENARIOS.md ({N}개 시나리오)

👉 검토 후 05_scenario/FEEDBACK.md를 작성해주세요.
   작성 완료 후 /cm-feedback 을 실행하세요.
```

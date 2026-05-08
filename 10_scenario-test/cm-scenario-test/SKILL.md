---
name: cm-scenario-test
description: 시나리오 기반 테스트 실행 + SCENARIO-TEST-RESULTS.md 기록
---

# /cm-scenario-test — 시나리오 테스트

## 실행 조건
- 09_unit-test 단계가 완료되어 있어야 한다

## 수행 절차

### 1. 입력 문서 읽기
- 05_scenario/SCENARIOS.md
- 09_unit-test/UNIT-TEST-RESULTS.md

### 2. 시나리오 테스트 실행
SCENARIOS.md의 각 시나리오(SC-001~)를 기반으로:
- 시나리오 흐름대로 기능이 동작하는지 검증
- 정상 흐름 + 예외 흐름 모두 테스트
- UI가 있는 경우 실제 화면에서 검증

### 3. SCENARIO-TEST-RESULTS.md 기록
`10_scenario-test/SCENARIO-TEST-RESULTS.md` 작성:

```markdown
# 시나리오 테스트 결과

## 요약
- 전체 시나리오: {N}개
- ✅ PASS: {P}개
- ❌ FAIL: {F}개
- 실행 시간: {T}

## 시나리오별 결과
| ID | 시나리오명 | 결과 | 비고 |
|----|----------|------|------|
| SC-001 | ... | ✅ | |
| SC-002 | ... | ❌ | {실패 원인} |

## 실패 상세
### SC-{번호}: {시나리오명}
- 실패 단계: {몇 번째 행동에서 실패}
- 기대 결과: {기대}
- 실제 결과: {실제}
- 재현 방법: {단계}
```

### 4. FEATURE-TRACKING.md 갱신
"시나리오테스트" 컬럼을 ✅로 변경.

### 5. DASHBOARD.md 갱신
10단계를 `✅ 완료`로 변경.

### 6. 완료 안내

```
📋 시나리오 테스트가 완료되었습니다!

결과: ✅ {P} PASS / ❌ {F} FAIL

생성된 문서:
  10_scenario-test/SCENARIO-TEST-RESULTS.md

👉 다음 단계: /cm-integration-test 를 실행하세요.
```

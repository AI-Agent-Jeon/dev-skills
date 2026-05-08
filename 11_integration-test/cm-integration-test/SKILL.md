---
name: cm-integration-test
description: 통합 테스트 실행 + INTEGRATION-TEST-RESULTS.md 기록
---

# /cm-integration-test — 통합 테스트

## 실행 조건
- 10_scenario-test 단계가 완료되어 있어야 한다

## 수행 절차

### 1. 통합 테스트 실행
- 모듈 간 연동 테스트
- API 엔드포인트 통합 테스트
- E2E 테스트 (UI→API→DB 전체 흐름)
- 외부 시스템 연동 테스트

### 2. INTEGRATION-TEST-RESULTS.md 기록
`11_integration-test/INTEGRATION-TEST-RESULTS.md` 작성:

```markdown
# 통합 테스트 결과

## 요약
- 테스트 파일: {N}개
- 전체 테스트: {M}개
- ✅ PASS: {P}개
- ❌ FAIL: {F}개
- 실행 시간: {T}

## 카테고리별 결과
| 카테고리 | PASS | FAIL | 비고 |
|---------|------|------|------|
| API 연동 | | | |
| DB 연동 | | | |
| 인증 흐름 | | | |
| E2E | | | |

## 발견된 버그
| ID | 심각도 | 설명 | 상태 |
|----|--------|------|------|
```

### 3. FEATURE-TRACKING.md 갱신
"통합테스트" 컬럼을 ✅로 변경.

### 4. DASHBOARD.md 갱신
11단계를 `✅ 완료`로 변경.

### 5. 완료 안내

```
🧪 통합 테스트가 완료되었습니다!

결과: ✅ {P} PASS / ❌ {F} FAIL

생성된 문서:
  11_integration-test/INTEGRATION-TEST-RESULTS.md

👉 검토 후 11_integration-test/FEEDBACK.md를 작성해주세요.
   작성 완료 후 /cm-feedback 을 실행하세요.

💡 추가 검증 스킬:
   /qa — 브라우저 QA + 자동 수정
   /cso — OWASP + STRIDE 보안 감사
   /benchmark — Core Web Vitals 성능 측정
   /review — PR 코드 리뷰
```

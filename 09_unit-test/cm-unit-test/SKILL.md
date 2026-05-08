---
name: cm-unit-test
description: 단위 테스트 실행 + UNIT-TEST-RESULTS.md 기록
---

# /cm-unit-test — 단위 테스트

## 실행 조건
- 08_development FEEDBACK.md에 ✅가 있어야 한다

## 수행 절차

### 1. 테스트 환경 확인
- 04_tech/TECH-DECISIONS.md에서 테스트 프레임워크 확인
- package.json 또는 프로젝트 설정에서 테스트 명령어 확인

### 2. 단위 테스트 실행
- 테스트가 없는 경우: 주요 함수/모듈에 대한 테스트 작성
- 테스트가 있는 경우: 전체 실행

### 3. UNIT-TEST-RESULTS.md 기록
`09_unit-test/UNIT-TEST-RESULTS.md` 작성:

```markdown
# 단위 테스트 결과

## 요약
- 테스트 파일: {N}개
- 전체 테스트: {M}개
- ✅ PASS: {P}개
- ❌ FAIL: {F}개
- ⏭️ SKIP: {S}개
- 실행 시간: {T}

## 실패 테스트
| 파일 | 테스트명 | 실패 원인 | 심각도 |
|------|---------|----------|--------|

## 커버리지
| 항목 | 비율 |
|------|------|
| Statements | % |
| Branches | % |
| Functions | % |
| Lines | % |
```

### 4. FEATURE-TRACKING.md 갱신
테스트 완료된 기능의 "단위테스트" 컬럼을 ✅로 변경.

### 5. DASHBOARD.md 갱신
09단계를 `✅ 완료`로 변경.

### 6. 완료 안내

```
🧪 단위 테스트가 완료되었습니다!

결과: ✅ {P} PASS / ❌ {F} FAIL / ⏭️ {S} SKIP

생성된 문서:
  09_unit-test/UNIT-TEST-RESULTS.md

👉 다음 단계: /cm-scenario-test 를 실행하세요.
```

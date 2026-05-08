---
name: cm-deploy
description: 배포 실행 + DEPLOY-REPORT.md 기록
---

# /cm-deploy — 배포

## 실행 조건
- 11_integration-test 단계가 완료되어 있어야 한다
- 11_integration-test/FEEDBACK.md에 ✅가 있어야 한다

## 수행 절차

### 1. 배포 준비 확인
- 09_unit-test/UNIT-TEST-RESULTS.md — 전체 PASS 확인
- 10_scenario-test/SCENARIO-TEST-RESULTS.md — 전체 PASS 확인
- 11_integration-test/INTEGRATION-TEST-RESULTS.md — 전체 PASS 확인
- FEATURE-TRACKING.md — 빈 칸 없는지 확인

하나라도 미통과 시 배포를 거부하고 해당 단계로 안내.

### 2. 배포 실행
- 04_tech/TECH-DECISIONS.md에서 배포 환경 확인
- 빌드 실행
- 배포 실행
- 배포 후 헬스 체크 (핵심 기능 스모크 테스트)

### 3. DEPLOY-REPORT.md 기록
`12_deploy/DEPLOY-REPORT.md` 작성:

```markdown
# 배포 리포트

## 요약
- 배포 일시: {YYYY-MM-DD HH:MM}
- 배포 환경: {환경명}
- 빌드 결과: ✅ 성공 / ❌ 실패
- 배포 결과: ✅ 성공 / ❌ 실패
- 헬스 체크: ✅ 정상 / ❌ 이상

## 테스트 현황
| 종류 | 결과 | 비고 |
|------|------|------|
| 단위 테스트 | ✅ PASS | |
| 시나리오 테스트 | ✅ PASS | |
| 통합 테스트 | ✅ PASS | |

## 배포 상세
- 배포 방식: {방식}
- 배포 대상: {URL 또는 서버}
- 롤백 계획: {롤백 방법}

## 헬스 체크 결과
| 항목 | 결과 | 비고 |
|------|------|------|
| 서버 응답 | ✅ | |
| 핵심 기능 | ✅ | |
| DB 연결 | ✅ | |
```

### 4. FEATURE-TRACKING.md 갱신
"배포" 컬럼을 ✅로 변경.

### 5. DASHBOARD.md 갱신
12단계를 `✅ 완료`로 변경.

### 6. 완료 안내

```
🚀 배포가 완료되었습니다!

결과: ✅ 빌드 성공 / ✅ 배포 성공 / ✅ 헬스 체크 정상

생성된 문서:
  12_deploy/DEPLOY-REPORT.md

👉 FEATURE-TRACKING.md에서 모든 기능의 전 단계가 ✅인지 최종 확인해주세요.

💡 추가 스킬:
   /canary — 배포 후 모니터링
   /document-release — 릴리스 노트 생성
   /retro — 엔지니어링 회고
```

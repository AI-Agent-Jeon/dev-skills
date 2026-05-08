---
name: cm-tech
description: 기술 결정 단계 안내. 사용자가 직접 TECH-DECISIONS.md 작성
---

# /cm-tech — 기술 결정

## 실행 조건
- 03_concept 단계가 완료되어 있어야 한다

## 수행 절차

### 1. 컨셉 완료 확인
03_concept/CONCEPT-DECISION.md 파일 존재 여부 확인.

### 2. 기술 결정 안내

```
⚙️ 기술 결정 단계입니다.

아래 파일을 작성해주세요:
👉 04_tech/TECH-DECISIONS.md

작성 항목:
  - 프론트엔드: 프레임워크, 상태 관리, 스타일링
  - 백엔드: 런타임, 프레임워크, 인증
  - 데이터베이스: RDBMS/NoSQL, ORM
  - 인프라: 호스팅, CI/CD, 모니터링
  - 각 선택의 근거

💡 기존 코드베이스가 있다면:
   /gsd-map-codebase 로 아키텍처와 기술 스택을 자동 분석할 수 있습니다.

✅ 작성 완료 후 "기술 결정 완료" 라고 입력해주세요.
```

### 3. 작성 완료 처리
"기술 결정 완료" 입력 시:
1. 04_tech/TECH-DECISIONS.md 파일 존재 확인
2. DASHBOARD.md에서 04단계를 `✅ 완료`로 변경

```
✅ 기술 결정이 완료되었습니다!

👉 다음 단계: /cm-scenario 를 실행하여 시나리오를 작성하세요.
```

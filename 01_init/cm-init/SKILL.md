---
name: cm-init
description: 프로젝트 폴더 구조(01~12단계) 생성 + CLAUDE.md 자동 생성 + DASHBOARD.md 초기화
---

# /cm-init — 프로젝트 초기화

## 실행 조건
- 현재 디렉토리에 CLAUDE.md가 없을 때 (새 프로젝트)

## 수행 절차

### 1. 프로젝트 폴더 구조 생성

```
{project-root}/
├── 01_init/
├── 02_planning/
├── 03_concept/
├── 04_tech/
├── 05_scenario/
├── 06_storyboard/
├── 07_design/
├── 08_development/
├── 09_unit-test/
├── 10_scenario-test/
├── 11_integration-test/
├── 12_deploy/
└── common/
```

모든 폴더를 한번에 생성한다.

### 2. DASHBOARD.md 생성

`01_init/DASHBOARD.md` 파일을 아래 형식으로 생성:

```markdown
# 프로젝트 대시보드

| 단계 | 이름 | 상태 | 비고 |
|------|------|------|------|
| 01 | 프로젝트 초기화 | ✅ 완료 | |
| 02 | 기획 | ⏳ 대기 | |
| 03 | 컨셉 결정 | ⏳ 대기 | |
| 04 | 기술 결정 | ⏳ 대기 | |
| 05 | 시나리오 | ⏳ 대기 | |
| 06 | 스토리보드 | ⏳ 대기 | |
| 07 | 설계 | ⏳ 대기 | |
| 08 | 개발 | ⏳ 대기 | |
| 09 | 단위 테스트 | ⏳ 대기 | |
| 10 | 시나리오 테스트 | ⏳ 대기 | |
| 11 | 통합 테스트 | ⏳ 대기 | |
| 12 | 배포 | ⏳ 대기 | |
```

### 3. CLAUDE.md 자동 생성

프로젝트 루트에 CLAUDE.md를 생성한다. 아래 내용을 포함:

```markdown
## 프로젝트 진행 규칙

이 프로젝트는 dev-skills 패키지를 사용하여 12단계로 진행됩니다.

### 규칙 1: 순서 강제
각 단계는 번호 순서대로 진행한다.
N단계를 시작하려면 N-1단계가 완료되어 있어야 한다.
예외: 03_concept, 04_tech는 사용자가 직접 작성하므로 파일 존재 시 완료로 간주.

### 규칙 2: 피드백 필수
FEEDBACK.md가 존재하는 단계(02, 05, 06, 07, 08, 11)는
FEEDBACK.md에 ✅가 있어야 다음 단계로 진행 가능.

### 규칙 3: 이전 단계 수정 시 영향 분석
N단계 진행 중 M단계(M < N) 수정 요청 시:
1. M단계 산출물 수정
2. M+1 ~ N단계 산출물 중 영향 받는 항목 식별
3. 사용자 승인 후 영향 받는 산출물 갱신

### 규칙 4: FEATURE-TRACKING.md 자동 갱신
스킬 실행 완료 시 해당 단계의 FEATURE-TRACKING.md 컬럼을 체크(✅).
체크되지 않은 기능이 있으면 완료 보고 거부.

### 규칙 5: DASHBOARD ↔ STATE 동기화
CM 스킬이 DASHBOARD.md를 갱신하면 STATE.md도 같이 갱신.
GSD 스킬이 STATE.md를 갱신하면 DASHBOARD.md도 같이 갱신.

### 규칙 6: 스킬 실행 순서
한 단계 안에서 생성 스킬 → 검토 스킬 순서를 지킨다.

## 빠른 참조
- 현재 상태 확인: /cm-progress
- 사용법 안내: /cm-guide
- 피드백 처리: /cm-feedback
- 이전 단계 수정: /cm-modify
```

### 4. 완료 안내

아래 메시지를 출력:

```
✅ 프로젝트가 초기화되었습니다!

생성된 구조:
  01_init/ ~ 12_deploy/ + common/
  CLAUDE.md (프로젝트 규칙)
  01_init/DASHBOARD.md (진행 현황)

👉 다음 단계: /cm-planning 을 실행하여 기획을 시작하세요.
   또는 /office-hours 로 아이디어를 먼저 검증할 수 있습니다.
```

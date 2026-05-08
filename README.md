# dev-skills

소프트웨어 개발용 Claude Code 커스텀 스킬 패키지.
프로젝트를 12단계로 나눠 기획부터 배포까지 체계적으로 수행한다.

## 특징

- **12단계 프로세스**: 초기화 → 기획 → 컨셉 → 기술결정 → 시나리오 → 스토리보드 → 설계 → 개발 → 테스트(3종) → 배포
- **산출물 통일**: 모든 스킬의 결과물이 단계별 폴더에 UPPERCASE-HYPHEN.md로 기록
- **순서 강제**: CLAUDE.md 규칙으로 단계 건너뛰기 방지
- **승인 흐름**: 주요 단계마다 FEEDBACK.md 작성 후 다음 진행
- **4개 소스 통합**: gstack + GSD + Superpowers + ClaudeManager

## 구성

| 출처 | 스킬 수 | 역할 |
|------|---------|------|
| CM (ClaudeManager) | 16 | 프로세스 관리 — 단계 진행, 승인, 수정, 대시보드 |
| gstack | 27 | 실행 도구 — 아이디어 검증, 디자인 리뷰, QA, 보안, 배포 |
| GSD | 27 | 프로젝트 관리 — 상태 추적, 계획, 실행, 검증 |
| Superpowers | 11 | 방법론 — TDD, 병렬 에이전트, 디버깅, 검증 강제 |
| **합계** | **81** | |

## 설치

```bash
git clone https://github.com/AI-Agent-Jeon/dev-skills.git ~/.claude/skills/dev-skills
```

## 빠른 시작

```
1. /cm-guide          사용법 안내
2. /cm-init           프로젝트 폴더 구조 생성
3. /cm-planning       기획 시작
4. /cm-progress       현재 상태 + 다음 할 일 확인
```

## 12단계 흐름

| 단계 | CM 스킬 (필수) | 보조 스킬 (선택) | 주요 산출물 |
|------|---------------|-----------------|-----------|
| 01 초기화 | /cm-init | /office-hours, /gsd-new-project | DASHBOARD, PROJECT, ROADMAP |
| 02 기획 | /cm-planning | /plan-ceo-review, /plan-eng-review, /autoplan | PRD, FEATURE-LIST, FEATURE-TRACKING |
| 03 컨셉 | /cm-concept | — | CONCEPT-DECISION (직접 작성) |
| 04 기술결정 | /cm-tech | /gsd-map-codebase | TECH-DECISIONS (직접 작성) |
| 05 시나리오 | /cm-scenario | — | SCENARIOS |
| 06 스토리보드 | /cm-storyboard | — | STORYBOARD |
| 07 설계 | /cm-design | /design-consultation, /plan-design-review, /design-html | UI-CONCEPT, SCREEN-LIST, ERD, API |
| 08 개발 | /cm-develop | /gsd-execute-phase, /investigate | PROGRESS, SUMMARY |
| 09 단위테스트 | /cm-unit-test | /test-driven-development, /gsd-add-tests | UNIT-TEST-RESULTS |
| 10 시나리오테스트 | /cm-scenario-test | /gsd-verify-work | SCENARIO-TEST-RESULTS, UAT |
| 11 통합테스트 | /cm-integration-test | /qa, /cso, /benchmark, /review | INTEGRATION-TEST-RESULTS, QA-REPORT |
| 12 배포 | — | /ship, /land-and-deploy, /canary, /retro | CANARY-REPORT, RETRO |

## 공통 스킬 (언제든 사용)

| 스킬 | 설명 |
|------|------|
| /cm-progress | 현재 상태 + 다음 할 일 안내 |
| /cm-feedback | 피드백 처리 (승인/수정/질문 라우팅) |
| /cm-modify | 이전 단계 수정 + 영향 분석 |
| /cm-rollback | 단계 되돌리기 |
| /cm-guide | 전체 사용법 안내 |
| /context-save | 세션 상태 저장 |
| /context-restore | 세션 상태 복원 |
| /learn | 프로젝트 교훈 기록 |
| /careful | 안전 모드 (파괴적 명령 경고) |
| /guard | careful + freeze 통합 |

## 패키지 구조

```
dev-skills/
├── 01_init/          초기화 스킬 (4개)
├── 02_planning/      기획 스킬 (9개)
├── 03_concept/       컨셉 스킬 (1개)
├── 04_tech/          기술결정 스킬 (2개)
├── 05_scenario/      시나리오 스킬 (1개)
├── 06_storyboard/    스토리보드 스킬 (1개)
├── 07_design/        설계 스킬 (9개)
├── 08_development/   개발 스킬 (11개)
├── 09_unit-test/     단위테스트 스킬 (3개)
├── 10_scenario-test/ 시나리오테스트 스킬 (3개)
├── 11_integration-test/ 통합테스트 스킬 (9개)
├── 12_deploy/        배포 스킬 (9개)
├── common/           공통 스킬 (19개)
├── README.md
└── SKILL-INDEX.md
```

## 산출물 파일명 규칙

- 케이스: UPPERCASE-HYPHEN (`FEATURE-LIST.md`)
- 확장자: 전부 `.md`
- 접두사: 없음 (폴더 구조로 분류)
- 이모지: 파일명에 사용하지 않음

## 프로세스 규칙

1. **순서 강제**: N단계 시작 전 N-1단계 완료 필수
2. **피드백 필수**: 주요 단계 완료 후 FEEDBACK.md(✅/🔄/❓) 작성 필수
3. **영향 분석**: 이전 단계 수정 시 이후 산출물 영향 범위 자동 식별
4. **추적 갱신**: 스킬 실행 시 FEATURE-TRACKING.md 자동 체크
5. **상태 동기화**: DASHBOARD.md ↔ STATE.md 양방향 동기화
6. **실행 순서**: 같은 단계 내 생성 스킬 → 검토 스킬 순서 준수

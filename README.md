# dev-skills

소프트웨어 개발용 Claude Code 커스텀 슬래시 명령어(`/skill`) 패키지.
프로젝트를 12단계로 나눠 기획부터 배포까지 체계적으로 수행한다.

## 특징

- **12단계 프로세스**: 초기화 → 기획 → 컨셉 → 기술결정 → 시나리오 → 스토리보드 → 설계 → 개발 → 테스트(3종) → 배포
- **산출물 통일**: 모든 스킬의 결과물이 단계별 폴더에 UPPERCASE-HYPHEN.md로 기록
- **순서 강제**: CLAUDE.md 규칙으로 단계 건너뛰기 방지
- **승인 흐름**: 주요 단계마다 FEEDBACK.md 작성 후 다음 진행
- **4개 소스 통합**: gstack + GSD + Superpowers + ClaudeManager
- **혼합형 에이전트**: 무거운 단계는 전담 에이전트 위임, 가벼운 단계는 오케스트레이터 직접 수행
- **모델 최적화**: 단계별로 다른 AI 모델 배정 가능 (비용 절감)

## 구성

| 출처 | 스킬 수 | 역할 |
|------|---------|------|
| CM (ClaudeManager) | 17 | 프로세스 관리 — 단계 진행, 승인, 수정, 대시보드 |
| gstack | 27 | 실행 도구 — 아이디어 검증, 디자인 리뷰, QA, 보안, 배포 |
| GSD | 27 | 프로젝트 관리 — 상태 추적, 계획, 실행, 검증 |
| Superpowers | 11 | 방법론 — TDD, 병렬 에이전트, 디버깅, 검증 강제 |
| **합계** | **82** | |

## 설치

```bash
git clone https://github.com/AI-Agent-Jeon/dev-skills.git ~/.claude/skills/dev-skills
```

### 포함된 런타임 도구

`bin/` 디렉토리에 gstack·GSD 런타임 스크립트가 포함되어 있습니다:

| 경로 | 파일 수 | 크기 | 설명 |
|------|---------|------|------|
| `bin/gstack/` | 60 | ~516KB | gstack 셸 스크립트 (config, review, telemetry 등) |
| `bin/gsd/` | 2 | ~408KB | GSD SDK (gsd-sdk.js, install.js) |

> **참고:** `gstack-global-discover`는 65MB 컴파일 바이너리로 `.ts` 소스만 포함됩니다.
> 필요 시 Node.js로 실행하거나, gstack 원본 패키지에서 복사하세요.

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
| 01 초기화 | /cm-init | /init-office-hours, /gsd-new-project | DASHBOARD, PROJECT, ROADMAP |
| 02 기획 | /cm-planning | /plan-ceo-review, /plan-eng-review, /plan-autoplan | PRD, FEATURE-LIST, FEATURE-TRACKING |
| 03 컨셉 | /cm-concept | — | CONCEPT-DECISION (직접 작성) |
| 04 기술결정 | /cm-tech | /gsd-map-codebase | TECH-DECISIONS (직접 작성) |
| 05 시나리오 | /cm-scenario | — | SCENARIOS |
| 06 스토리보드 | /cm-storyboard | — | STORYBOARD |
| 07 설계 | /cm-design | /design-consultation, /design-eval, /design-html | UI-CONCEPT, SCREEN-LIST, ERD, API |
| 08 개발 | /cm-develop | /gsd-execute-phase, /dev-investigate | PROGRESS, SUMMARY |
| 09 단위테스트 | /cm-unit-test | /test-tdd, /gsd-add-tests | UNIT-TEST-RESULTS |
| 10 시나리오테스트 | /cm-scenario-test | /gsd-verify-work | SCENARIO-TEST-RESULTS, UAT |
| 11 통합테스트 | /cm-integration-test | /test-qa, /test-cso, /test-benchmark, /test-review | INTEGRATION-TEST-RESULTS, QA-REPORT |
| 12 배포 | /cm-deploy | /deploy-ship, /deploy-land, /deploy-canary, /deploy-retro | DEPLOY-REPORT, CANARY-REPORT, RETRO |

---

## 전체 스킬 목록 (82개)

### 01. 초기화 (4개)

| 스킬 | 필수 | 용도 | 산출물 |
|------|:----:|------|--------|
| `/cm-init` | **필수** | 프로젝트 12단계 폴더 구조 생성 + CLAUDE.md 규칙 파일 + DASHBOARD.md 초기화 | CLAUDE.md, DASHBOARD.md |
| `/init-office-hours` | 선택 | 6가지 핵심 질문으로 아이디어의 실현 가능성을 검증 | IDEA-VALIDATION.md |
| `/gsd-new-project` | 선택 | 프로젝트 비전, 요구사항, 로드맵을 정의하여 초기 구조 수립 | PROJECT.md, STATE.md, ROADMAP.md |
| `/gsd-new-milestone` | 선택 | 기존 로드맵에 새 버전 사이클(마일스톤) 추가 | (ROADMAP 갱신) |

### 02. 기획 (9개)

| 스킬 | 필수 | 용도 | 산출물 |
|------|:----:|------|--------|
| `/cm-planning` | **필수** | 요구사항 분석 후 PRD, 기능 목록, 도메인 분석, 추적 매트릭스 생성 | PRD.md, FEATURE-LIST.md, DOMAIN-ANALYSIS.md, FEATURE-TRACKING.md |
| `/plan-autoplan` | 선택 | CEO 관점 → 설계 관점 → 엔지니어링 관점으로 자동 순차 리뷰 | CEO-PLAN.md, ENG-PLAN.md |
| `/plan-ceo-review` | 선택 | CEO/비즈니스 관점에서 전략적 타당성 리뷰 | CEO-PLAN.md |
| `/plan-eng-review` | 선택 | 엔지니어링 관점에서 기술적 실현 가능성 리뷰 | ENG-PLAN.md |
| `/gsd-discuss-phase` | 선택 | 구현 전 결정해야 할 사항들을 수집하고 정리 | CONTEXT.md |
| `/gsd-plan-phase` | 선택 | 기술 리서치 수행 후 구체적인 실행 계획 수립 | REQUIREMENTS.md, PLAN.md, RESEARCH.md, PATTERNS.md |
| `/gsd-analyze-dependencies` | 선택 | 단계 간 의존성을 분석하여 충돌 방지 | (ROADMAP.md 갱신) |
| `/plan-brainstorming` | 선택 | 소크라테스식 질문으로 아이디어를 구체화하고 다듬기 | BRAINSTORM-SPEC.md |
| `/plan-writing-plans` | 선택 | 큰 작업을 2-5분 단위의 작은 구현 계획으로 분해 | IMPLEMENTATION-PLAN.md |

### 03. 컨셉 결정 (1개)

| 스킬 | 필수 | 용도 | 산출물 |
|------|:----:|------|--------|
| `/cm-concept` | **필수** | 제품 방향성, 핵심 경험, 톤앤매너 결정을 안내 (사용자가 직접 작성) | CONCEPT-DECISION.md |

### 04. 기술 결정 (2개)

| 스킬 | 필수 | 용도 | 산출물 |
|------|:----:|------|--------|
| `/cm-tech` | **필수** | 기술 스택 결정을 안내 (사용자가 직접 작성) | TECH-DECISIONS.md |
| `/gsd-map-codebase` | 선택 | 기존 코드베이스의 아키텍처와 기술 스택을 자동 분석 | ARCHITECTURE.md, STACK.md |

### 05. 시나리오 (1개)

| 스킬 | 필수 | 용도 | 산출물 |
|------|:----:|------|--------|
| `/cm-scenario` | **필수** | PRD와 기능 목록을 기반으로 사용자 시나리오(SC-001~) 작성 | SCENARIOS.md |

### 06. 스토리보드 (1개)

| 스킬 | 필수 | 용도 | 산출물 |
|------|:----:|------|--------|
| `/cm-storyboard` | **필수** | 시나리오를 화면 단위 스토리보드(SB-001~)로 분해 | STORYBOARD.md |

### 07. 설계 (9개)

| 스킬 | 필수 | 용도 | 산출물 |
|------|:----:|------|--------|
| `/cm-design` | **필수** | UI 컨셉, 화면 목록, 사용자 흐름, 아키텍처, ERD, API 등 전체 설계 문서 생성 | UI-CONCEPT.md, SCREEN-LIST.md, USER-FLOW.md, SYSTEM-ARCHITECTURE.md, ERD.md, API.md |
| `/design-consultation` | 선택 | 색상, 타이포그래피, 간격 등 디자인 시스템 정의 | DESIGN-SYSTEM.md |
| `/design-html` | 선택 | 설계 문서를 HTML/CSS 프로토타입으로 변환하여 시각적 확인 | (HTML/CSS 파일) |
| `/design-review` | 선택 | 구현된 UI의 시각적 비일관성을 찾아 수정 | DESIGN-REVIEW.md |
| `/design-eval` | 선택 | 디자인을 0-10점으로 평가하고 개선점 제시 | DESIGN-REVIEW.md |
| `/gsd-spec-phase` | 선택 | UI 스펙, AI 스펙 등 페이즈별 상세 스펙 명확화 | UI-SPEC.md, AI-SPEC.md |
| `/gsd-mvp-phase` | 선택 | 전체 계획에서 MVP 범위만 추출하여 축소 | (ROADMAP.md 갱신, PLAN.md) |
| `/gsd-spike` | 선택 | 불확실한 기술 요소에 대한 실험(스파이크) 수행 | SPIKE.md |
| `/gsd-sketch` | 선택 | 다양한 디자인 방향을 탐색하고 비교 | SKETCH.md |

### 08. 개발 (11개)

| 스킬 | 필수 | 용도 | 산출물 |
|------|:----:|------|--------|
| `/cm-develop` | **필수** | 코딩 규칙 정의 + 우선순위별 구현 + 진행률 기록 | PROGRESS.md, CODING-RULES.md |
| `/gsd-execute-phase` | 선택 | wave 기반으로 여러 작업을 병렬 실행 | SUMMARY.md, VERIFICATION.md |
| `/gsd-fast` | 선택 | 사소한 수정(오타, 설정 변경 등)을 즉시 실행 | (코드 커밋) |
| `/gsd-autonomous` | 선택 | 사람 개입 없이 자율적으로 연속 실행 | (코드 + SUMMARY) |
| `/gsd-debug` | 선택 | 버그를 체계적으로 기록하며 디버깅 | DEBUG.md |
| `/gsd-undo` | 선택 | git을 이용한 안전한 코드 되돌리기 | (git 되돌리기) |
| `/dev-investigate` | 선택 | 가설을 세우고 검증하는 방식의 디버깅 | (코드 수정) |
| `/dev-execute` | 선택 | 계획을 배치 단위로 실행하며 사람 체크포인트 삽입 | (코드 커밋) |
| `/dev-subagent` | 선택 | 구현을 서브에이전트에게 위임하고 결과를 리뷰 | (코드 커밋) |
| `/dev-parallel` | 선택 | 독립적인 작업들을 여러 에이전트에게 동시 할당 | (코드 커밋) |
| `/dev-worktree` | 선택 | git worktree로 격리된 작업 공간을 만들어 안전하게 실험 | (워크트리) |

### 09. 단위 테스트 (3개)

| 스킬 | 필수 | 용도 | 산출물 |
|------|:----:|------|--------|
| `/cm-unit-test` | **필수** | 단위 테스트 실행 후 PASS/FAIL/커버리지 결과 기록 | UNIT-TEST-RESULTS.md |
| `/test-tdd` | 선택 | RED → GREEN → REFACTOR 사이클을 강제하는 TDD 방식 | (테스트 코드) |
| `/gsd-add-tests` | 선택 | 기존 코드에 대한 테스트를 자동으로 생성 | (테스트 코드) |

### 10. 시나리오 테스트 (3개)

| 스킬 | 필수 | 용도 | 산출물 |
|------|:----:|------|--------|
| `/cm-scenario-test` | **필수** | SCENARIOS.md 기반으로 시나리오 테스트 실행 + 결과 기록 | SCENARIO-TEST-RESULTS.md |
| `/gsd-verify-work` | 선택 | 사용자 수용 테스트(UAT) 관점에서 기능 검증 | UAT.md |
| `/gsd-validate-phase` | 선택 | 미검증 영역을 감사하여 테스트 누락 방지 | VALIDATION.md |

### 11. 통합 테스트 (9개)

| 스킬 | 필수 | 용도 | 산출물 |
|------|:----:|------|--------|
| `/cm-integration-test` | **필수** | 모듈 간 연동 + API + E2E 통합 테스트 실행 + 결과 기록 | INTEGRATION-TEST-RESULTS.md |
| `/test-qa` | 선택 | 브라우저에서 실제 QA 수행 후 발견된 버그 자동 수정 | QA-REPORT.md |
| `/test-cso` | 선택 | OWASP Top 10 + STRIDE 모델 기반 보안 감사 | SECURITY-REPORT.md |
| `/test-benchmark` | 선택 | Core Web Vitals(LCP, FID, CLS) 등 성능 측정 | BENCHMARK-REPORT.md |
| `/test-review` | 선택 | PR 단위로 코드 리뷰 수행 | (PR 코멘트) |
| `/gsd-code-review` | 선택 | 코드 리뷰 후 이슈를 심각도별로 분류 | CODE-REVIEW.md |
| `/gsd-audit-fix` | 선택 | 감사에서 발견된 이슈를 자동으로 수정하는 파이프라인 | (코드 수정) |
| `/test-verify-completion` | 선택 | 완료 선언 전 검증 증거를 강제로 수집 | (대화형 검증) |
| `/test-request-review` | 선택 | 서브에이전트에게 코드 리뷰를 요청하여 독립적 검토 | (대화형 리뷰) |

### 12. 배포 (10개)

| 스킬 | 필수 | 용도 | 산출물 |
|------|:----:|------|--------|
| `/cm-deploy` | **필수** | 배포 준비 확인 + 빌드·배포 실행 + 헬스 체크 + 결과 기록 | DEPLOY-REPORT.md |
| `/deploy-ship` | 선택 | 테스트 통과 확인 후 PR 자동 생성 | PR |
| `/deploy-land` | 선택 | PR 머지 → 배포 실행 → 헬스 체크까지 일괄 수행 | (배포) |
| `/deploy-canary` | 선택 | 배포 후 일정 기간 모니터링하여 이상 징후 탐지 | CANARY-REPORT.md |
| `/deploy-document` | 선택 | 배포 후 CHANGELOG, README 등 문서를 자동 동기화 | RELEASE-NOTES.md |
| `/deploy-retro` | 선택 | 프로젝트 종료 후 엔지니어링 회고 수행 | RETRO.md |
| `/gsd-ship` | 선택 | GSD 방식으로 PR 생성 (상태 추적 연동) | PR |
| `/gsd-complete-milestone` | 선택 | 마일스톤 완료 처리 + 릴리스 태그 생성 | (릴리스 태그) |
| `/gsd-docs-update` | 선택 | 코드 변경에 맞춰 문서를 자동으로 업데이트 | (문서 갱신) |
| `/deploy-finish-branch` | 선택 | 머지 전 브랜치 정리 (불필요 파일 제거, 충돌 해결) | (브랜치 정리) |

### 공통 — 언제든 사용 가능 (19개)

| 스킬 | 필수 | 용도 | 산출물 |
|------|:----:|------|--------|
| `/cm-progress` | **필수** | 현재 프로젝트 상태 확인 + 다음에 할 일 안내 | (화면 출력) |
| `/cm-feedback` | **필수** | FEEDBACK.md를 읽고 승인(✅)/수정(🔄)/질문(❓)에 따라 다음 액션 라우팅 | (DASHBOARD.md 갱신) |
| `/cm-modify` | 선택 | 이전 단계 산출물 수정 + 이후 단계 영향 범위 분석 | (산출물 갱신, FEATURE-TRACKING.md) |
| `/cm-rollback` | 선택 | 특정 단계를 되돌리고 이후 단계 산출물 정리 | (DASHBOARD.md 갱신) |
| `/cm-guide` | **필수** | 12단계 전체 흐름과 사용 가능한 명령어 안내 | (화면 출력) |
| `/gsd-progress` | 선택 | STATE.md 기반으로 프로젝트 진행 상태 자동 감지 | (화면 출력) |
| `/gsd-health` | 선택 | .planning/ 디렉토리의 파일 무결성 검증 | (화면 출력) |
| `/gsd-phase` | 선택 | 페이즈 추가/수정/삭제/삽입 (ROADMAP CRUD) | (ROADMAP 갱신) |
| `/gsd-session-report` | 선택 | 세션 종료 시 작업 내용 요약 리포트 생성 | common/SESSION-REPORT.md |
| `/context-save` | 선택 | 현재 세션 상태(작업 중인 내용, 결정사항 등)를 파일로 저장 | CONTEXT-SNAPSHOT.md |
| `/context-restore` | 선택 | 저장된 세션 상태를 복원하여 이전 작업 이어서 진행 | (대화형 복원) |
| `/util-learn` | 선택 | 프로젝트에서 얻은 교훈과 인사이트를 누적 기록 | LEARNINGS.md |
| `/util-debug` | 선택 | 관찰 → 가설 → 실험 → 결론 4단계 근본 원인 분석 | (디버깅 과정) |
| `/util-careful` | 선택 | 파괴적 명령(rm, drop 등) 실행 전 경고 표시 | (안전장치) |
| `/util-freeze` | 선택 | 특정 디렉토리의 파일 편집을 제한 | (편집 제한) |
| `/util-guard` | 선택 | careful + freeze를 한번에 적용하는 통합 안전 모드 | (통합 안전) |
| `/util-unfreeze` | 선택 | freeze로 설정한 편집 제한 해제 | (제한 해제) |
| `/util-browse` | 선택 | 헤드리스 Chromium으로 웹 페이지 접근 및 확인 | (브라우저) |
| `/util-browser-cookies` | 선택 | 브라우저 쿠키를 임포트하여 인증된 상태로 접근 | (쿠키 설정) |

---

## 에이전트 구성

혼합형 아키텍처: 무거운 단계는 전담 에이전트, 가벼운 단계는 오케스트레이터.

| 에이전트 | 모델 | 담당 단계 | 비용 |
|---------|------|----------|------|
| planner | opus | 02 기획 | 높음 |
| designer | opus | 07 설계 | 높음 |
| developer | sonnet | 08 개발 | 낮음 |
| tester | sonnet | 09~11 테스트 | 낮음 |
| deployer | sonnet | 12 배포 | 낮음 |
| (오케스트레이터) | — | 03~06 | — |

모델 변경: `agents/*.md`의 `model` 필드 수정 (opus / sonnet / haiku)

## 패키지 구조

```
dev-skills/
├── agents/           에이전트 정의 (5개)
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
├── 12_deploy/        배포 스킬 (10개)
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
7. **에이전트 위임**: 무거운 단계(기획·설계·개발·테스트·배포)는 전담 에이전트에 위임

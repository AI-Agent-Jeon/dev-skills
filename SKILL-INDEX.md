# SKILL-INDEX — 전체 스킬 색인

## agents (5개)

| 에이전트 | 모델 | 담당 단계 | 설명 |
|---------|------|----------|------|
| planner | opus | 02 기획 | 요구사항 분석 + 기획 문서 생성 |
| designer | opus | 07 설계 | UI 철학 + 화면 정의서 + 설계 문서 |
| developer | sonnet | 08 개발 | 코드 구현 |
| tester | sonnet | 09~11 테스트 | 단위·시나리오·통합 테스트 |
| deployer | sonnet | 12 배포 | 빌드·배포·검증 |

## 01_init (4개)

| 스킬 | 출처 | 산출물 | 설명 |
|------|------|--------|------|
| /cm-init | CM | CLAUDE.md, DASHBOARD.md | 프로젝트 폴더 구조 + 규칙 파일 생성 |
| /office-hours | gstack | IDEA-VALIDATION.md | 6가지 질문으로 아이디어 검증 |
| /gsd-new-project | GSD | PROJECT.md, STATE.md, ROADMAP.md | 프로젝트 비전/요구사항 정의 |
| /gsd-new-milestone | GSD | (ROADMAP 갱신) | 새 버전 사이클 추가 |

## 02_planning (9개)

| 스킬 | 출처 | 산출물 | 설명 |
|------|------|--------|------|
| /cm-planning | CM | PRD.md, FEATURE-LIST.md, DOMAIN-ANALYSIS.md, FEATURE-TRACKING.md | 기획 문서 생성 |
| /autoplan | gstack | CEO-PLAN.md, ENG-PLAN.md | CEO+설계+엔지니어링 자동 순차 리뷰 |
| /plan-ceo-review | gstack | CEO-PLAN.md | CEO 관점 전략 리뷰 |
| /plan-eng-review | gstack | ENG-PLAN.md | 엔지니어링 관점 리뷰 |
| /gsd-discuss-phase | GSD | CONTEXT.md | 구현 전 결정사항 수집 |
| /gsd-plan-phase | GSD | REQUIREMENTS.md, PLAN.md, RESEARCH.md, PATTERNS.md | 리서치 + 실행 계획 |
| /gsd-analyze-dependencies | GSD | (ROADMAP.md 갱신) | 단계 간 의존성 충돌 방지 |
| /brainstorming | Superpowers | BRAINSTORM-SPEC.md | 소크라테스식 아이디어 다듬기 |
| /writing-plans | Superpowers | IMPLEMENTATION-PLAN.md | 2-5분 단위 구현 계획 분해 |

## 03_concept (1개)

| 스킬 | 출처 | 산출물 | 설명 |
|------|------|--------|------|
| /cm-concept | CM | CONCEPT-DECISION.md | 컨셉 결정 안내 (사용자 직접 작성) |

## 04_tech (2개)

| 스킬 | 출처 | 산출물 | 설명 |
|------|------|--------|------|
| /cm-tech | CM | TECH-DECISIONS.md | 기술 결정 안내 (사용자 직접 작성) |
| /gsd-map-codebase | GSD | ARCHITECTURE.md, STACK.md | 기존 코드 아키텍처/스택 분석 |

## 05_scenario (1개)

| 스킬 | 출처 | 산출물 | 설명 |
|------|------|--------|------|
| /cm-scenario | CM | SCENARIOS.md | 사용자 시나리오 작성 |

## 06_storyboard (1개)

| 스킬 | 출처 | 산출물 | 설명 |
|------|------|--------|------|
| /cm-storyboard | CM | STORYBOARD.md | 화면 단위 스토리보드 작성 |

## 07_design (9개)

| 스킬 | 출처 | 산출물 | 설명 |
|------|------|--------|------|
| /cm-design | CM | UI-CONCEPT.md, SCREEN-LIST.md, USER-FLOW.md, SYSTEM-ARCHITECTURE.md, ERD.md, API.md | 전체 설계 문서 생성 |
| /design-consultation | gstack | DESIGN-SYSTEM.md | 디자인 시스템 정의 |
| /design-html | gstack | (HTML/CSS) | 설계를 프로토타입으로 변환 |
| /design-review | gstack | DESIGN-REVIEW.md | 시각적 비일관성 수정 |
| /plan-design-review | gstack | DESIGN-REVIEW.md | 디자인 0-10점 평가 |
| /gsd-spec-phase | GSD | UI-SPEC.md, AI-SPEC.md | 페이즈 스펙 명확화 |
| /gsd-mvp-phase | GSD | (ROADMAP.md 갱신, PLAN.md) | MVP 범위 축소 |
| /gsd-spike | GSD | SPIKE.md | 기술 실험 |
| /gsd-sketch | GSD | SKETCH.md | 디자인 탐색 |

## 08_development (11개)

| 스킬 | 출처 | 산출물 | 설명 |
|------|------|--------|------|
| /cm-develop | CM | PROGRESS.md, CODING-RULES.md | 개발 실행 + 진행 기록 |
| /gsd-execute-phase | GSD | SUMMARY.md, VERIFICATION.md | wave 기반 병렬 실행 |
| /gsd-fast | GSD | (코드 커밋) | 사소한 작업 즉시 실행 |
| /gsd-autonomous | GSD | (코드 + SUMMARY) | 자율 연속 실행 |
| /gsd-debug | GSD | DEBUG.md | 체계적 디버깅 기록 |
| /gsd-undo | GSD | (git 되돌리기) | 안전한 되돌리기 |
| /investigate | gstack | (코드 수정) | 가설 기반 디버깅 |
| /executing-plans | Superpowers | (코드 커밋) | 배치 실행 + 사람 체크포인트 |
| /subagent-driven-development | Superpowers | (코드 커밋) | 서브에이전트 위임 + 리뷰 |
| /dispatching-parallel-agents | Superpowers | (코드 커밋) | 병렬 에이전트 동시 실행 |
| /using-git-worktrees | Superpowers | (워크트리) | 격리된 작업 공간 |

## 09_unit-test (3개)

| 스킬 | 출처 | 산출물 | 설명 |
|------|------|--------|------|
| /cm-unit-test | CM | UNIT-TEST-RESULTS.md | 단위 테스트 실행 + 결과 기록 |
| /test-driven-development | Superpowers | (테스트 코드) | RED-GREEN-REFACTOR 강제 |
| /gsd-add-tests | GSD | (테스트 코드) | 테스트 자동 생성 |

## 10_scenario-test (3개)

| 스킬 | 출처 | 산출물 | 설명 |
|------|------|--------|------|
| /cm-scenario-test | CM | SCENARIO-TEST-RESULTS.md | 시나리오 테스트 + 결과 기록 |
| /gsd-verify-work | GSD | UAT.md | 사용자 수용 테스트 |
| /gsd-validate-phase | GSD | VALIDATION.md | 미검증 영역 감사 |

## 11_integration-test (9개)

| 스킬 | 출처 | 산출물 | 설명 |
|------|------|--------|------|
| /cm-integration-test | CM | INTEGRATION-TEST-RESULTS.md | 통합 테스트 + 결과 기록 |
| /qa | gstack | QA-REPORT.md | 브라우저 QA + 버그 수정 |
| /cso | gstack | SECURITY-REPORT.md | OWASP + STRIDE 보안 감사 |
| /benchmark | gstack | BENCHMARK-REPORT.md | Core Web Vitals 성능 측정 |
| /review | gstack | (PR 코멘트) | PR 코드 리뷰 |
| /gsd-code-review | GSD | CODE-REVIEW.md | 코드 리뷰 + 이슈 분류 |
| /gsd-audit-fix | GSD | (코드 수정) | 감사→수정 자율 파이프라인 |
| /verification-before-completion | Superpowers | (검증 증거) | 완료 전 검증 강제 |
| /requesting-code-review | Superpowers | (리뷰 결과) | 서브에이전트 코드 리뷰 |

## 12_deploy (10개)

| 스킬 | 출처 | 산출물 | 설명 |
|------|------|--------|------|
| /cm-deploy | CM | DEPLOY-REPORT.md | 배포 실행 + 결과 기록 |
| /ship | gstack | PR | 테스트→PR 자동 생성 |
| /land-and-deploy | gstack | (배포) | PR 머지→배포→헬스 체크 |
| /canary | gstack | CANARY-REPORT.md | 배포 후 모니터링 |
| /document-release | gstack | RELEASE-NOTES.md | 배포 후 문서 동기화 |
| /retro | gstack | RETRO.md | 엔지니어링 회고 |
| /gsd-ship | GSD | PR | GSD 방식 PR 생성 |
| /gsd-complete-milestone | GSD | (릴리스 태그) | 마일스톤 아카이브 |
| /gsd-docs-update | GSD | (문서 갱신) | 문서 자동 업데이트 |
| /finishing-a-development-branch | Superpowers | (브랜치 정리) | 머지 전 정리 |

## common (19개)

| 스킬 | 출처 | 산출물 | 설명 |
|------|------|--------|------|
| /cm-progress | CM | (화면 출력) | 현재 상태 + 다음 할 일 |
| /cm-feedback | CM | (DASHBOARD.md 갱신) | 피드백 처리 (승인/수정/질문) |
| /cm-modify | CM | (산출물 갱신, FEATURE-TRACKING.md) | 이전 단계 수정 + 영향 분석 |
| /cm-rollback | CM | (DASHBOARD.md 갱신) | 단계 되돌리기 |
| /cm-guide | CM | (화면 출력) | 전체 사용법 안내 |
| /gsd-progress | GSD | (화면 출력) | STATE.md 기반 상태 감지 |
| /gsd-health | GSD | (화면 출력) | .planning/ 무결성 검증 |
| /gsd-phase | GSD | (ROADMAP 갱신) | 페이즈 CRUD |
| /gsd-session-report | GSD | common/SESSION-REPORT.md | 세션 종료 시 요약 리포트 |
| /context-save | gstack | CONTEXT-SNAPSHOT.md | 세션 상태 저장 |
| /context-restore | gstack | (대화형 복원) | 세션 상태 복원 |
| /learn | gstack | LEARNINGS.md | 교훈/인사이트 누적 관리 |
| /systematic-debugging | Superpowers | (디버깅 과정) | 4단계 근본 원인 분석 |
| /careful | gstack | (안전장치) | 파괴적 명령 경고 |
| /freeze | gstack | (편집 제한) | 디렉토리 편집 제한 |
| /guard | gstack | (통합 안전) | careful + freeze |
| /unfreeze | gstack | (제한 해제) | freeze 해제 |
| /browse | gstack | (브라우저) | 헤드리스 Chromium |
| /setup-browser-cookies | gstack | (쿠키 설정) | 브라우저 쿠키 임포트 |

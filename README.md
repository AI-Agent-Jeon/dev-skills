# dev-skills

소프트웨어 개발용 Claude Code 커스텀 스킬 패키지.
gstack, GSD, Superpowers에서 필요한 스킬만 선별하여 구성.

## 구성

| 출처 | 스킬 수 | 역할 |
|------|---------|------|
| gstack | 23 | 전략, 검증, 브라우저 QA, 배포 |
| GSD | 23 | 프로젝트 관리, 실행, 검증 |
| Superpowers | 11 | TDD, 디버깅, 에이전트 관리 |

## 설치

```bash
git clone https://github.com/AI-Agent-Jeon/dev-skills.git ~/.claude/skills/dev-skills
```

## 스킬 목록

### gstack (전략 + 검증 + 도구)

| 커맨드 | 카테고리 | 설명 |
|--------|----------|------|
| /office-hours | Planning | 6가지 핵심 질문으로 제품 아이디어 검증 |
| /plan-ceo-review | Planning | CEO 관점 전략 리뷰 |
| /plan-eng-review | Planning | 엔지니어링 관점 아키텍처 검토 |
| /autoplan | Planning | CEO→설계→엔지니어링 자동 순차 리뷰 |
| /plan-design-review | Design | 디자인 차원 0-10 점수 평가 |
| /design-consultation | Design | 디자인 시스템 구축 |
| /design-html | Design | 목업→프로덕션 HTML/CSS 변환 |
| /design-review | Review | 시각적 비일관성 수정 + 전후 스크린샷 |
| /investigate | Development | 가설 기반 체계적 디버깅 |
| /review | Review | PR 코드 리뷰 + 자동 수정 |
| /cso | Review | OWASP + STRIDE 보안 감사 |
| /qa | Testing | 브라우저 QA + 버그 수정 + 회귀 테스트 |
| /benchmark | Testing | Core Web Vitals 성능 측정 |
| /ship | Deployment | 테스트→커버리지→PR 자동화 |
| /land-and-deploy | Deployment | PR 머지→배포→헬스 체크 |
| /canary | Deployment | 배포 후 모니터링 |
| /document-release | Deployment | 배포 후 문서 업데이트 |
| /browse | Browser | 헤드리스 Chromium 제어 |
| /setup-browser-cookies | Browser | 브라우저 쿠키 임포트 |
| /careful | Utility | 파괴적 명령 실행 전 경고 |
| /freeze | Utility | 파일 편집 디렉토리 제한 |
| /guard | Utility | careful + freeze 동시 활성화 |
| /unfreeze | Utility | freeze 해제 |

### GSD (프로젝트 관리 + 실행)

| 커맨드 | 카테고리 | 설명 |
|--------|----------|------|
| /gsd-new-project | Planning | 프로젝트 초기화 |
| /gsd-discuss-phase | Planning | 계획 전 결정사항 수집 |
| /gsd-plan-phase | Planning | 리서치 + 계획 수립 |
| /gsd-new-milestone | Planning | 다음 버전 사이클 시작 |
| /gsd-phase | Planning | 페이즈 CRUD |
| /gsd-mvp-phase | Planning | MVP 슬라이스 계획 |
| /gsd-spec-phase | Planning | 페이즈 스펙 명확화 |
| /gsd-map-codebase | Analysis | 코드베이스 구조 분석 |
| /gsd-execute-phase | Execution | 웨이브 기반 병렬 실행 |
| /gsd-ship | Execution | PR 자동 생성 |
| /gsd-complete-milestone | Execution | 마일스톤 아카이브 + 릴리스 태그 |
| /gsd-fast | Execution | 사소한 작업 즉시 실행 |
| /gsd-autonomous | Execution | 자율 연속 실행 |
| /gsd-debug | Execution | 체계적 디버깅 |
| /gsd-docs-update | Execution | 문서 자동 업데이트 |
| /gsd-undo | Execution | 안전한 git 되돌리기 |
| /gsd-verify-work | Verification | UAT 검증 |
| /gsd-validate-phase | Verification | 검증 갭 감사 |
| /gsd-code-review | Verification | 코드 리뷰 + 자동 수정 |
| /gsd-audit-fix | Verification | 감사→수정 자율 파이프라인 |
| /gsd-health | Verification | .planning/ 무결성 검증 |
| /gsd-add-tests | Verification | 테스트 자동 생성 |
| /gsd-progress | Utility | 상태 + 다음 단계 감지 |

### Superpowers (품질 + 방법론)

| 커맨드 | 카테고리 | 설명 |
|--------|----------|------|
| /superpowers:brainstorming | Planning | 소크라테스식 아이디어 다듬기 |
| /superpowers:writing-plans | Planning | 2-5분 단위 구현 계획 분해 |
| /superpowers:executing-plans | Execution | 배치 단위 실행 + 사람 체크포인트 |
| /superpowers:subagent-driven-development | Agent | 서브에이전트 위임 + 2단계 리뷰 |
| /superpowers:dispatching-parallel-agents | Agent | 병렬 서브에이전트 동시 배치 |
| /superpowers:test-driven-development | TDD | RED-GREEN-REFACTOR 강제 |
| /superpowers:systematic-debugging | Debugging | 4단계 근본 원인 분석 |
| /superpowers:verification-before-completion | Verification | 완료 전 검증 증거 강제 |
| /superpowers:requesting-code-review | Review | 서브에이전트 코드 리뷰 |
| /superpowers:using-git-worktrees | Utility | 격리된 작업 공간 생성 |
| /superpowers:finishing-a-development-branch | Utility | 브랜치 정리 |

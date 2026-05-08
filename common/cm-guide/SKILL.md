---
name: cm-guide
description: dev-skills 패키지 사용법 안내. 전체 12단계 흐름과 스킬 목록 제공
---

# /cm-guide — 사용 가이드

## 수행 절차

아래 내용을 출력한다:

```
📖 dev-skills 사용 가이드

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

■ 처음 시작하기
  /cm-init        → 프로젝트 폴더 구조 생성

■ 진행 중인 프로젝트 이어하기
  /cm-progress    → 현재 상태 + 다음 할 일 안내

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

■ 12단계 전체 흐름

  01. /cm-init           프로젝트 초기화
      /office-hours      아이디어 검증 (선택)
      /gsd-new-project   프로젝트 정의 (선택)

  02. /cm-planning        기획 (PRD, 기능 목록)
      /plan-ceo-review   CEO 관점 리뷰 (선택)
      /plan-eng-review   엔지니어링 리뷰 (선택)
      → FEEDBACK.md 작성 → /cm-feedback

  03. /cm-concept         컨셉 결정 (직접 작성)

  04. /cm-tech            기술 결정 (직접 작성)

  05. /cm-scenario        시나리오 작성
      → FEEDBACK.md 작성 → /cm-feedback

  06. /cm-storyboard      스토리보드 작성
      → FEEDBACK.md 작성 → /cm-feedback

  07. /cm-design          설계 (UI, 아키텍처, ERD, API)
      /design-consultation  디자인 시스템 정의 (선택)
      /plan-design-review   디자인 점수 평가 (선택)
      → FEEDBACK.md 작성 → /cm-feedback

  08. /cm-develop          개발
      /gsd-execute-phase  wave 기반 실행 (선택)
      → FEEDBACK.md 작성 → /cm-feedback

  09. /cm-unit-test        단위 테스트

  10. /cm-scenario-test    시나리오 테스트

  11. /cm-integration-test 통합 테스트
      /qa               브라우저 QA (선택)
      /cso              보안 감사 (선택)
      /benchmark        성능 측정 (선택)
      → FEEDBACK.md 작성 → /cm-feedback

  12. /ship               배포
      /canary            배포 후 모니터링 (선택)
      /retro             회고 (선택)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

■ 언제든 사용 가능한 스킬

  /cm-progress     현재 상태 + 다음 할 일
  /cm-feedback     피드백 처리 (승인/수정/질문)
  /cm-modify       이전 단계 수정 + 영향 분석
  /cm-rollback     단계 되돌리기
  /context-save    세션 상태 저장
  /context-restore 세션 상태 복원
  /learn           교훈 기록
  /careful         안전 모드 활성화

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

💡 팁:
  - 각 단계의 CM 스킬은 필수, 나머지는 선택입니다
  - 피드백이 필요한 단계는 FEEDBACK.md 작성 후 /cm-feedback
  - 길을 잃으면 /cm-progress 를 실행하세요
```

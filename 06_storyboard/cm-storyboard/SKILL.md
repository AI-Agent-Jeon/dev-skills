---
name: cm-storyboard
description: 시나리오를 화면 단위로 분해한 스토리보드 생성
---

# /cm-storyboard — 스토리보드 작성

## 실행 조건
- 05_scenario FEEDBACK.md에 ✅가 있어야 한다

## 수행 절차

### 1. 입력 문서 읽기
- 05_scenario/SCENARIOS.md
- 02_planning/FEATURE-LIST.md
- 03_concept/CONCEPT-DECISION.md

### 2. STORYBOARD.md 생성
`06_storyboard/STORYBOARD.md` 작성:

각 스토리보드는 아래 형식:

```markdown
## SB-{번호}: {화면/장면 제목}

**관련 시나리오:** SC-001, SC-003
**관련 기능:** F001, F005

### 화면 상태
- 진입 경로: {어디서 이 화면에 도달하는가}
- 이전 화면: {SB-번호}
- 다음 화면: {SB-번호}

### UI 요소
- {요소 1}: {역할/동작}
- {요소 2}: {역할/동작}

### 사용자 행동
1. {행동} → {시스템 반응}
2. {행동} → {화면 전환}

### 시스템 반응
- 데이터 로드: {API/데이터}
- 상태 변경: {변경 내용}
- 알림/피드백: {메시지}
```

### 3. FEATURE-TRACKING.md 갱신
"스토리보드" 컬럼을 ✅로 변경.

### 4. DASHBOARD.md 갱신
06단계를 `✅ 완료`로 변경.

### 5. 완료 안내

```
🎬 스토리보드가 작성되었습니다!

생성된 문서:
  06_storyboard/STORYBOARD.md ({N}개 스토리보드)

👉 검토 후 06_storyboard/FEEDBACK.md를 작성해주세요.
   작성 완료 후 /cm-feedback 을 실행하세요.
```

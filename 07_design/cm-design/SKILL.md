---
name: cm-design
description: UI 설계 + 시스템 아키텍처 + ERD + API 설계 문서 생성
---

# /cm-design — 설계

## 실행 조건
- 06_storyboard FEEDBACK.md에 ✅가 있어야 한다

## 수행 절차

### 1. 입력 문서 읽기
- 02_planning/PRD.md, FEATURE-LIST.md
- 03_concept/CONCEPT-DECISION.md
- 04_tech/TECH-DECISIONS.md
- 05_scenario/SCENARIOS.md
- 06_storyboard/STORYBOARD.md

### 2. UI-CONCEPT.md 생성
`07_design/UI-CONCEPT.md` 작성:
- 디자인 철학 (한 문장)
- 핵심 디자인 원칙 (4개)
- 비주얼 시스템: 컬러 팔레트, 타이포그래피, 스페이싱 스케일
- 컴포넌트 가이드라인

### 3. SCREEN-LIST.md 생성
`07_design/SCREEN-LIST.md` 작성:
- 화면별 ID (SCR-{도메인}-{번호})
- URL 경로
- 관련 기능 (F-ID)
- 컴포넌트 목록
- 데이터 소스
- 반응형 설계 (데스크톱/모바일)

### 4. USER-FLOW.md 생성
`07_design/USER-FLOW.md` 작성:
- 주요 태스크별 사용자 동선
- 화면 간 전환 흐름 (화살표 표기)
- 조건부 분기
- 데스크톱/모바일 분기

### 5. SYSTEM-ARCHITECTURE.md 생성
`07_design/SYSTEM-ARCHITECTURE.md` 작성:
- 시스템 계층도 (프론트엔드/백엔드/DB)
- 통신 구조 (REST/WebSocket/SSE)
- 외부 연동
- 보안 경계

### 6. ERD.md 생성
`07_design/ERD.md` 작성:
- 테이블 정의 (컬럼, 타입, 제약조건)
- 관계도 (1:N, N:M)
- 인덱스 전략
- 마이그레이션 계획

### 7. API.md 생성
`07_design/API.md` 작성:
- 공통 규칙 (인증, 응답 포맷, 에러 코드)
- 엔드포인트별: Method, Path, Request, Response
- WebSocket 이벤트 (있는 경우)

### 8. FEATURE-TRACKING.md 갱신
"화면" 컬럼을 ✅로 변경.

### 9. DASHBOARD.md 갱신
07단계를 `✅ 완료`로 변경.

### 10. 완료 안내

```
🖥️ 설계가 완료되었습니다!

생성된 문서:
  07_design/UI-CONCEPT.md
  07_design/SCREEN-LIST.md
  07_design/USER-FLOW.md
  07_design/SYSTEM-ARCHITECTURE.md
  07_design/ERD.md
  07_design/API.md

👉 검토 후 07_design/FEEDBACK.md를 작성해주세요.
   작성 완료 후 /cm-feedback 을 실행하세요.

💡 추가 설계 스킬:
   /design-consultation — 디자인 시스템 정의
   /plan-design-review — 디자인 0-10점 평가
   /design-html — 설계를 HTML/CSS 프로토타입으로 변환
   /gsd-spike — 기술적 불확실성 실험
```

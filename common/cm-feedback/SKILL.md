---
name: cm-feedback
description: FEEDBACK.md를 읽고 승인/수정/질문 상태에 따라 다음 액션을 라우팅
---

# /cm-feedback — 피드백 처리

## 실행 조건
- 현재 단계의 산출물이 생성되어 있어야 한다
- 해당 단계의 FEEDBACK.md가 작성되어 있어야 한다

## 수행 절차

### 1. 현재 단계 파악
DASHBOARD.md를 읽어서 현재 진행 중인 단계를 확인한다.

### 2. FEEDBACK.md 읽기
해당 단계 폴더의 FEEDBACK.md를 읽는다.

### 3. 상태 판단 및 라우팅

FEEDBACK.md 내용에서 상태를 판단:

**✅ 승인인 경우:**
1. DASHBOARD.md에서 해당 단계를 `✅ 완료`로 변경
2. STATE.md가 있으면 동기화
3. 다음 단계 안내:

```
✅ {단계명} 단계가 승인되었습니다!

👉 다음 단계: {다음 단계명}
   실행할 스킬: /{다음 CM 스킬}
```

**🔄 수정요청인 경우:**
1. 수정 요청 내용을 파싱
2. 해당 산출물의 수정 대상 식별
3. 수정 실행:

```
🔄 수정 요청을 확인했습니다.

수정 내용:
  - {수정 항목 1}
  - {수정 항목 2}

수정을 진행하겠습니다...
```

4. 수정 완료 후:
```
수정이 완료되었습니다.
👉 다시 검토 후 FEEDBACK.md를 갱신해주세요.
   갱신 후 /cm-feedback 을 다시 실행하세요.
```

**❓ 질문인 경우:**
1. 질문 내용을 파싱
2. 가능한 답변을 제공 (A/B/C 옵션 형태)
3. 결정은 사용자에게 맡김:

```
❓ 질문을 확인했습니다.

Q: {질문 내용}

A 옵션: {설명}
B 옵션: {설명}
C 옵션: {설명}

👉 결정 후 FEEDBACK.md에 결정 내용을 추가하고
   /cm-feedback 을 다시 실행하세요.
```

### 단계별 다음 스킬 매핑

| 완료 단계 | 다음 스킬 | 설명 |
|----------|----------|------|
| 02_planning | /cm-concept | 컨셉 결정 안내 |
| 03_concept | /cm-tech | 기술 결정 안내 |
| 04_tech | /cm-scenario | 시나리오 작성 |
| 05_scenario | /cm-storyboard | 스토리보드 작성 |
| 06_storyboard | /cm-design | 설계 시작 |
| 07_design | /cm-develop | 개발 시작 |
| 08_development | /cm-unit-test | 단위 테스트 |
| 09_unit-test | /cm-scenario-test | 시나리오 테스트 |
| 10_scenario-test | /cm-integration-test | 통합 테스트 |
| 11_integration-test | (12_deploy 스킬) | 배포 시작 |

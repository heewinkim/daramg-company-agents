# 🐿️ 다람쥐 회사

Claude의 멀티 에이전트 기능을 활용한 개인용 AI 팀 구성 템플릿.

사장, 탐험, 일꾼, 꼼꼼 다람쥐가 역할을 나눠 복잡한 태스크를 처리한다.

---

## 구조

```
👤 회장 다람쥐 (You)
  + 🐿️ 비서 다람쥐 (Claude - 오케스트레이터)
        ↓
    🎩 사장 다람쥐  ← boss_daramg.md
        ├── 🔭 탐험 다람쥐  ← explore_daramg.md
        ├── 🔨 일꾼 다람쥐  ← work_daramg.md
        └── 🔍 꼼꼼 다람쥐  ← review_daramg.md
```

| 에이전트 | 파일 | 역할 |
|---------|------|------|
| 🎩 사장 다람쥐 | `boss_daramg.md` | 지시 해석 → 태스크 분배 → 결과 취합 |
| 🔭 탐험 다람쥐 | `explore_daramg.md` | 기술 조사, 아키텍처 설계, 계획 수립 |
| 🔨 일꾼 다람쥐 | `work_daramg.md` | 실제 코드 작성 및 구현 |
| 🔍 꼼꼼 다람쥐 | `review_daramg.md` | 코드 리뷰, 테스트, 품질 검수 |

---

## 흐름

```
지시
 ↓
사장 다람쥐 (태스크 분해 & 분배)
 ↓
탐험 다람쥐 → docs/research/summary.md
 ↓
일꾼 다람쥐 → docs/executor/summary.md   (병렬 실행 가능)
 ↓
꼼꼼 다람쥐 → docs/reviewer/summary.md
 ↓
사장 다람쥐 (결과 취합 & 보고)
```

각 다람쥐는 `docs/` 안의 summary.md를 통해 소통한다.

---

## 도토리 창고 (공유 문서)

```
docs/
├── research/
│   └── summary.md    ← 탐험 보고서
├── executor/
│   └── summary.md    ← 일꾼 보고서
└── reviewer/
    └── summary.md    ← 꼼꼼 보고서
```

---

## 시작하기

```bash
./setup.sh
```

이후 Claude Code에서 각 `.md` 파일을 시스템 프롬프트로 활용해 에이전트를 실행한다.

---

## 요구사항

- [Claude Code](https://claude.ai/code)
- Claude의 Agent tool 사용 권한

[OPEN]

# Debug Session: analysis-name-not-saved

## Symptom
- Request payload includes `name` (e.g., CNStock 688689 "联讯仪器") with `async_submit=true`
- Expected: `qd_analysis_memory.name` becomes "联讯仪器" for the corresponding memory row
- Actual: DB row still shows empty / symbol / not updated

## Repro Steps
1. Frontend triggers `POST /api/fast-analysis/analyze` with `async_submit=true` and `name` present
2. Backend creates pending memory row, runs async worker, finalizes pending row
3. Query `qd_analysis_memory` for the `pending_id` (task id) to verify `name`

## Hypotheses (to validate with runtime logs)
- H1: Route receives `name`, but async worker does not get it (parameter not passed / overwritten before thread starts)
- H2: `FastAnalysisService.analyze()` receives `name`, but overwrites `result["name"]` later (fallback-to-symbol logic)
- H3: `finalize_pending_task()` runs but updates `name` as NULL/empty due to payload format or DB update failure
- H4: Async worker crashes before calling `finalize_pending_task()` (exception swallowed), leaving pending row unchanged
- H5: You are checking a different DB / schema / environment than the backend is writing to (DATABASE_URL mismatch)

## Evidence Log Plan
- A: Route `/analyze` request → parsed `name`, `pending_id`, `inflight_key`
- B: Async worker start/end → received `name`, analyze result `name`, `memory_id`, finalize result
- C: DB create_pending_task → inserted `id`, `name`
- D: DB finalize_pending_task → updated rowcount, updated `name`

## Status
- Current runId: pre


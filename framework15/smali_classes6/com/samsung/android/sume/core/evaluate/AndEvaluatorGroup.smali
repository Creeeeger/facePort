.class Lcom/samsung/android/sume/core/evaluate/AndEvaluatorGroup;
.super Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;
.source "AndEvaluatorGroup.java"


# direct methods
.method varargs constructor blacklist <init>([Lcom/samsung/android/sume/core/evaluate/Evaluator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;-><init>([Lcom/samsung/android/sume/core/evaluate/Evaluator;)V

    return-void
.end method

.method static synthetic blacklist lambda$evaluate$0(Ljava/lang/Object;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Z
    .locals 1

    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist evaluate(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/evaluate/AndEvaluatorGroup;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/evaluate/AndEvaluatorGroup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/evaluate/AndEvaluatorGroup$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

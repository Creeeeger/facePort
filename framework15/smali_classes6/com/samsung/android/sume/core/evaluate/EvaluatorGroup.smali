.class abstract Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;
.super Ljava/lang/Object;
.source "EvaluatorGroup.java"

# interfaces
.implements Lcom/samsung/android/sume/core/evaluate/Evaluator;


# instance fields
.field private blacklist evaluators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist sorted:Z


# direct methods
.method varargs constructor blacklist <init>([Lcom/samsung/android/sume/core/evaluate/Evaluator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->sorted:Z

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->evaluators:Ljava/util/List;

    return-void
.end method

.method static synthetic blacklist lambda$toString$0(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method blacklist add(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->evaluators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->sorted:Z

    return-object p0
.end method

.method public blacklist and(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .locals 3

    instance-of v0, p0, Lcom/samsung/android/sume/core/evaluate/AndEvaluatorGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->add(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/sume/core/evaluate/AndEvaluatorGroup;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/evaluate/AndEvaluatorGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sume/core/evaluate/AndEvaluatorGroup;->add(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/sume/core/evaluate/AndEvaluatorGroup;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/sume/core/evaluate/Evaluator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/evaluate/AndEvaluatorGroup;-><init>([Lcom/samsung/android/sume/core/evaluate/Evaluator;)V

    return-object v0
.end method

.method blacklist back()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable;",
            ">()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->sort()V

    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->evaluators:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->evaluators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    instance-of v1, v0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->getValue()Ljava/lang/Comparable;

    move-result-object v1

    return-object v1

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->back()Ljava/lang/Comparable;

    move-result-object v1

    return-object v1
.end method

.method public blacklist compareTo(Lcom/samsung/android/sume/core/evaluate/Evaluator;)I
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->front()Ljava/lang/Comparable;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->getValue()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->sort()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->front()Ljava/lang/Comparable;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->front()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->compareTo(Lcom/samsung/android/sume/core/evaluate/Evaluator;)I

    move-result p1

    return p1
.end method

.method blacklist front()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable;",
            ">()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->sort()V

    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->evaluators:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    instance-of v1, v0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->getValue()Ljava/lang/Comparable;

    move-result-object v1

    return-object v1

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->front()Ljava/lang/Comparable;

    move-result-object v1

    return-object v1
.end method

.method blacklist getEvaluators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->evaluators:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()TV;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "EvaluatorGroup doesn\'t support this!!!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getValueType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->evaluators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist or(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .locals 3

    instance-of v0, p0, Lcom/samsung/android/sume/core/evaluate/OrEvaluatorGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->add(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/sume/core/evaluate/OrEvaluatorGroup;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/evaluate/OrEvaluatorGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sume/core/evaluate/OrEvaluatorGroup;->add(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/sume/core/evaluate/OrEvaluatorGroup;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/sume/core/evaluate/Evaluator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/evaluate/OrEvaluatorGroup;-><init>([Lcom/samsung/android/sume/core/evaluate/Evaluator;)V

    return-object v0
.end method

.method blacklist remove(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->evaluators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method blacklist sort()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->sorted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->evaluators:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->sorted:Z

    :cond_0
    return-void
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->evaluators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    instance-of v0, p0, Lcom/samsung/android/sume/core/evaluate/OrEvaluatorGroup;

    if-eqz v0, :cond_0

    const-string v0, " or "

    goto :goto_0

    :cond_0
    const-string v0, " and "

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->evaluators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

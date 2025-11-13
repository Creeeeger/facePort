.class public Lcom/samsung/android/sume/core/evaluate/EvaluableMap;
.super Ljava/lang/Object;
.source "EvaluableMap.java"

# interfaces
.implements Lcom/samsung/android/sume/core/evaluate/Evaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/evaluate/Evaluator;"
    }
.end annotation


# instance fields
.field private final blacklist data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            "TT;>;)V"
        }
    .end annotation

    .line 12
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/EvaluableMap;, "Lcom/samsung/android/sume/core/evaluate/EvaluableMap<TT;>;"
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/sume/core/evaluate/Evaluator;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/sume/core/evaluate/EvaluableMap;->data:Ljava/util/Map;

    .line 14
    return-void
.end method

.method static synthetic blacklist lambda$get$0(Ljava/lang/Object;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "e"    # Lcom/samsung/android/sume/core/evaluate/Evaluator;

    .line 55
    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getOr$2(Ljava/lang/Object;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "e"    # Lcom/samsung/android/sume/core/evaluate/Evaluator;

    .line 64
    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist and(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .locals 1
    .param p1, "other"    # Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/EvaluableMap;, "Lcom/samsung/android/sume/core/evaluate/EvaluableMap<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist compareTo(Lcom/samsung/android/sume/core/evaluate/Evaluator;)I
    .locals 1
    .param p1, "o"    # Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/EvaluableMap;, "Lcom/samsung/android/sume/core/evaluate/EvaluableMap<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    .line 9
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/EvaluableMap;, "Lcom/samsung/android/sume/core/evaluate/EvaluableMap<TT;>;"
    check-cast p1, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/evaluate/EvaluableMap;->compareTo(Lcom/samsung/android/sume/core/evaluate/Evaluator;)I

    move-result p1

    return p1
.end method

.method public blacklist evaluate(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)Z"
        }
    .end annotation

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/EvaluableMap;, "Lcom/samsung/android/sume/core/evaluate/EvaluableMap<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)TT;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/EvaluableMap;, "Lcom/samsung/android/sume/core/evaluate/EvaluableMap<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluableMap;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/evaluate/EvaluableMap$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/evaluate/EvaluableMap$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    .line 55
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/evaluate/EvaluableMap$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/evaluate/EvaluableMap$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/evaluate/EvaluableMap;)V

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda5;-><init>()V

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    return-object v0
.end method

.method public blacklist getOr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;TT;)TT;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/EvaluableMap;, "Lcom/samsung/android/sume/core/evaluate/EvaluableMap<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TV;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluableMap;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/evaluate/EvaluableMap$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/evaluate/EvaluableMap$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;)V

    .line 64
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/evaluate/EvaluableMap$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/evaluate/EvaluableMap$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/evaluate/EvaluableMap;)V

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
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

    .line 43
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/EvaluableMap;, "Lcom/samsung/android/sume/core/evaluate/EvaluableMap<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "EvaluableMap doesn\'t support this!!!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getValueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/EvaluableMap;, "Lcom/samsung/android/sume/core/evaluate/EvaluableMap<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic blacklist lambda$get$1$com-samsung-android-sume-core-evaluate-EvaluableMap(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Lcom/samsung/android/sume/core/evaluate/Evaluator;

    .line 57
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/EvaluableMap;, "Lcom/samsung/android/sume/core/evaluate/EvaluableMap<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluableMap;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getOr$3$com-samsung-android-sume-core-evaluate-EvaluableMap(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Lcom/samsung/android/sume/core/evaluate/Evaluator;

    .line 66
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/EvaluableMap;, "Lcom/samsung/android/sume/core/evaluate/EvaluableMap<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/EvaluableMap;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist or(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .locals 1
    .param p1, "other"    # Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 28
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/EvaluableMap;, "Lcom/samsung/android/sume/core/evaluate/EvaluableMap<TT;>;"
    const/4 v0, 0x0

    return-object v0
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

    .line 33
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/EvaluableMap;, "Lcom/samsung/android/sume/core/evaluate/EvaluableMap<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

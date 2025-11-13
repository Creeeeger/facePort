.class public Lcom/samsung/android/sume/Result;
.super Ljava/lang/Object;
.source "Result.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Result"


# instance fields
.field private blacklist appliedModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/nn/Model;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist buffer:Ljava/nio/ByteBuffer;

.field private blacklist contentsId:I

.field private blacklist event:Lcom/samsung/android/sume/Event;

.field private blacklist extra:Lcom/samsung/android/sume/PDKMap;

.field private blacklist isFinal:Z


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/Event;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/android/sume/Event;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/samsung/android/sume/PDKMap;

    invoke-direct {v0}, Lcom/samsung/android/sume/PDKMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/Result;->extra:Lcom/samsung/android/sume/PDKMap;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/sume/Result;->event:Lcom/samsung/android/sume/Event;

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/sume/Event;->isError()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sume/Result;->isFinal:Z

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/Reply;)V
    .locals 2
    .param p1, "reply"    # Lcom/samsung/android/sume/Reply;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reply"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/samsung/android/sume/PDKMap;

    invoke-direct {v0}, Lcom/samsung/android/sume/PDKMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/Result;->extra:Lcom/samsung/android/sume/PDKMap;

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/sume/Reply;->getEvent()Lcom/samsung/android/sume/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/Result;->event:Lcom/samsung/android/sume/Event;

    .line 29
    invoke-virtual {p1}, Lcom/samsung/android/sume/Reply;->getContentsId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/Result;->contentsId:I

    .line 30
    iget-object v0, p0, Lcom/samsung/android/sume/Result;->event:Lcom/samsung/android/sume/Event;

    invoke-virtual {v0}, Lcom/samsung/android/sume/Event;->isError()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sume/Result;->event:Lcom/samsung/android/sume/Event;

    sget-object v1, Lcom/samsung/android/sume/Event;->INFO_FINISH_RUN:Lcom/samsung/android/sume/Event;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/sume/Result;->isFinal:Z

    .line 31
    return-void
.end method

.method static synthetic blacklist lambda$isApplied$0(Lcom/samsung/android/sume/nn/Model;Lcom/samsung/android/sume/nn/Model;)Z
    .locals 1
    .param p0, "model"    # Lcom/samsung/android/sume/nn/Model;
    .param p1, "e"    # Lcom/samsung/android/sume/nn/Model;

    .line 70
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method blacklist clear()V
    .locals 1

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/Result;->buffer:Ljava/nio/ByteBuffer;

    .line 114
    iget-object v0, p0, Lcom/samsung/android/sume/Result;->extra:Lcom/samsung/android/sume/PDKMap;

    invoke-virtual {v0}, Lcom/samsung/android/sume/PDKMap;->clear()V

    .line 115
    return-void
.end method

.method public blacklist containsExtra(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/samsung/android/sume/Result;->extra:Lcom/samsung/android/sume/PDKMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/PDKMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 119
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/Result;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 127
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 119
    return v0
.end method

.method public blacklist getAppliedModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/nn/Model;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/samsung/android/sume/Result;->appliedModels:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/sume/Result;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public blacklist getContentsId()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/samsung/android/sume/Result;->contentsId:I

    return v0
.end method

.method public blacklist getContentsPosition()I
    .locals 4

    .line 109
    iget v0, p0, Lcom/samsung/android/sume/Result;->contentsId:I

    iget-object v1, p0, Lcom/samsung/android/sume/Result;->extra:Lcom/samsung/android/sume/PDKMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "offset"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/sume/PDKMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getEvent()Lcom/samsung/android/sume/Event;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/sume/Result;->event:Lcom/samsung/android/sume/Event;

    return-object v0
.end method

.method public blacklist getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/samsung/android/sume/Result;->extra:Lcom/samsung/android/sume/PDKMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/PDKMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtra()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/samsung/android/sume/Result;->extra:Lcom/samsung/android/sume/PDKMap;

    return-object v0
.end method

.method public blacklist isApplied(Lcom/samsung/android/sume/nn/Model;)Z
    .locals 2
    .param p1, "model"    # Lcom/samsung/android/sume/nn/Model;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/samsung/android/sume/Result;->appliedModels:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 69
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/nn/Model;)V

    .line 70
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 68
    return v0
.end method

.method public blacklist isError()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/sume/Result;->event:Lcom/samsung/android/sume/Event;

    invoke-virtual {v0}, Lcom/samsung/android/sume/Event;->isError()Z

    move-result v0

    return v0
.end method

.method public blacklist isFinal()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/samsung/android/sume/Result;->isFinal:Z

    return v0
.end method

.method public blacklist isOk()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/samsung/android/sume/Result;->event:Lcom/samsung/android/sume/Event;

    invoke-virtual {v0}, Lcom/samsung/android/sume/Event;->isOk()Z

    move-result v0

    return v0
.end method

.method public blacklist isUnsupportedContent()Z
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/samsung/android/sume/Result;->event:Lcom/samsung/android/sume/Event;

    sget-object v1, Lcom/samsung/android/sume/Event;->WARN_UNSUPPORTED_CONTENT:Lcom/samsung/android/sume/Event;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$equals$1$com-samsung-android-sume-Result(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Object;

    .line 120
    instance-of v0, p2, Lcom/samsung/android/sume/Result;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 121
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sume/Result;

    iget-object v0, v0, Lcom/samsung/android/sume/Result;->event:Lcom/samsung/android/sume/Event;

    iget-object v3, p0, Lcom/samsung/android/sume/Result;->event:Lcom/samsung/android/sume/Event;

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 122
    :cond_1
    instance-of v0, p2, Lcom/samsung/android/sume/Event;

    if-eqz v0, :cond_3

    .line 123
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sume/Event;

    iget-object v3, p0, Lcom/samsung/android/sume/Result;->event:Lcom/samsung/android/sume/Event;

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 125
    :cond_3
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setAppliedModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appliedModels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/nn/Model;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p1, "appliedModels":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/nn/Model;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/Result;->appliedModels:Ljava/util/List;

    .line 80
    return-void
.end method

.method public blacklist setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/samsung/android/sume/Result;->buffer:Ljava/nio/ByteBuffer;

    .line 60
    return-void
.end method

.method public blacklist setEvent(Lcom/samsung/android/sume/Event;)V
    .locals 0
    .param p1, "event"    # Lcom/samsung/android/sume/Event;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/samsung/android/sume/Result;->event:Lcom/samsung/android/sume/Event;

    .line 52
    return-void
.end method

.method public blacklist setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/Result;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
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

    .line 83
    iget-object v0, p0, Lcom/samsung/android/sume/Result;->extra:Lcom/samsung/android/sume/PDKMap;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/PDKMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object p0
.end method

.method public blacklist setExtra(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/samsung/android/sume/Result;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/android/sume/Result;"
        }
    .end annotation

    .line 88
    .local p1, "extra":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/Result;->extra:Lcom/samsung/android/sume/PDKMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/PDKMap;->putAll(Ljava/util/Map;)V

    .line 89
    return-object p0
.end method

.class public Lcom/samsung/android/sume/core/filter/SyncFilter;
.super Lcom/samsung/android/sume/core/filter/DecorateFilter;
.source "SyncFilter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/samsung/android/sume/core/filter/SyncFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/SyncFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 0
    .param p1, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "successor"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/DecorateFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 19
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$run$0$com-samsung-android-sume-core-filter-SyncFilter(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1
    .param p1, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "e"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 32
    invoke-super {p0, p2, p1}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 4
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ibuf",
            "obuf"
        }
    .end annotation

    .line 25
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 26
    .local v0, "input":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    instance-of v1, p1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v1, :cond_0

    .line 27
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->getPrimaryBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    .line 28
    .local v1, "primaryBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    instance-of v2, v1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v2, :cond_0

    .line 29
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 32
    .end local v1    # "primaryBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_0
    new-instance v1, Lcom/samsung/android/sume/core/filter/SyncFilter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/sume/core/filter/SyncFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/SyncFilter;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 35
    .local v1, "output":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 36
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .local v2, "buffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_0

    .line 38
    .end local v2    # "buffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    .line 40
    .restart local v2    # "buffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :goto_0
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/util/Map;)V

    .line 42
    return-object v2
.end method

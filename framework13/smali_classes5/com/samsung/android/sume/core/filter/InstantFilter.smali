.class public Lcom/samsung/android/sume/core/filter/InstantFilter;
.super Lcom/samsung/android/sume/core/filter/DecorateFilter;
.source "InstantFilter.java"


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/DecorateFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 13
    return-void
.end method


# virtual methods
.method public blacklist prepare()V
    .locals 0

    .line 16
    return-void
.end method

.method public blacklist release()V
    .locals 0

    .line 29
    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2
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

    .line 21
    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->prepare()V

    .line 22
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    .line 23
    .local v0, "output":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->release()V

    .line 24
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v1
.end method

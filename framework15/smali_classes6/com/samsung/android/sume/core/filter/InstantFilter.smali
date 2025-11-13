.class public Lcom/samsung/android/sume/core/filter/InstantFilter;
.super Lcom/samsung/android/sume/core/filter/DecorateFilter;
.source "InstantFilter.java"


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/DecorateFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-void
.end method


# virtual methods
.method public blacklist prepare()V
    .locals 0

    return-void
.end method

.method public blacklist release()V
    .locals 0

    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->prepare()V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object p2

    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->release()V

    return-object p2
.end method

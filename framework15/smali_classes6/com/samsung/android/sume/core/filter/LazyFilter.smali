.class public Lcom/samsung/android/sume/core/filter/LazyFilter;
.super Lcom/samsung/android/sume/core/filter/DecorateFilter;
.source "LazyFilter.java"


# instance fields
.field private blacklist prepared:Z


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/DecorateFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/filter/LazyFilter;->prepared:Z

    return-void
.end method


# virtual methods
.method public blacklist prepare()V
    .locals 0

    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sume/core/filter/LazyFilter;->prepared:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->prepare()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/filter/LazyFilter;->prepared:Z

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/samsung/android/sume/core/filter/collection/SimpleConveyorFilter;
.super Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;
.source "SimpleConveyorFilter.java"


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;)V

    return-void
.end method


# virtual methods
.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/SimpleConveyorFilter;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v2, p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_1
    return-object p2
.end method

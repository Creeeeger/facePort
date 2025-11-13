.class public abstract Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;
.super Ljava/lang/Object;
.source "MediaFilterGroupBase.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilterGroup;


# instance fields
.field protected blacklist channelSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;->filters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;)",
            "Lcom/samsung/android/sume/core/filter/MediaFilterGroup;"
        }
    .end annotation

    .line 23
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    return-object p0
.end method

.method public blacklist prepare()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;->filters:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 35
    return-void
.end method

.method public blacklist release()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;->filters:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    return-void
.end method

.method public varargs blacklist removeFilter([Lcom/samsung/android/sume/core/filter/MediaFilter;)Z
    .locals 2
    .param p1, "filters"    # [Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filters"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;->filters:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

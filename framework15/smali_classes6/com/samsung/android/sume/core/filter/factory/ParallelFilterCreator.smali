.class public Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator;
.super Ljava/lang/Object;
.source "ParallelFilterCreator.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$newFilter$0(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 2

    const-class v0, Lcom/samsung/android/sume/core/filter/AsyncFilter;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Ljava/lang/Class;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$newFilter$1(Ljava/util/List;I)V
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/filter/AsyncFilter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/filter/AsyncFilter;->setId(I)V

    return-void
.end method


# virtual methods
.method public blacklist newFilter(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 5

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator$1;->$SwitchMap$com$samsung$android$sume$core$filter$collection$ParallelFilter$Type:[I

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;->getParallelType()Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v2, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->getBufferChannelSupplier()Ljava/util/function/Supplier;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;Ljava/util/function/Supplier;)V

    move-object v1, v2

    goto :goto_0

    :pswitch_1
    new-instance v2, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->getBufferChannelSupplier()Ljava/util/function/Supplier;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;Ljava/util/function/Supplier;)V

    move-object v1, v2

    nop

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    invoke-static {v3}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;->getDescriptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1}, Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v2, v4}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;->addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

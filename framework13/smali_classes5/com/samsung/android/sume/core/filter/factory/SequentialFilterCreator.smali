.class public Lcom/samsung/android/sume/core/filter/factory/SequentialFilterCreator;
.super Ljava/lang/Object;
.source "SequentialFilterCreator.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist newFilter(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 5
    .param p1, "factory"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;
    .param p2, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .param p3, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "factory",
            "descriptor",
            "successor"
        }
    .end annotation

    .line 21
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;

    .line 23
    .local v0, "desc":Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->getDescriptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 24
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 25
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 27
    .local v1, "successorFilters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    const/4 v2, 0x0

    .line 28
    .local v2, "sequentialFilters":Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;
    sget-object v3, Lcom/samsung/android/sume/core/filter/factory/SequentialFilterCreator$1;->$SwitchMap$com$samsung$android$sume$core$filter$collection$SequentialFilter$Type:[I

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->getSequentialType()Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 33
    :pswitch_0
    new-instance v3, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2;

    invoke-direct {v3, v0}, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2;-><init>(Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;)V

    move-object v2, v3

    goto :goto_0

    .line 30
    :pswitch_1
    new-instance v3, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;

    invoke-direct {v3, v0}, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;)V

    move-object v2, v3

    .line 31
    nop

    .line 47
    :goto_0
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;

    invoke-virtual {v3, v1}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;->addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;

    .line 48
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

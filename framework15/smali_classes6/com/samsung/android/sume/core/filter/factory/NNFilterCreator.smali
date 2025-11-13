.class public Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator;
.super Ljava/lang/Object;
.source "NNFilterCreator.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$newFilter$0(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;
    .locals 4

    new-instance v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->getFw()Lcom/samsung/android/sume/core/types/nn/NNFW;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->getHw()Lcom/samsung/android/sume/core/types/HwUnit;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;-><init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;)V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;-><init>(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public blacklist newFilter(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 8

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getNNFWProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    new-instance v2, Lcom/samsung/android/sume/core/filter/SyncFilter;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    invoke-virtual {p1, v4}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/samsung/android/sume/core/filter/SyncFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;

    sget-object v4, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;->DNC:Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;

    invoke-direct {v2, v4, v1}, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;-><init>(Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;Ljava/util/List;)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v2

    :goto_0
    new-instance v4, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    sget-object v5, Lcom/samsung/android/sume/core/types/ImgpType;->ANY:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-direct {v4, v5}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Lcom/samsung/android/sume/core/types/ImgpType;)V

    new-instance v5, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    sget-object v6, Lcom/samsung/android/sume/core/types/ImgpType;->ANY:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-direct {v5, v6}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Lcom/samsung/android/sume/core/types/ImgpType;)V

    invoke-virtual {v4, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setLatestPluginsOrder(Z)V

    invoke-virtual {v5, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setLatestPluginsOrder(Z)V

    invoke-virtual {p1, v4}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v6

    invoke-virtual {p1, v5}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/samsung/android/sume/core/filter/ImgpFilter;->of(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v2

    const-class v6, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;

    invoke-virtual {p1, v6, v0, v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Ljava/lang/Class;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->asInputOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOutputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->asOutputOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setOption(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)V

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setOption(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)V

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setFormat(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getTargetFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getTargetFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->deepCopy()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {v5, v6}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setFormat(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v5, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setKeepFilterDatatype(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOutputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setFormat(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    :goto_1
    return-object v2
.end method

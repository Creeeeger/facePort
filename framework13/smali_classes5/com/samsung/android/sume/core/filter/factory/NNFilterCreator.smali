.class public Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator;
.super Ljava/lang/Object;
.source "NNFilterCreator.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$newFilter$0(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;
    .locals 4
    .param p0, "desc"    # Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .param p1, "e"    # Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;

    .line 31
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->getFw()Lcom/samsung/android/sume/core/types/nn/NNFW;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->getHw()Lcom/samsung/android/sume/core/types/HwUnit;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;-><init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;-><init>(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public blacklist newFilter(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 7
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

    .line 25
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    .line 28
    .local v0, "desc":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getNNFWProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator$$ExternalSyntheticLambda0;-><init>()V

    .line 29
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda3;-><init>()V

    .line 30
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V

    .line 31
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 32
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 34
    .local v1, "nnfwDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/descriptor/MFDescriptor;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 38
    new-instance v2, Lcom/samsung/android/sume/core/filter/SyncFilter;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    invoke-virtual {p1, v4}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/samsung/android/sume/core/filter/SyncFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .local v2, "filter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    goto :goto_0

    .line 41
    .end local v2    # "filter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    :cond_0
    new-instance v2, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;

    sget-object v4, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;->DNC:Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;

    invoke-direct {v2, v4, v1}, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;-><init>(Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;Ljava/util/List;)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v2

    .line 45
    .restart local v2    # "filter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    :goto_0
    new-instance v4, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    sget-object v5, Lcom/samsung/android/sume/core/types/ImgpType;->ANY:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-direct {v4, v5}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Lcom/samsung/android/sume/core/types/ImgpType;)V

    .line 46
    .local v4, "preImgpDescriptor":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    new-instance v5, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    sget-object v6, Lcom/samsung/android/sume/core/types/ImgpType;->ANY:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-direct {v5, v6}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Lcom/samsung/android/sume/core/types/ImgpType;)V

    .line 48
    .local v5, "postImgpDescriptor":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    invoke-virtual {v4, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setLatestPluginsOrder(Z)V

    .line 49
    invoke-virtual {v5, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setLatestPluginsOrder(Z)V

    .line 51
    invoke-virtual {p1, v4}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v3

    invoke-virtual {p1, v5}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/samsung/android/sume/core/filter/ImgpFilter;->of(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v2

    .line 54
    const-class v3, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;

    invoke-virtual {p1, v3, v0, v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Ljava/lang/Class;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v2

    .line 57
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->asInputOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->set(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 58
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOutputFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->asOutputOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->set(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 60
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setOption(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)V

    .line 61
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setOption(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)V

    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setFormat(Lcom/samsung/android/sume/core/format/MutableImageFormat;)Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    .line 64
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOutputFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setFormat(Lcom/samsung/android/sume/core/format/MutableImageFormat;)Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    .line 67
    return-object v2
.end method

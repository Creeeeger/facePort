.class public Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;
.super Ljava/lang/Object;
.source "PluginFilterCreator.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist createImgpFilter(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 4
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getPluginId()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->ANY:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    if-ne v0, v1, :cond_2

    .line 64
    invoke-static {}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->values()[Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda4;-><init>()V

    .line 65
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda5;-><init>()V

    .line 66
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 67
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 70
    .local v0, "typeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/plugin/PluginStore;->keyStream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;)V

    .line 71
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;)V

    .line 72
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda8;-><init>()V

    .line 74
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda9;-><init>()V

    .line 75
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 76
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 78
    .local v1, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/plugin/PluginFixture<*>;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->isLatestPluginsOrder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 85
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 86
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    .local v2, "plugin":Lcom/samsung/android/sume/core/plugin/ImgpPlugin;
    goto :goto_0

    .line 88
    .end local v2    # "plugin":Lcom/samsung/android/sume/core/plugin/ImgpPlugin;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda10;-><init>()V

    .line 89
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    .line 90
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    .line 91
    .end local v0    # "typeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/plugin/PluginFixture<*>;>;"
    .restart local v2    # "plugin":Lcom/samsung/android/sume/core/plugin/ImgpPlugin;
    :goto_0
    goto :goto_1

    .line 92
    .end local v2    # "plugin":Lcom/samsung/android/sume/core/plugin/ImgpPlugin;
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/plugin/PluginStore;->get(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;

    .line 95
    .local v0, "found":Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->getPluginFixture()Lcom/samsung/android/sume/core/plugin/PluginFixture;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    .line 96
    .restart local v2    # "plugin":Lcom/samsung/android/sume/core/plugin/ImgpPlugin;
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->copyTo(Lcom/samsung/android/sume/core/types/OptionBase;)V

    .line 99
    .end local v0    # "found":Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;
    :goto_1
    new-instance v0, Lcom/samsung/android/sume/core/filter/ImgpFilter;

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/sume/core/filter/ImgpFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V

    .line 100
    .local v0, "filter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->getContentFilterRegister()Lcom/samsung/android/sume/core/filter/ContentFilterRegister;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 101
    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 102
    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 100
    return-object v1
.end method

.method private blacklist createNNFilter(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 7
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .param p2, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "descriptor",
            "successor"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/plugin/PluginStore;->get(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;

    .line 109
    .local v0, "found":Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->getPluginFixture()Lcom/samsung/android/sume/core/plugin/PluginFixture;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/plugin/NNPlugin;

    .line 111
    .local v1, "plugin":Lcom/samsung/android/sume/core/plugin/NNPlugin;
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->copyTo(Lcom/samsung/android/sume/core/types/OptionBase;)V

    .line 113
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/plugin/PluginStore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda12;

    invoke-direct {v3, v1, p1}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/sume/core/plugin/NNPlugin;Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V

    .line 114
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda13;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda13;-><init>()V

    .line 155
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 159
    .local v2, "nnFileDescriptor":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 160
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/plugin/NNPlugin;->getModelSelector()Lcom/samsung/android/sume/core/functional/ModelSelector;

    move-result-object v3

    .line 161
    .local v3, "modelSelector":Lcom/samsung/android/sume/core/functional/ModelSelector;
    const/4 v5, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "multiple model found, but model selector is not given"

    invoke-static {v4, v6, v5}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p1, v3}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setModelSelector(Lcom/samsung/android/sume/core/functional/ModelSelector;)V

    .line 166
    .end local v3    # "modelSelector":Lcom/samsung/android/sume/core/functional/ModelSelector;
    :cond_1
    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setNNFileDescriptors(Ljava/util/List;)V

    .line 169
    new-instance v3, Lcom/samsung/android/sume/core/filter/NNFilter;

    .line 172
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-direct {v3, p1, v1, v4}, Lcom/samsung/android/sume/core/filter/NNFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;Lcom/samsung/android/sume/core/plugin/NNPlugin;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 174
    .local v3, "filter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/plugin/NNPlugin;->getContentFilterRegister()Lcom/samsung/android/sume/core/filter/ContentFilterRegister;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda14;

    invoke-direct {v5, v3}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 175
    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    .line 176
    invoke-virtual {v4, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 174
    return-object v4
.end method

.method static synthetic blacklist lambda$createImgpFilter$0(Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;)Z
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    .line 65
    sget-object v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->CUSTOM:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$createImgpFilter$1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "e"    # Ljava/lang/String;
    .param p1, "it"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$createImgpFilter$2(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .param p0, "typeNames"    # Ljava/util/List;
    .param p1, "e"    # Ljava/lang/String;

    .line 71
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda16;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$createImgpFilter$4(Lcom/samsung/android/sume/core/plugin/PluginFixture;Lcom/samsung/android/sume/core/plugin/PluginFixture;)Lcom/samsung/android/sume/core/plugin/PluginFixture;
    .locals 3
    .param p0, "x"    # Lcom/samsung/android/sume/core/plugin/PluginFixture;
    .param p1, "y"    # Lcom/samsung/android/sume/core/plugin/PluginFixture;

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->join([Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$createImgpFilter$5(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/ContentFilterRegister;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1
    .param p0, "filter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .param p1, "it"    # Lcom/samsung/android/sume/core/filter/ContentFilterRegister;

    .line 101
    new-instance v0, Lcom/samsung/android/sume/core/filter/ContentFilter;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/sume/core/filter/ContentFilter;-><init>(Lcom/samsung/android/sume/core/filter/ContentFilterRegister;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$createNNFilter$10()Ljava/lang/IllegalStateException;
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NNPlugin filter require context from PluginStore, but nothing is given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$createNNFilter$11(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/ContentFilterRegister;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1
    .param p0, "filter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .param p1, "it"    # Lcom/samsung/android/sume/core/filter/ContentFilterRegister;

    .line 175
    new-instance v0, Lcom/samsung/android/sume/core/filter/ContentFilter;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/sume/core/filter/ContentFilter;-><init>(Lcom/samsung/android/sume/core/filter/ContentFilterRegister;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$createNNFilter$6(Landroid/util/Pair;Ljava/lang/String;)Z
    .locals 1
    .param p0, "paths"    # Landroid/util/Pair;
    .param p1, "e"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$createNNFilter$7(Landroid/content/Context;Landroid/util/Pair;Ljava/lang/String;)Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "paths"    # Landroid/util/Pair;
    .param p2, "it"    # Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 123
    new-instance v1, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 124
    .local v1, "nnfd":Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;
    invoke-virtual {v1, p2}, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->setName(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->setOffset(J)V

    .line 126
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->setLength(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    nop

    .line 132
    if-eqz v0, :cond_0

    .line 134
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 127
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v1

    .line 132
    .end local v1    # "nnfd":Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 128
    :catch_1
    move-exception v1

    .line 129
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    const/4 v2, 0x0

    .line 132
    if-eqz v0, :cond_1

    .line 134
    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 137
    goto :goto_1

    .line 135
    :catch_2
    move-exception v3

    .line 136
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-object v2

    .line 132
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v0, :cond_2

    .line 134
    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 137
    goto :goto_3

    .line 135
    :catch_3
    move-exception v2

    .line 136
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 139
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v1
.end method

.method static synthetic blacklist lambda$createNNFilter$8(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 147
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist lambda$createNNFilter$9(Lcom/samsung/android/sume/core/plugin/NNPlugin;Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "plugin"    # Lcom/samsung/android/sume/core/plugin/NNPlugin;
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/plugin/NNPlugin;->getModelPathLoader()Lcom/samsung/android/sume/core/functional/ModelPathLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getModelId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/functional/ModelPathLoader;->load(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 117
    .local v0, "paths":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/regex/Pattern;>;"
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda0;-><init>(Landroid/util/Pair;)V

    .line 118
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, v0}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Landroid/util/Pair;)V

    .line 119
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda2;-><init>()V

    .line 141
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 142
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 145
    .local v1, "nnfdList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t find model file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", regex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "models":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "success to load model file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    return-object v1

    .line 150
    .end local v1    # "nnfdList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;>;"
    .end local v2    # "models":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 152
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public blacklist getPluginStore()Lcom/samsung/android/sume/core/plugin/PluginStore;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    return-object v0
.end method

.method synthetic blacklist lambda$createImgpFilter$3$com-samsung-android-sume-core-filter-factory-PluginFilterCreator(Ljava/lang/String;)Ljava/util/Optional;
    .locals 3
    .param p1, "e"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-static {p1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/plugin/PluginStore;->get(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda15;-><init>()V

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 72
    return-object v0
.end method

.method public blacklist newFilter(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 2
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

    .line 48
    instance-of v0, p2, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 50
    instance-of v0, p2, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    if-eqz v0, :cond_0

    .line 51
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->createNNFilter(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    instance-of v0, p2, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    if-eqz v0, :cond_1

    .line 53
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->createImgpFilter(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not yet supported except NNDescriptor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setPluginStore(Lcom/samsung/android/sume/core/plugin/PluginStore;)V
    .locals 0
    .param p1, "pluginStore"    # Lcom/samsung/android/sume/core/plugin/PluginStore;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pluginStore"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    .line 36
    return-void
.end method

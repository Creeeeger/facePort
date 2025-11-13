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

    const-class v0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist createImgpFilter(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getPluginId()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->ANY:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->values()[Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/plugin/PluginStore;->keyStream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda5;-><init>()V

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

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->isLatestPluginsOrder()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    :goto_0
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/plugin/PluginStore;->get(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->getPluginFixture()Lcom/samsung/android/sume/core/plugin/PluginFixture;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->copyTo(Lcom/samsung/android/sume/core/types/OptionBase;)V

    :goto_1
    new-instance v0, Lcom/samsung/android/sume/core/filter/ImgpFilter;

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/sume/core/filter/ImgpFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->getContentFilterRegister()Lcom/samsung/android/sume/core/filter/ContentFilterRegister;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    return-object v1
.end method

.method private blacklist createNNFilter(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/plugin/PluginStore;->get(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->getPluginFixture()Lcom/samsung/android/sume/core/plugin/PluginFixture;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/plugin/NNPlugin;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->copyTo(Lcom/samsung/android/sume/core/types/OptionBase;)V

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/plugin/PluginStore;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/plugin/NNPlugin;->getModelPathLoader()Lcom/samsung/android/sume/core/functional/ModelPathLoader;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getModelId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/sume/core/functional/ModelPathLoader;->load(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda9;

    invoke-direct {v5, v3}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda9;-><init>(Landroid/util/Pair;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda10;

    invoke-direct {v5, v2, v3}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;Landroid/util/Pair;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda11;

    invoke-direct {v5}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda12;

    invoke-direct {v6}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "success to load model file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->isIgnorableFilter()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/samsung/android/sume/core/filter/ByPassFilter;

    invoke-direct {v5, p1}, Lcom/samsung/android/sume/core/filter/ByPassFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)V

    goto :goto_2

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t find model file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", regex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v6}, Lcom/samsung/android/sume/core/Def;->fmtstr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/plugin/NNPlugin;->getModelSelector()Lcom/samsung/android/sume/core/functional/ModelSelector;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    const-string v8, "multiple model found, but model selector is not given"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v6}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setModelSelector(Lcom/samsung/android/sume/core/functional/ModelSelector;)V

    :cond_3
    invoke-virtual {p1, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setNNFileDescriptors(Ljava/util/List;)V

    new-instance v5, Lcom/samsung/android/sume/core/filter/NNFilter;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-direct {v5, p1, v1, v6}, Lcom/samsung/android/sume/core/filter/NNFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;Lcom/samsung/android/sume/core/plugin/NNPlugin;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    :goto_2
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/plugin/NNPlugin;->getContentFilterRegister()Lcom/samsung/android/sume/core/filter/ContentFilterRegister;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda13;

    invoke-direct {v7, v5}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sume/core/filter/MediaFilter;

    return-object v6

    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "NNPlugin filter require context from PluginStore, but nothing is given"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic blacklist lambda$createImgpFilter$0(Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;)Z
    .locals 1

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

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$createImgpFilter$2(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$createImgpFilter$4(Lcom/samsung/android/sume/core/plugin/PluginFixture;Lcom/samsung/android/sume/core/plugin/PluginFixture;)Lcom/samsung/android/sume/core/plugin/PluginFixture;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->join([Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$createImgpFilter$5(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/ContentFilterRegister;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/filter/ContentFilter;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/sume/core/filter/ContentFilter;-><init>(Lcom/samsung/android/sume/core/filter/ContentFilterRegister;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$createNNFilter$6(Landroid/util/Pair;Ljava/lang/String;)Z
    .locals 1

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

    const/4 v0, 0x0

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

    new-instance v1, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v1, p2}, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->setOffset(J)V

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->setLength(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v2, 0x0

    return-object v2

    :goto_2
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    throw v1
.end method

.method static synthetic blacklist lambda$createNNFilter$8(I)[Ljava/lang/String;
    .locals 1

    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist lambda$createNNFilter$9(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/ContentFilterRegister;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/filter/ContentFilter;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/sume/core/filter/ContentFilter;-><init>(Lcom/samsung/android/sume/core/filter/ContentFilterRegister;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getPluginStore()Lcom/samsung/android/sume/core/plugin/PluginStore;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    return-object v0
.end method

.method synthetic blacklist lambda$createImgpFilter$3$com-samsung-android-sume-core-filter-factory-PluginFilterCreator(Ljava/lang/String;)Ljava/util/Optional;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-static {p1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/plugin/PluginStore;->get(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newFilter(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 2

    instance-of v0, p2, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    instance-of v0, p2, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->createNNFilter(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p2, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->createImgpFilter(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not yet supported except NNDescriptor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setPluginStore(Lcom/samsung/android/sume/core/plugin/PluginStore;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    return-void
.end method

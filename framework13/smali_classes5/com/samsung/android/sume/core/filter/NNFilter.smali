.class public Lcom/samsung/android/sume/core/filter/NNFilter;
.super Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;
.source "NNFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sume/core/filter/PluginDecorateFilter<",
        "Lcom/samsung/android/sume/core/plugin/NNPlugin;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/samsung/android/sume/core/filter/NNFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/NNFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;Lcom/samsung/android/sume/core/plugin/NNPlugin;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 0
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .param p2, "plugin"    # Lcom/samsung/android/sume/core/plugin/NNPlugin;
    .param p3, "filter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "descriptor",
            "plugin",
            "filter"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;-><init>(Lcom/samsung/android/sume/core/plugin/PluginFixture;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/NNFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/plugin/NNPlugin;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 0
    .param p1, "plugin"    # Lcom/samsung/android/sume/core/plugin/NNPlugin;
    .param p2, "filter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "plugin",
            "filter"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;-><init>(Lcom/samsung/android/sume/core/plugin/PluginFixture;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 33
    return-void
.end method

.method static synthetic blacklist lambda$onMessageReceived$4(Lcom/samsung/android/sume/core/format/MutableImageFormat;Lcom/samsung/android/sume/core/functional/ModelSelector;)Lcom/samsung/android/sume/core/functional/ModelSelector$Item;
    .locals 1
    .param p0, "imgFormat"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .param p1, "it"    # Lcom/samsung/android/sume/core/functional/ModelSelector;

    .line 105
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->emptyOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/functional/ModelSelector;->select(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/functional/ModelSelector$Item;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$onMessageReceived$5(Lcom/samsung/android/sume/core/functional/ModelSelector$Item;)Ljava/util/Optional;
    .locals 1
    .param p0, "it"    # Lcom/samsung/android/sume/core/functional/ModelSelector$Item;

    .line 106
    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ModelSelector$Item;->descriptorUpdater:Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getConsumeMessage()[I
    .locals 3

    .line 90
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    return-object v1
.end method

.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/sume/core/filter/NNFilter;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    return-object v0
.end method

.method synthetic blacklist lambda$getDescriptor$0$com-samsung-android-sume-core-filter-NNFilter()Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    return-object v0
.end method

.method synthetic blacklist lambda$onMessageReceived$6$com-samsung-android-sume-core-filter-NNFilter(Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "it"    # Ljava/util/function/Consumer;

    .line 107
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic blacklist lambda$run$1$com-samsung-android-sume-core-filter-NNFilter(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/functional/BufferProcessor;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "e"    # Lcom/samsung/android/sume/core/functional/BufferProcessor;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/sume/core/functional/BufferProcessor;->process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$run$2$com-samsung-android-sume-core-filter-NNFilter(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1
    .param p1, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "e"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 63
    invoke-super {p0, p2, p1}, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$run$3$com-samsung-android-sume-core-filter-NNFilter(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/functional/BufferProcessor;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1
    .param p1, "output"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "e"    # Lcom/samsung/android/sume/core/functional/BufferProcessor;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/sume/core/functional/BufferProcessor;->process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)Z
    .locals 5
    .param p1, "message"    # Lcom/samsung/android/sume/core/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;->onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)Z

    move-result v0

    return v0

    .line 97
    :pswitch_0
    const-string v0, "media-type"

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/MediaType;

    .line 98
    .local v0, "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    const-string v1, "media-format"

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFormat;

    .line 99
    .local v1, "mediaFormat":Landroid/media/MediaFormat;
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/NNFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/MediaType;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/MediaType;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v2

    .line 101
    .local v2, "imgFormat":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    const-string/jumbo v3, "width"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 102
    const-string v3, "height"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 104
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/NNFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getModelSelector()Lcom/samsung/android/sume/core/functional/ModelSelector;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2}, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/format/MutableImageFormat;)V

    .line 105
    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda4;-><init>()V

    .line 106
    invoke-virtual {v3, v4}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/filter/NNFilter;)V

    .line 107
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .end local v2    # "imgFormat":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    goto :goto_0

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/NNFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/MediaType;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/MediaType;->isAudio()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "not implemented yet for MutableAudioFormat"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_2
    :goto_0
    nop

    .line 111
    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist prepare()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;->prepare()V

    .line 48
    return-void
.end method

.method public blacklist release()V
    .locals 0

    .line 85
    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;->release()V

    .line 86
    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 5
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ibuf",
            "obuf"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFilter;->plugin:Lcom/samsung/android/sume/core/plugin/PluginFixture;

    check-cast v0, Lcom/samsung/android/sume/core/plugin/NNPlugin;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/NNPlugin;->getPreExecutor()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/NNFilter;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 54
    .local v0, "input":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/util/Map;)V

    .line 55
    sget-object v1, Lcom/samsung/android/sume/core/filter/NNFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/NNFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->isBatchIO()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v1, "outputs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    invoke-super {p0, v0, p2}, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v1    # "outputs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/filter/NNFilter;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 67
    .restart local v1    # "outputs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    :goto_0
    instance-of v2, v0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 68
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->getPrimaryBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 69
    invoke-static {v3, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(ILjava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    .local v2, "output":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_1

    .line 70
    .end local v2    # "output":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_1
    instance-of v2, v0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v2, :cond_2

    .line 71
    invoke-static {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    .restart local v2    # "output":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_1

    .line 73
    .end local v2    # "output":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 76
    .restart local v2    # "output":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :goto_1
    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/util/Map;)V

    .line 78
    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 80
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/NNFilter;->plugin:Lcom/samsung/android/sume/core/plugin/PluginFixture;

    check-cast v3, Lcom/samsung/android/sume/core/plugin/NNPlugin;

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/plugin/NNPlugin;->getPostExecutor()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/filter/NNFilter;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v3
.end method

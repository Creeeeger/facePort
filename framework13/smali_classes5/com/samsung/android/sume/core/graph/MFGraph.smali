.class public Lcom/samsung/android/sume/core/graph/MFGraph;
.super Lcom/samsung/android/sume/core/graph/GraphBase;
.source "MFGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/graph/MFGraph$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sume/core/graph/GraphBase<",
        "Lcom/samsung/android/sume/core/filter/MediaFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/samsung/android/sume/core/graph/MFGraph;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/graph/MFGraph;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/graph/Graph$Option;)V
    .locals 4
    .param p2, "inputChannel"    # Lcom/samsung/android/sume/core/channel/BufferChannel;
    .param p3, "outputChannel"    # Lcom/samsung/android/sume/core/channel/BufferChannel;
    .param p4, "option"    # Lcom/samsung/android/sume/core/graph/Graph$Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "graphNodes",
            "inputChannel",
            "outputChannel",
            "option"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            "Lcom/samsung/android/sume/core/graph/Graph$Option;",
            ")V"
        }
    .end annotation

    .line 45
    .local p1, "graphNodes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/graph/GraphNode<Lcom/samsung/android/sume/core/filter/MediaFilter;>;>;"
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/sume/core/graph/GraphBase;-><init>(Ljava/util/List;Lcom/samsung/android/sume/core/graph/Graph$Option;)V

    .line 47
    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 48
    iput-object p3, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 50
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda12;-><init>()V

    .line 51
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/graph/GraphNode;

    new-instance v1, Lcom/samsung/android/sume/core/graph/GraphEdge;

    invoke-direct {v1, p2}, Lcom/samsung/android/sume/core/graph/GraphEdge;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    .line 54
    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/graph/GraphNode;->addInputEdge(Lcom/samsung/android/sume/core/graph/GraphEdge;)Lcom/samsung/android/sume/core/graph/GraphNode;

    .line 56
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda13;-><init>()V

    .line 57
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/graph/GraphNode;

    new-instance v1, Lcom/samsung/android/sume/core/graph/GraphEdge;

    invoke-direct {v1, p3}, Lcom/samsung/android/sume/core/graph/GraphEdge;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    .line 60
    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/graph/GraphNode;->addOutputEdge(Lcom/samsung/android/sume/core/graph/GraphEdge;)Lcom/samsung/android/sume/core/graph/GraphNode;

    .line 62
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda14;-><init>()V

    .line 63
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda15;

    invoke-direct {v1, p3}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    .line 64
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 66
    sget-object v0, Lcom/samsung/android/sume/core/graph/MFGraph;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepare each node..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda16;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 70
    invoke-virtual {p4}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isIgnoreFilterException()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p4}, Lcom/samsung/android/sume/core/graph/Graph$Option;->getIgnoreFilterException()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 72
    .local v1, "exceptionIgnoredFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/sume/core/graph/MFGraph;Ljava/util/List;)V

    .line 73
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda18;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda18;-><init>()V

    .line 80
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 83
    .end local v1    # "exceptionIgnoredFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    const-string/jumbo v1, "success to create MediaFilter graph"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/graph/Graph$Option;Lcom/samsung/android/sume/core/graph/MFGraph$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lcom/samsung/android/sume/core/channel/BufferChannel;
    .param p3, "x2"    # Lcom/samsung/android/sume/core/channel/BufferChannel;
    .param p4, "x3"    # Lcom/samsung/android/sume/core/graph/Graph$Option;
    .param p5, "x4"    # Lcom/samsung/android/sume/core/graph/MFGraph$1;

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sume/core/graph/MFGraph;-><init>(Ljava/util/List;Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/graph/Graph$Option;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/graph/GraphNode;)Z
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/core/graph/GraphNode;

    .line 51
    invoke-interface {p0}, Lcom/samsung/android/sume/core/graph/GraphNode;->hasInputEdge()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$new$1(Lcom/samsung/android/sume/core/graph/GraphNode;)Z
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/core/graph/GraphNode;

    .line 57
    invoke-interface {p0}, Lcom/samsung/android/sume/core/graph/GraphNode;->hasOutputEdge()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$new$2(Lcom/samsung/android/sume/core/graph/GraphNode;)Z
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/core/graph/GraphNode;

    .line 63
    invoke-interface {p0}, Lcom/samsung/android/sume/core/graph/GraphNode;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->isAllowPartialConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$new$3(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/graph/GraphNode;)V
    .locals 1
    .param p0, "outputChannel"    # Lcom/samsung/android/sume/core/channel/BufferChannel;
    .param p1, "e"    # Lcom/samsung/android/sume/core/graph/GraphNode;

    .line 64
    new-instance v0, Lcom/samsung/android/sume/core/graph/GraphEdge;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/graph/GraphEdge;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/graph/GraphNode;->addOutputEdge(Lcom/samsung/android/sume/core/graph/GraphEdge;)Lcom/samsung/android/sume/core/graph/GraphNode;

    return-void
.end method

.method static synthetic blacklist lambda$new$5(Landroid/util/Pair;)V
    .locals 3
    .param p0, "it"    # Landroid/util/Pair;

    .line 80
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sume/core/graph/GraphNode;

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/4 v2, 0x6

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/sume/core/graph/GraphNode;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$retrieveNNFWFilter$6(Lcom/samsung/android/sume/core/graph/GraphNode;)Z
    .locals 1
    .param p0, "it"    # Lcom/samsung/android/sume/core/graph/GraphNode;

    .line 88
    invoke-interface {p0}, Lcom/samsung/android/sume/core/graph/GraphNode;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    return v0
.end method

.method static synthetic blacklist lambda$retrieveNNFWFilter$7(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/filter/MediaFilter;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "fw"    # Lcom/samsung/android/sume/core/types/nn/NNFW;
    .param p1, "filter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 91
    instance-of v0, p1, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getFw()Lcom/samsung/android/sume/core/types/nn/NNFW;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$retrieveNNFWFilter$8(Lcom/samsung/android/sume/core/filter/MediaFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "filter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 93
    invoke-interface {p0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getFilterId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$retrieveNNFWFilter$9(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/graph/GraphNode;)Ljava/util/stream/Stream;
    .locals 2
    .param p0, "fw"    # Lcom/samsung/android/sume/core/types/nn/NNFW;
    .param p1, "it"    # Lcom/samsung/android/sume/core/graph/GraphNode;

    .line 90
    new-instance v0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/graph/GraphNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/types/nn/NNFW;)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->retrieve(Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda1;-><init>()V

    .line 93
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 94
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 95
    .local v0, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    return-object v1

    .line 98
    :cond_0
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$run$11(Lcom/samsung/android/sume/core/cache/DiskCache;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 7
    .param p0, "diskCache"    # Lcom/samsung/android/sume/core/cache/DiskCache;
    .param p1, "it"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 115
    const-string v0, "cache-id"

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sume/core/cache/KeyGenerator;->getSimpleKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p0, v0}, Lcom/samsung/android/sume/core/cache/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 118
    .local v1, "found":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 120
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 122
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 123
    .local v3, "duration":J
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string/jumbo v6, "start-time-us"

    invoke-interface {p1, v6, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 127
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "found":Ljava/io/File;
    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local v3    # "duration":J
    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$run$13(Ljava/util/List;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p0, "inBuffers"    # Ljava/util/List;
    .param p1, "it"    # Ljava/lang/Integer;

    .line 151
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    const-string v1, "contents-id"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic blacklist lambda$run$14(Ljava/util/List;Ljava/util/List;I)V
    .locals 3
    .param p0, "inBuffers"    # Ljava/util/List;
    .param p1, "outBuffers"    # Ljava/util/List;
    .param p2, "index"    # I

    .line 169
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    const-string v1, "exif"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface;

    .line 170
    .local v0, "exif":Landroid/media/ExifInterface;
    if-eqz v0, :cond_0

    .line 171
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v2, v1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    :cond_0
    return-void
.end method

.method private blacklist retrieveNNFWFilter(Ljava/util/List;Lcom/samsung/android/sume/core/types/nn/NNFW;)Ljava/util/List;
    .locals 2
    .param p2, "fw"    # Lcom/samsung/android/sume/core/types/nn/NNFW;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodes",
            "fw"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;>;",
            "Lcom/samsung/android/sume/core/types/nn/NNFW;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 87
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/graph/GraphNode<Lcom/samsung/android/sume/core/filter/MediaFilter;>;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda10;-><init>()V

    .line 88
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda11;

    invoke-direct {v1, p2}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/sume/core/types/nn/NNFW;)V

    .line 89
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 100
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 87
    return-object v0
.end method


# virtual methods
.method synthetic blacklist lambda$new$4$com-samsung-android-sume-core-graph-MFGraph(Ljava/util/List;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 1
    .param p1, "graphNodes"    # Ljava/util/List;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 74
    instance-of v0, p2, Lcom/samsung/android/sume/core/types/nn/NNFW;

    if-eqz v0, :cond_0

    .line 75
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sume/core/types/nn/NNFW;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sume/core/graph/MFGraph;->retrieveNNFWFilter(Ljava/util/List;Lcom/samsung/android/sume/core/types/nn/NNFW;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$run$10$com-samsung-android-sume-core-graph-MFGraph(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 2
    .param p1, "it"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 108
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->getMaxDuration(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "end-time-us"

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic blacklist lambda$run$12$com-samsung-android-sume-core-graph-MFGraph(Ljava/util/List;Ljava/util/List;I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 4
    .param p1, "inBuffers"    # Ljava/util/List;
    .param p2, "outBuffers"    # Ljava/util/List;
    .param p3, "it"    # I

    .line 139
    new-instance v0, Lcom/samsung/android/sume/core/graph/MFGraph$2;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/samsung/android/sume/core/graph/MFGraph$2;-><init>(Lcom/samsung/android/sume/core/graph/MFGraph;Ljava/util/List;ILjava/util/List;)V

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 142
    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    .line 139
    return-object v0
.end method

.method public blacklist pause()V
    .locals 2

    .line 180
    sget-object v0, Lcom/samsung/android/sume/core/graph/MFGraph;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->nodes:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 182
    return-void
.end method

.method public blacklist resume()V
    .locals 2

    .line 186
    sget-object v0, Lcom/samsung/android/sume/core/graph/MFGraph;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->nodes:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 188
    return-void
.end method

.method public blacklist run(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inBuffers",
            "outBuffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p1, "inBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    .local p2, "outBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    sget-object v0, Lcom/samsung/android/sume/core/graph/MFGraph;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "run E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/graph/Graph$Option;->getMaxDuration(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/graph/MFGraph;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isCacheable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/graph/Graph$Option;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/cache/DiskCache;

    .line 114
    .local v1, "diskCache":Lcom/samsung/android/sume/core/cache/DiskCache;
    new-instance v3, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/cache/DiskCache;)V

    invoke-interface {p1, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 129
    iget-object v3, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    const/4 v4, 0x6

    new-instance v5, Lcom/samsung/android/sume/core/graph/MFGraph$1;

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/sume/core/graph/MFGraph$1;-><init>(Lcom/samsung/android/sume/core/graph/MFGraph;Lcom/samsung/android/sume/core/cache/DiskCache;)V

    invoke-static {v4, v5}, Lcom/samsung/android/sume/core/message/Event;->of(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Event;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sume/core/message/MessagePublisher;->sendMessage(Lcom/samsung/android/sume/core/message/Message;)V

    .line 135
    .end local v1    # "diskCache":Lcom/samsung/android/sume/core/cache/DiskCache;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isPackedIOBuffers()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 138
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v3, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/graph/MFGraph;Ljava/util/List;Ljava/util/List;)V

    .line 139
    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 143
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 145
    .local v1, "bufferList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 146
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 148
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .end local v1    # "bufferList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    goto :goto_1

    .line 149
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 150
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v3, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;)V

    .line 152
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda7;

    invoke-direct {v4, p2}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;)V

    .line 150
    invoke-static {v2, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 154
    .local v1, "outBufferMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->outBufferMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 156
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 157
    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 149
    .end local v1    # "outBufferMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    :cond_4
    :goto_1
    nop

    .line 160
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isRunOneByOne()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sume/core/graph/MFGraph;->runOneByOne(Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    .line 163
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sume/core/graph/MFGraph;->runBatch(Ljava/util/List;Ljava/util/List;)V

    .line 166
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isRestoreMetadata()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v3, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda8;

    invoke-direct {v2, p1, p2}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda8;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 175
    :cond_6
    const-string/jumbo v1, "run X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

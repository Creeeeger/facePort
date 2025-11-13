.class public abstract Lcom/samsung/android/sume/core/graph/GraphNodeBase;
.super Lcom/samsung/android/sume/core/message/MessageSubscriberBase;
.source "GraphNodeBase.java"

# interfaces
.implements Lcom/samsung/android/sume/core/graph/GraphNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sume/core/message/MessageSubscriberBase;",
        "Lcom/samsung/android/sume/core/graph/GraphNode<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist exceptionHandler:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Exception;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist impl:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final blacklist inputEdges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/graph/GraphEdge;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

.field protected blacklist nodeId:Ljava/lang/String;

.field protected blacklist option:Lcom/samsung/android/sume/core/graph/Graph$Option;

.field protected final blacklist outputEdges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/graph/GraphEdge;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist quit:Z

.field protected blacklist receiveRouter:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

.field protected blacklist sendRouter:Lcom/samsung/android/sume/core/channel/SendChannelRouter;


# direct methods
.method public static synthetic blacklist $r8$lambda$vHzRb7K3BGF923mCp_EC7349uBM(Lcom/samsung/android/sume/core/graph/GraphNodeBase;Ljava/lang/Exception;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->parseException(Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/Object;Lcom/samsung/android/sume/core/message/MessageChannel;)V
    .locals 3
    .param p2, "messageChannel"    # Lcom/samsung/android/sume/core/message/MessageChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "impl",
            "messageChannel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/samsung/android/sume/core/message/MessageChannel;",
            ")V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    .local p1, "impl":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;-><init>(Lcom/samsung/android/sume/core/message/MessageChannel;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->inputEdges:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->outputEdges:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->quit:Z

    .line 46
    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    .line 47
    instance-of v0, p1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 50
    .local v0, "mediaFilter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->nodeId:Ljava/lang/String;

    .line 51
    new-instance v1, Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;-><init>(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->bindToMessageSubscriber(Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;)V

    .line 53
    .end local v0    # "mediaFilter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    :cond_0
    new-instance v0, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/graph/GraphNodeBase;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->exceptionHandler:Ljava/util/function/Function;

    .line 54
    return-void
.end method

.method static synthetic blacklist lambda$parseException$8(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "filterId"    # Ljava/lang/String;
    .param p1, "it"    # Ljava/lang/String;

    .line 245
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$prepare$0(Lcom/samsung/android/sume/core/graph/GraphEdge;)Ljava/lang/Enum;
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/core/graph/GraphEdge;

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/graph/GraphEdge;->getEvaluator()Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method static synthetic blacklist lambda$prepare$2()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    .line 128
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->emptyOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$prepare$3(Lcom/samsung/android/sume/core/graph/GraphEdge;)Ljava/lang/Enum;
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/core/graph/GraphEdge;

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/graph/GraphEdge;->getEvaluator()Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method static synthetic blacklist lambda$prepare$5(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 1
    .param p0, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$release$6(Lcom/samsung/android/sume/core/graph/GraphEdge;)Z
    .locals 1
    .param p0, "it"    # Lcom/samsung/android/sume/core/graph/GraphEdge;

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/graph/GraphEdge;->getBufferChannel()Lcom/samsung/android/sume/core/channel/BufferChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$release$7(Lcom/samsung/android/sume/core/graph/GraphEdge;)V
    .locals 5
    .param p0, "it"    # Lcom/samsung/android/sume/core/graph/GraphEdge;

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/graph/GraphEdge;->getBufferChannel()Lcom/samsung/android/sume/core/channel/BufferChannel;

    move-result-object v0

    .line 181
    .local v0, "bufferChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    sget-object v1, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/graph/GraphEdge;->getBeginNode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/graph/GraphEdge;->getEndNode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]cancel buffer channel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->cancel()V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    sget-object v2, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canceled buffer-channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/concurrent/CancellationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :goto_0
    return-void
.end method

.method private blacklist parseException(Ljava/lang/Exception;)Z
    .locals 7
    .param p1, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 239
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "]@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "tokens":[Ljava/lang/String;
    aget-object v3, v2, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "filterId":Ljava/lang/String;
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->getOption(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 245
    .local v4, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda3;

    invoke-direct {v6, v3}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 246
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    .end local v3    # "filterId":Ljava/lang/String;
    .end local v4    # "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method


# virtual methods
.method public blacklist addInputEdge(Lcom/samsung/android/sume/core/graph/GraphEdge;)Lcom/samsung/android/sume/core/graph/GraphNode;
    .locals 1
    .param p1, "edge"    # Lcom/samsung/android/sume/core/graph/GraphEdge;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edge"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/GraphEdge;",
            ")",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "TT;>;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->inputEdges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-object p0
.end method

.method public blacklist addOutputEdge(Lcom/samsung/android/sume/core/graph/GraphEdge;)Lcom/samsung/android/sume/core/graph/GraphNode;
    .locals 1
    .param p1, "edge"    # Lcom/samsung/android/sume/core/graph/GraphEdge;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edge"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/GraphEdge;",
            ")",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "TT;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->outputEdges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-object p0
.end method

.method public blacklist containsOption(I)Z
    .locals 1
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 206
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->contains(I)Z

    move-result v0

    return v0
.end method

.method public blacklist get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 2

    .line 66
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    instance-of v1, v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    if-eqz v1, :cond_0

    .line 67
    check-cast v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    return-object v0

    .line 68
    :cond_0
    instance-of v1, v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    if-eqz v1, :cond_1

    .line 69
    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    return-object v0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "type is not MediaFilter either MFDescriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getExceptionHandler()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/Exception;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->exceptionHandler:Ljava/util/function/Function;

    return-object v0
.end method

.method public blacklist getNodeId()Ljava/lang/String;
    .locals 1

    .line 57
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->nodeId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOption(I)Ljava/lang/Object;
    .locals 1
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)TV;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOption(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "option",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(ITV;)TV;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/graph/Graph$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getReceiveChannelRouter()Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;
    .locals 1

    .line 88
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->receiveRouter:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    return-object v0
.end method

.method public blacklist getSendChannelRouter()Lcom/samsung/android/sume/core/channel/SendChannelRouter;
    .locals 1

    .line 93
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->sendRouter:Lcom/samsung/android/sume/core/channel/SendChannelRouter;

    return-object v0
.end method

.method public blacklist hasInputEdge()Z
    .locals 1

    .line 98
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->inputEdges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist hasOutputEdge()Z
    .locals 1

    .line 103
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->outputEdges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected blacklist isQuit()Z
    .locals 1

    .line 230
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-boolean v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->quit:Z

    return v0
.end method

.method synthetic blacklist lambda$prepare$1$com-samsung-android-sume-core-graph-GraphNodeBase(Ljava/lang/Enum;)Lcom/samsung/android/sume/core/channel/BufferChannel;
    .locals 2
    .param p1, "type"    # Ljava/lang/Enum;

    .line 123
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->inputEdges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-object v0
.end method

.method synthetic blacklist lambda$prepare$4$com-samsung-android-sume-core-graph-GraphNodeBase(Ljava/lang/Enum;)Lcom/samsung/android/sume/core/channel/BufferChannel;
    .locals 2
    .param p1, "type"    # Ljava/lang/Enum;

    .line 145
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->outputEdges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-object v0
.end method

.method public blacklist prepare()V
    .locals 8

    .line 108
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepare["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->nodeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    instance-of v2, v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    if-eqz v2, :cond_6

    .line 111
    check-cast v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 112
    .local v1, "mediaFilter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    invoke-interface {v1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v2

    .line 114
    .local v2, "option":Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    instance-of v3, v1, Lcom/samsung/android/sume/core/filter/MediaInputStreamFilter;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 115
    iget-object v3, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->inputEdges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 116
    iget-object v3, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->inputEdges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda4;-><init>()V

    new-instance v6, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v5, v6}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 120
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Enum<*>;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    move-object v5, v1

    check-cast v5, Lcom/samsung/android/sume/core/filter/MediaInputStreamFilter;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda7;

    invoke-direct {v6, v3}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda7;-><init>(Ljava/util/Map;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/samsung/android/sume/core/filter/MediaInputStreamFilter;->setReceiveChannelQuery(Ljava/util/function/Function;I)V

    .line 121
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Enum<*>;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    goto :goto_0

    .line 122
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/samsung/android/sume/core/filter/MediaInputStreamFilter;

    new-instance v5, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/sume/core/graph/GraphNodeBase;)V

    invoke-interface {v3, v5, v4}, Lcom/samsung/android/sume/core/filter/MediaInputStreamFilter;->setReceiveChannelQuery(Ljava/util/function/Function;I)V

    .line 128
    :goto_0
    new-instance v3, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda9;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->receiveRouter:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    goto :goto_2

    .line 130
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->inputEdges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v5, v6}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 133
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->isWaitToReceiveAll()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->ALL:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->ANY:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    .line 130
    :goto_1
    invoke-static {v3, v5}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;->of(Ljava/util/Map;Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;)Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->receiveRouter:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    .line 136
    :goto_2
    instance-of v3, v1, Lcom/samsung/android/sume/core/filter/MediaOutputStreamFilter;

    if-eqz v3, :cond_4

    .line 137
    iget-object v3, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->outputEdges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 138
    iget-object v3, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->outputEdges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda10;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda10;-><init>()V

    new-instance v5, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v4, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 142
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Enum<*>;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    move-object v4, v1

    check-cast v4, Lcom/samsung/android/sume/core/filter/MediaOutputStreamFilter;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda7;

    invoke-direct {v5, v3}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda7;-><init>(Ljava/util/Map;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/sume/core/filter/MediaOutputStreamFilter;->setSendChannelQuery(Ljava/util/function/Function;I)V

    .line 143
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Enum<*>;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    goto :goto_3

    .line 144
    :cond_3
    move-object v3, v1

    check-cast v3, Lcom/samsung/android/sume/core/filter/MediaOutputStreamFilter;

    new-instance v5, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/graph/GraphNodeBase;)V

    invoke-interface {v3, v5, v4}, Lcom/samsung/android/sume/core/filter/MediaOutputStreamFilter;->setSendChannelQuery(Ljava/util/function/Function;I)V

    .line 149
    :goto_3
    new-instance v3, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda6;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->sendRouter:Lcom/samsung/android/sume/core/channel/SendChannelRouter;

    goto :goto_5

    .line 151
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->outputEdges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v4, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->isAllowPartialConnection()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->ANY:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    goto :goto_4

    :cond_5
    sget-object v4, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->ALL:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    .line 151
    :goto_4
    invoke-static {v3, v4}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->of(Ljava/util/Map;Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;)Lcom/samsung/android/sume/core/channel/SendChannelRouter;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->sendRouter:Lcom/samsung/android/sume/core/channel/SendChannelRouter;

    .line 157
    :goto_5
    invoke-interface {v1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->prepare()V

    .line 159
    .end local v1    # "mediaFilter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    .end local v2    # "option":Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    :cond_6
    const-string/jumbo v1, "success to prepare MediaFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public blacklist release()V
    .locals 3

    .line 174
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release...E: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->nodeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-super {p0}, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->release()V

    .line 177
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->inputEdges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->outputEdges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda1;-><init>()V

    .line 178
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda2;-><init>()V

    .line 179
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 189
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    instance-of v2, v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    if-eqz v2, :cond_0

    .line 190
    check-cast v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->release()V

    .line 191
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release...X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->nodeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public blacklist setExceptionHandler(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exceptionHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Exception;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 221
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    .local p1, "exceptionHandler":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Exception;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->exceptionHandler:Ljava/util/function/Function;

    .line 222
    return-void
.end method

.method public blacklist setMessagePublisher(Lcom/samsung/android/sume/core/message/MessagePublisher;)V
    .locals 2
    .param p1, "messagePublisher"    # Lcom/samsung/android/sume/core/message/MessagePublisher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messagePublisher"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->nodeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/message/MessagePublisher;->setName(Ljava/lang/String;)V

    .line 165
    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    .line 166
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    instance-of v1, v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    if-eqz v1, :cond_0

    .line 167
    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 168
    .local v0, "mediaFilter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/MessagePublisher;->getMessageProducer()Lcom/samsung/android/sume/core/message/MessageProducer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->setMessageProducer(Lcom/samsung/android/sume/core/message/MessageProducer;)V

    .line 170
    .end local v0    # "mediaFilter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    :cond_0
    return-void
.end method

.method public blacklist setOption(I)V
    .locals 1
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 196
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->set(I)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 197
    return-void
.end method

.method public blacklist setOption(ILjava/lang/Object;)V
    .locals 1
    .param p1, "option"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "option",
            "data"
        }
    .end annotation

    .line 201
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/graph/Graph$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 202
    return-void
.end method

.method public blacklist setQuit(Z)V
    .locals 0
    .param p1, "quit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quit"
        }
    .end annotation

    .line 234
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphNodeBase;, "Lcom/samsung/android/sume/core/graph/GraphNodeBase<TT;>;"
    iput-boolean p1, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->quit:Z

    .line 235
    return-void
.end method

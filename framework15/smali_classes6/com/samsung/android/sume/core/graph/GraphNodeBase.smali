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

.field protected blacklist receiveRouter:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field protected blacklist sendRouter:Lcom/samsung/android/sume/core/channel/BufferChannel;


# direct methods
.method public static synthetic blacklist $r8$lambda$SpwigttUo5vCgwmCa9BVuYkQ7Io(Lcom/samsung/android/sume/core/graph/GraphNodeBase;Ljava/lang/Exception;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->parseException(Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/Object;Lcom/samsung/android/sume/core/message/MessageChannel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/samsung/android/sume/core/message/MessageChannel;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;-><init>(Lcom/samsung/android/sume/core/message/MessageChannel;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->inputEdges:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->outputEdges:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->quit:Z

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    instance-of v0, p1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

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

    new-instance v1, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;-><init>()V

    new-instance v2, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/graph/GraphNodeBase;)V

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->addPredicateHandler(Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$Predictor;Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$PredicateHandler;)Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->retrieve(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    :cond_0
    new-instance v0, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/graph/GraphNodeBase;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->exceptionHandler:Ljava/util/function/Function;

    return-void
.end method

.method static synthetic blacklist lambda$applyGraphOption$6(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/filter/MediaFilter;)Z
    .locals 1

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
    return v0
.end method

.method static synthetic blacklist lambda$applyGraphOption$9(Lcom/samsung/android/sume/core/filter/MediaFilter;)Z
    .locals 1

    instance-of v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/filter/MediaFilter;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$parseException$13(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$prepare$2(Lcom/samsung/android/sume/core/graph/GraphEdge;)Ljava/lang/Enum;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/graph/GraphEdge;->getEvaluator()Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method static synthetic blacklist lambda$prepare$4(Lcom/samsung/android/sume/core/graph/GraphEdge;)Ljava/lang/Enum;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/graph/GraphEdge;->getEvaluator()Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method static synthetic blacklist lambda$release$11(Lcom/samsung/android/sume/core/graph/GraphEdge;)Z
    .locals 1

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

.method static synthetic blacklist lambda$release$12(Lcom/samsung/android/sume/core/graph/GraphEdge;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/graph/GraphEdge;->getBufferChannel()Lcom/samsung/android/sume/core/channel/BufferChannel;

    move-result-object v0

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

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->cancel()V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

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

    :goto_0
    return-void
.end method

.method private blacklist parseException(Ljava/lang/Exception;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "]@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->getOption(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda11;

    invoke-direct {v6, v3}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method


# virtual methods
.method public blacklist addInputEdge(Lcom/samsung/android/sume/core/graph/GraphEdge;)Lcom/samsung/android/sume/core/graph/GraphNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/GraphEdge;",
            ")",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->inputEdges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addOutputEdge(Lcom/samsung/android/sume/core/graph/GraphEdge;)Lcom/samsung/android/sume/core/graph/GraphNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/GraphEdge;",
            ")",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->outputEdges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method blacklist applyGraphOption(Lcom/samsung/android/sume/core/graph/Graph$Option;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyGraphOption: option="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " => node="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isIgnoreFilterException()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->getIgnoreFilterException()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/sume/core/graph/GraphNodeBase;Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isTraceMediaFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda9;-><init>()V

    new-instance v2, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/sume/core/graph/GraphNodeBase;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->addPredicateHandler(Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$Predictor;Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$PredicateHandler;)Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->retrieve(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-void
.end method

.method public blacklist containsOption(I)Z
    .locals 1

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

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "type is not MediaFilter either MFDescriptor"

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

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->exceptionHandler:Ljava/util/function/Function;

    return-object v0
.end method

.method public blacklist getNodeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->nodeId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOption(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOption(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(ITV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/graph/Graph$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getReceiveChannelRouter()Lcom/samsung/android/sume/core/channel/BufferChannel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->receiveRouter:Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-object v0
.end method

.method public blacklist getSendChannelRouter()Lcom/samsung/android/sume/core/channel/BufferChannel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->sendRouter:Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-object v0
.end method

.method public blacklist hasInputEdge()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->inputEdges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist hasOutputEdge()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->outputEdges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected blacklist isQuit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->quit:Z

    return v0
.end method

.method synthetic blacklist lambda$applyGraphOption$10$com-samsung-android-sume-core-graph-GraphNodeBase(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found leaf filter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->TAG:Ljava/lang/String;

    const-string v1, "skip to trace MediaFilterPlaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    instance-of v1, p2, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->getPreFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v2

    if-ne v2, p1, :cond_1

    new-instance v2, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;

    iget-object v3, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/message/MessagePublisher;->getMessageProducer()Lcom/samsung/android/sume/core/message/MessageProducer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/message/MessageProducer;)V

    move-object v0, v2

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->setPreFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->getPostFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v2

    if-ne v2, p1, :cond_2

    new-instance v2, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;

    iget-object v3, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/message/MessagePublisher;->getMessageProducer()Lcom/samsung/android/sume/core/message/MessageProducer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/message/MessageProducer;)V

    move-object v0, v2

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->setPostFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;

    iget-object v3, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/message/MessagePublisher;->getMessageProducer()Lcom/samsung/android/sume/core/message/MessageProducer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/message/MessageProducer;)V

    move-object v0, v2

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->setSuccessorFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    :goto_0
    goto :goto_2

    :cond_3
    instance-of v1, p2, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    new-instance v2, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;

    iget-object v3, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/message/MessagePublisher;->getMessageProducer()Lcom/samsung/android/sume/core/message/MessageProducer;

    move-result-object v3

    invoke-direct {v2, p1, v3, p2}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/message/MessageProducer;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    move-object v0, v2

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->setSuccessorFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    goto :goto_1

    :cond_4
    instance-of v1, p2, Lcom/samsung/android/sume/core/filter/MediaFilterGroup;

    if-eqz v1, :cond_5

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/sume/core/filter/MediaFilterGroup;

    new-instance v2, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;

    iget-object v3, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/message/MessagePublisher;->getMessageProducer()Lcom/samsung/android/sume/core/message/MessageProducer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/message/MessageProducer;)V

    move-object v0, v2

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilterGroup;->replaceFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)Z

    goto :goto_2

    :cond_5
    :goto_1
    nop

    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->addMessageConsumer(Lcom/samsung/android/sume/core/message/MessageConsumer;)V

    :cond_6
    return-void
.end method

.method synthetic blacklist lambda$applyGraphOption$7$com-samsung-android-sume-core-graph-GraphNodeBase(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->getOption(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getFilterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic blacklist lambda$applyGraphOption$8$com-samsung-android-sume-core-graph-GraphNodeBase(Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p2, Lcom/samsung/android/sume/core/types/nn/NNFW;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sume/core/types/nn/NNFW;

    new-instance v1, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/sume/core/types/nn/NNFW;)V

    new-instance v2, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/sume/core/graph/GraphNodeBase;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->addPredicateHandler(Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$Predictor;Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$PredicateHandler;)Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;

    nop

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic blacklist lambda$new$1$com-samsung-android-sume-core-graph-GraphNodeBase(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->addMessageConsumer(Lcom/samsung/android/sume/core/message/MessageConsumer;)V

    return-void
.end method

.method synthetic blacklist lambda$prepare$3$com-samsung-android-sume-core-graph-GraphNodeBase(Ljava/lang/Enum;)Lcom/samsung/android/sume/core/channel/BufferChannel;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->inputEdges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-object v0
.end method

.method synthetic blacklist lambda$prepare$5$com-samsung-android-sume-core-graph-GraphNodeBase(Ljava/lang/Enum;)Lcom/samsung/android/sume/core/channel/BufferChannel;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->outputEdges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-object v0
.end method

.method public blacklist prepare(Lcom/samsung/android/sume/core/graph/Graph$Option;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare["

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

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->applyGraphOption(Lcom/samsung/android/sume/core/graph/Graph$Option;)V

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v1

    instance-of v2, v0, Lcom/samsung/android/sume/core/filter/MediaInputStreamFilter;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->inputEdges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->inputEdges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda3;-><init>()V

    new-instance v5, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda9;

    invoke-direct {v5}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v4, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/sume/core/filter/MediaInputStreamFilter;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda4;

    invoke-direct {v5, v2}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/sume/core/filter/MediaInputStreamFilter;->setReceiveChannelQuery(Ljava/util/function/Function;I)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sume/core/filter/MediaInputStreamFilter;

    new-instance v4, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/graph/GraphNodeBase;)V

    invoke-interface {v2, v4, v3}, Lcom/samsung/android/sume/core/filter/MediaInputStreamFilter;->setReceiveChannelQuery(Ljava/util/function/Function;I)V

    :goto_0
    new-instance v2, Lcom/samsung/android/sume/core/channel/VoidBufferChannel;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/channel/VoidBufferChannel;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->receiveRouter:Lcom/samsung/android/sume/core/channel/BufferChannel;

    goto :goto_2

    :cond_1
    new-instance v2, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    iget-object v4, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->inputEdges:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda8;

    invoke-direct {v5}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda8;-><init>()V

    new-instance v6, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda9;

    invoke-direct {v6}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v5, v6}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->isWaitToReceiveAll()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->ALL:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->ANY:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    :goto_1
    invoke-direct {v2, v4, v5}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;-><init>(Ljava/util/Map;Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;)V

    iput-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->receiveRouter:Lcom/samsung/android/sume/core/channel/BufferChannel;

    :goto_2
    instance-of v2, v0, Lcom/samsung/android/sume/core/filter/MediaOutputStreamFilter;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->outputEdges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->outputEdges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda6;-><init>()V

    new-instance v4, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda9;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/sume/core/filter/MediaOutputStreamFilter;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/sume/core/filter/MediaOutputStreamFilter;->setSendChannelQuery(Ljava/util/function/Function;I)V

    goto :goto_3

    :cond_3
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sume/core/filter/MediaOutputStreamFilter;

    new-instance v4, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/sume/core/graph/GraphNodeBase;)V

    invoke-interface {v2, v4, v3}, Lcom/samsung/android/sume/core/filter/MediaOutputStreamFilter;->setSendChannelQuery(Ljava/util/function/Function;I)V

    :goto_3
    new-instance v2, Lcom/samsung/android/sume/core/channel/VoidBufferChannel;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/channel/VoidBufferChannel;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->sendRouter:Lcom/samsung/android/sume/core/channel/BufferChannel;

    goto :goto_5

    :cond_4
    new-instance v2, Lcom/samsung/android/sume/core/channel/SendChannelRouter;

    iget-object v3, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->outputEdges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda8;-><init>()V

    new-instance v5, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda9;

    invoke-direct {v5}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v4, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->isAllowPartialConnection()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->ANY:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    goto :goto_4

    :cond_5
    sget-object v4, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->ALL:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    :goto_4
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;-><init>(Ljava/util/Map;Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;)V

    iput-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->sendRouter:Lcom/samsung/android/sume/core/channel/BufferChannel;

    :goto_5
    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->prepare()V

    :cond_6
    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->TAG:Ljava/lang/String;

    const-string v1, "success to prepare MediaFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist release()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release...E: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->nodeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->release()V

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->inputEdges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->outputEdges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->release()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release...X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->nodeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setExceptionHandler(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Exception;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->exceptionHandler:Ljava/util/function/Function;

    return-void
.end method

.method public blacklist setMessagePublisher(Lcom/samsung/android/sume/core/message/MessagePublisher;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->nodeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/message/MessagePublisher;->setName(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->impl:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/MessagePublisher;->getMessageProducer()Lcom/samsung/android/sume/core/message/MessageProducer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->setMessageProducer(Lcom/samsung/android/sume/core/message/MessageProducer;)V

    :cond_0
    return-void
.end method

.method public blacklist setOption(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->set(I)Lcom/samsung/android/sume/core/types/OptionBase;

    return-void
.end method

.method public blacklist setOption(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/graph/Graph$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;

    return-void
.end method

.method public blacklist setQuit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->quit:Z

    return-void
.end method

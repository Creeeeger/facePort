.class public Lcom/samsung/android/sume/core/graph/GraphEdge;
.super Ljava/lang/Object;
.source "GraphEdge.java"


# static fields
.field public static blacklist INVALID_ID:I


# instance fields
.field private final blacklist bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field private final blacklist evaluator:Lcom/samsung/android/sume/core/evaluate/Evaluator;

.field private blacklist id:I

.field private blacklist node:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/sume/core/graph/GraphEdge;->INVALID_ID:I

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/sume/core/graph/GraphEdge;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/evaluate/Evaluator;)V

    iput p1, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->id:I

    return-void
.end method

.method public constructor blacklist <init>(ILcom/samsung/android/sume/core/evaluate/Evaluator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/sume/core/graph/GraphEdge;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/evaluate/Evaluator;)V

    iput p1, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->id:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sume/core/graph/GraphEdge;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/evaluate/Evaluator;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/evaluate/Evaluator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/samsung/android/sume/core/graph/GraphEdge;->INVALID_ID:I

    iput v0, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->id:I

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->evaluator:Lcom/samsung/android/sume/core/evaluate/Evaluator;

    return-void
.end method

.method static synthetic blacklist lambda$getBeginNode$0(Landroid/util/Pair;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist lambda$getEndNode$1(Landroid/util/Pair;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public blacklist getBeginNode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->node:Landroid/util/Pair;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/GraphEdge$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/GraphEdge$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "n/a"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBufferChannel()Lcom/samsung/android/sume/core/channel/BufferChannel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-object v0
.end method

.method public blacklist getEndNode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->node:Landroid/util/Pair;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/GraphEdge$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/GraphEdge$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "n/a"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEvaluator()Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->evaluator:Lcom/samsung/android/sume/core/evaluate/Evaluator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/GraphEdge$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/GraphEdge$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    return-object v0
.end method

.method public blacklist getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->id:I

    return v0
.end method

.method public blacklist setNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->node:Landroid/util/Pair;

    return-void
.end method

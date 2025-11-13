.class public final synthetic Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/graph/MFGraph;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field public final synthetic blacklist f$2:Ljava/util/List;

.field public final synthetic blacklist f$3:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field public final synthetic blacklist f$4:Ljava/util/List;

.field public final synthetic blacklist f$5:Lcom/samsung/android/sume/core/graph/Graph$Option;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/MFGraph;Lcom/samsung/android/sume/core/channel/BufferChannel;Ljava/util/List;Lcom/samsung/android/sume/core/channel/BufferChannel;Ljava/util/List;Lcom/samsung/android/sume/core/graph/Graph$Option;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/sume/core/graph/MFGraph;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda6;->f$1:Lcom/samsung/android/sume/core/channel/BufferChannel;

    iput-object p3, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda6;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda6;->f$3:Lcom/samsung/android/sume/core/channel/BufferChannel;

    iput-object p5, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda6;->f$4:Ljava/util/List;

    iput-object p6, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda6;->f$5:Lcom/samsung/android/sume/core/graph/Graph$Option;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/sume/core/graph/MFGraph;

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda6;->f$1:Lcom/samsung/android/sume/core/channel/BufferChannel;

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda6;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda6;->f$3:Lcom/samsung/android/sume/core/channel/BufferChannel;

    iget-object v4, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda6;->f$4:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda6;->f$5:Lcom/samsung/android/sume/core/graph/Graph$Option;

    move-object v6, p1

    check-cast v6, Lcom/samsung/android/sume/core/graph/GraphNode;

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sume/core/graph/MFGraph;->lambda$new$0$com-samsung-android-sume-core-graph-MFGraph(Lcom/samsung/android/sume/core/channel/BufferChannel;Ljava/util/List;Lcom/samsung/android/sume/core/channel/BufferChannel;Ljava/util/List;Lcom/samsung/android/sume/core/graph/Graph$Option;Lcom/samsung/android/sume/core/graph/GraphNode;)V

    return-void
.end method

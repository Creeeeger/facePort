.class public final synthetic Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/channel/BufferChannel;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda15;->f$0:Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda15;->f$0:Lcom/samsung/android/sume/core/channel/BufferChannel;

    check-cast p1, Lcom/samsung/android/sume/core/graph/GraphNode;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/graph/MFGraph;->lambda$new$3(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/graph/GraphNode;)V

    return-void
.end method

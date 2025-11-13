.class public final synthetic Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/types/nn/NNFW;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/types/nn/NNFW;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/sume/core/types/nn/NNFW;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/sume/core/types/nn/NNFW;

    check-cast p1, Lcom/samsung/android/sume/core/graph/GraphNode;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/graph/MFGraph;->lambda$retrieveNNFWFilter$9(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/graph/GraphNode;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

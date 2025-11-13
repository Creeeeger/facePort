.class public final synthetic Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/graph/GraphBase;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/GraphBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/graph/GraphBase;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/graph/GraphBase;

    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/graph/GraphBase;->lambda$runBatch$0$com-samsung-android-sume-core-graph-GraphBase(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method

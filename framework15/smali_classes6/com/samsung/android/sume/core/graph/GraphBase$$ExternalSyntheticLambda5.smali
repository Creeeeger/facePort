.class public final synthetic Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/graph/GraphBase;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/GraphBase;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/graph/GraphBase;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/graph/GraphBase;

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sume/core/graph/GraphBase;->lambda$runOneByOne$1$com-samsung-android-sume-core-graph-GraphBase(Ljava/util/List;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method

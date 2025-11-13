.class public final synthetic Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/graph/GraphNodeBase;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/GraphNodeBase;Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/sume/core/graph/GraphNodeBase;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda8;->f$1:Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/sume/core/graph/GraphNodeBase;

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda8;->f$1:Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->lambda$applyGraphOption$8$com-samsung-android-sume-core-graph-GraphNodeBase(Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;Ljava/lang/Object;)V

    return-void
.end method

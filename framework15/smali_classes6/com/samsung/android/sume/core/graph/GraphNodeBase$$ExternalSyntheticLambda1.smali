.class public final synthetic Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$PredicateHandler;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/graph/GraphNodeBase;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/GraphNodeBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/graph/GraphNodeBase;

    return-void
.end method


# virtual methods
.method public final blacklist onPredicate(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/graph/GraphNodeBase;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->lambda$new$1$com-samsung-android-sume-core-graph-GraphNodeBase(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-void
.end method

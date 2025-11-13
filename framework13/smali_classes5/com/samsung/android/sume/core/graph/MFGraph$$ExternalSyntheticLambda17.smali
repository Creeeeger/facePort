.class public final synthetic Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/graph/MFGraph;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/MFGraph;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda17;->f$0:Lcom/samsung/android/sume/core/graph/MFGraph;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda17;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda17;->f$0:Lcom/samsung/android/sume/core/graph/MFGraph;

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda17;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sume/core/graph/MFGraph;->lambda$new$4$com-samsung-android-sume-core-graph-MFGraph(Ljava/util/List;Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

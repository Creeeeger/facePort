.class public final synthetic Lcom/samsung/android/sume/core/graph/GraphBase$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/graph/GraphBase$2;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/GraphBase$2;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphBase$2$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/graph/GraphBase$2;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/GraphBase$2$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase$2$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/graph/GraphBase$2;

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase$2$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sume/core/graph/GraphBase$2;->lambda$new$1$com-samsung-android-sume-core-graph-GraphBase$2(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)V

    return-void
.end method

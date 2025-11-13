.class public final synthetic Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/controller/MediaFilterController;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/controller/MediaFilterController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/controller/MediaFilterController;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/controller/MediaFilterController;

    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/controller/MediaFilterController;->lambda$run$1$com-samsung-android-sume-core-controller-MediaFilterController(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object p1

    return-object p1
.end method

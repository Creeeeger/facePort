.class public final synthetic Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/nn/SumeNN;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/MediaBuffer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/nn/SumeNN;Lcom/samsung/android/sume/MediaBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/nn/SumeNN;

    iput-object p2, p0, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda5;->f$1:Lcom/samsung/android/sume/MediaBuffer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/nn/SumeNN;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda5;->f$1:Lcom/samsung/android/sume/MediaBuffer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/nn/SumeNN;->lambda$run$6$com-samsung-android-sume-nn-SumeNN(Lcom/samsung/android/sume/MediaBuffer;)Lcom/samsung/android/sume/Result;

    move-result-object v0

    return-object v0
.end method

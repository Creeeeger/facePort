.class public final synthetic Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/nn/SumeNN;

.field public final synthetic blacklist f$1:[Lcom/samsung/android/sume/MediaBuffer;

.field public final synthetic blacklist f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/nn/SumeNN;[Lcom/samsung/android/sume/MediaBuffer;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/sume/nn/SumeNN;

    iput-object p2, p0, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda10;->f$1:[Lcom/samsung/android/sume/MediaBuffer;

    iput-object p3, p0, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda10;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/sume/nn/SumeNN;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda10;->f$1:[Lcom/samsung/android/sume/MediaBuffer;

    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda10;->f$2:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/nn/SumeNN;->lambda$run$8$com-samsung-android-sume-nn-SumeNN([Lcom/samsung/android/sume/MediaBuffer;Ljava/util/function/Consumer;)Lcom/samsung/android/sume/Result;

    move-result-object v0

    return-object v0
.end method

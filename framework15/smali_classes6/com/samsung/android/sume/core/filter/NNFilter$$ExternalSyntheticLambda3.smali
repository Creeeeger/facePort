.class public final synthetic Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/NNFilter;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/NNFilter;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/filter/NNFilter;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/filter/NNFilter;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    check-cast p1, Lcom/samsung/android/sume/core/functional/BufferProcessor;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sume/core/filter/NNFilter;->lambda$run$1$com-samsung-android-sume-core-filter-NNFilter(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/functional/BufferProcessor;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method

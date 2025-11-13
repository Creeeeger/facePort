.class public final synthetic Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    check-cast p1, Lcom/samsung/android/sume/core/types/MediaType;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->lambda$run$2$com-samsung-android-sume-core-filter-MediaMuxerFilter(Ljava/util/List;Lcom/samsung/android/sume/core/types/MediaType;Landroid/util/Pair;)V

    return-void
.end method

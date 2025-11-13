.class public final synthetic Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

.field public final synthetic blacklist f$1:Landroid/util/Pair;

.field public final synthetic blacklist f$2:Lcom/samsung/android/sume/core/types/MediaType;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;Landroid/util/Pair;Lcom/samsung/android/sume/core/types/MediaType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda0;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/sume/core/types/MediaType;

    return-void
.end method


# virtual methods
.method public final whitelist test-api call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda0;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->lambda$run$1$com-samsung-android-sume-core-filter-MediaMuxerFilter(Landroid/util/Pair;Lcom/samsung/android/sume/core/types/MediaType;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

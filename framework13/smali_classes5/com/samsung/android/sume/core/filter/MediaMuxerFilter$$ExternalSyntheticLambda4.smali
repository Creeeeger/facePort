.class public final synthetic Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

.field public final synthetic blacklist f$1:Landroid/media/MediaExtractor;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;Landroid/media/MediaExtractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda4;->f$1:Landroid/media/MediaExtractor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda4;->f$1:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->lambda$feedExistFramesToBufferChannel$0$com-samsung-android-sume-core-filter-MediaMuxerFilter(Landroid/media/MediaExtractor;I)V

    return-void
.end method

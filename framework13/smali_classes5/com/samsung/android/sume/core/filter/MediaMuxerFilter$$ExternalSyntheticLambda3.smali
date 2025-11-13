.class public final synthetic Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

    check-cast p1, Ljava/io/File;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->lambda$run$3$com-samsung-android-sume-core-filter-MediaMuxerFilter(Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

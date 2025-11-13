.class public final synthetic Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;

    check-cast p1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;->lambda$addFilter$0$com-samsung-android-sume-core-filter-collection-ParallelDNCFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-void
.end method

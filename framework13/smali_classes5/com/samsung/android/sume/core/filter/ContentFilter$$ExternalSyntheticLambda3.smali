.class public final synthetic Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/ContentFilter;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/format/MediaFormat;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/ContentFilter;Lcom/samsung/android/sume/core/format/MediaFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/filter/ContentFilter;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/sume/core/format/MediaFormat;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/filter/ContentFilter;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/sume/core/format/MediaFormat;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sume/core/filter/ContentFilter;->lambda$filterOut$0$com-samsung-android-sume-core-filter-ContentFilter(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

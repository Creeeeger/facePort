.class public final synthetic Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/filter/MediaFilterGroup;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;Lcom/samsung/android/sume/core/filter/MediaFilterGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/sume/core/filter/MediaFilterGroup;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/sume/core/filter/MediaFilterGroup;

    check-cast p1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->lambda$retrieve$2$com-samsung-android-sume-core-filter-MediaFilterRetriever(Lcom/samsung/android/sume/core/filter/MediaFilterGroup;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-void
.end method

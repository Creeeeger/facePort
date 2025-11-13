.class public final synthetic Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

.field public final synthetic blacklist f$2:Lcom/samsung/android/sume/core/filter/MediaFilter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda6;->f$1:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    iput-object p3, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda6;->f$2:Lcom/samsung/android/sume/core/filter/MediaFilter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda6;->f$1:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda6;->f$2:Lcom/samsung/android/sume/core/filter/MediaFilter;

    check-cast p1, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;->lambda$newFilter$7$com-samsung-android-sume-core-filter-factory-MediaFilterCreatorChain(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object p1

    return-object p1
.end method

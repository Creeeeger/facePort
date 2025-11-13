.class public final synthetic Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/filter/MediaFilter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$$ExternalSyntheticLambda4;->f$1:Lcom/samsung/android/sume/core/filter/MediaFilter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$$ExternalSyntheticLambda4;->f$1:Lcom/samsung/android/sume/core/filter/MediaFilter;

    check-cast p1, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$Predictor;

    check-cast p2, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$PredicateHandler;

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->lambda$retrieve$1(Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$Predictor;Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$PredicateHandler;)V

    return-void
.end method

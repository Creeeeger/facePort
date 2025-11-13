.class public final synthetic Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Lcom/samsung/android/sume/Reply;


# direct methods
.method public synthetic constructor blacklist <init>(IILcom/samsung/android/sume/Reply;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda11;->f$0:I

    iput p2, p0, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda11;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda11;->f$2:Lcom/samsung/android/sume/Reply;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda11;->f$0:I

    iget v1, p0, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda11;->f$1:I

    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda11;->f$2:Lcom/samsung/android/sume/Reply;

    check-cast p1, Landroid/media/ExifInterface;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler;->lambda$handleMessage$15(IILcom/samsung/android/sume/Reply;Landroid/media/ExifInterface;)V

    return-void
.end method

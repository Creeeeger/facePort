.class public final synthetic Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;FI)V
    .locals 0

    iput p3, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->f$1:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->f$1:F

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v1, v0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    iget p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->f$1:F

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v2, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p0, v3}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;-><init>(Lcom/airbnb/lottie/LottieDrawable;FI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    iget v2, v1, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    iget v1, v1, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    invoke-static {v2, v1, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result p0

    iget v1, v0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    invoke-virtual {v0, v1, p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v1, v0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    iget p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->f$1:F

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v2, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;-><init>(Lcom/airbnb/lottie/LottieDrawable;FI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget v2, v1, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    iget v1, v1, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    invoke-static {v2, v1, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

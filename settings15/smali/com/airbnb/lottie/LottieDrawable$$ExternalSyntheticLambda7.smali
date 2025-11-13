.class public final synthetic Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$1:I

    iput p3, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v1, v0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$1:I

    iget p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$2:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0, v2, p0}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;-><init>(Lcom/airbnb/lottie/LottieDrawable;II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    int-to-float v1, v2

    int-to-float p0, p0

    const v2, 0x3f7d70a4    # 0.99f

    add-float/2addr p0, v2

    invoke-virtual {v0, v1, p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    :goto_0
    return-void
.end method

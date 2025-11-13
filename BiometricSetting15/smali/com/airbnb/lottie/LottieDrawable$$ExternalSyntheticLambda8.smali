.class public final synthetic Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;FI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 4
    .line 5
    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->f$1:F

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 7
    .line 8
    iget p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->f$1:F

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 17
    .line 18
    iget p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->f$1:F

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, v0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance v2, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-direct {v2, v0, p0, v3}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;-><init>(Lcom/airbnb/lottie/LottieDrawable;FI)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 35
    .line 36
    iget v2, v1, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    .line 37
    .line 38
    iget v1, v1, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 39
    .line 40
    invoke-static {v2, v1, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    iget v1, v0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 45
    .line 46
    invoke-virtual {v0, v1, p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 51
    .line 52
    iget-object v1, v0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 53
    .line 54
    iget p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;->f$1:F

    .line 55
    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    iget-object v1, v0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 59
    .line 60
    new-instance v2, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-direct {v2, v0, p0, v3}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda8;-><init>(Lcom/airbnb/lottie/LottieDrawable;FI)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget v2, v1, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    .line 71
    .line 72
    iget v1, v1, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 73
    .line 74
    invoke-static {v2, v1, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    float-to-int p0, p0

    .line 79
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    .line 80
    .line 81
    .line 82
    :goto_1
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

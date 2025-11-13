.class public final Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInflateFinished(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mFullyInflated:Z

    const v2, 0x7f0a0dcb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f0a0dd0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f0a0dcf

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBgProtection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updatePadding()V

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updateColor()V

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updateAlpha()I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mSensorBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mSensorBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mSensorBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v4

    new-instance v5, Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->left:F

    const/4 v7, 0x0

    aget v7, v4, v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v8, v3, Landroid/graphics/RectF;->top:F

    aget v1, v4, v1

    int-to-float v1, v1

    sub-float/2addr v8, v1

    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v7

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v1

    invoke-direct {v5, v6, v8, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, v5, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v3, v5, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v5, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginsRelative(IIII)V

    invoke-virtual {p2, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance p2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v0, "**"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    const/4 p0, 0x0

    throw p0
.end method

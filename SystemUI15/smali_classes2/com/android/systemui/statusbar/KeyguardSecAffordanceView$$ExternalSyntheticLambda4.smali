.class public final synthetic Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$2:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda4;->f$2:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda4;->f$2:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDrawBackgroundColor:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getForegroundAlpha(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object p0, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSupportBlur()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsDrawBackgroundCircle:Z

    if-eqz p0, :cond_5

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mTaskOnCirclePaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iget v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxTaskOnBackgroundAlpha:I

    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v3, v3

    if-le v3, v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mMaxBackgroundAlpha:I

    int-to-float v3, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    if-le v1, v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_5
    iget-object p0, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mForegroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->getForegroundAlpha(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_6
    if-gtz p1, :cond_7

    const/4 p1, 0x1

    :cond_7
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method

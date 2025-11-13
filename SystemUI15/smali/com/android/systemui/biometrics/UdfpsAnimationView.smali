.class public abstract Lcom/android/systemui/biometrics/UdfpsAnimationView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDialogSuggestedAlpha:F

.field public mNotificationShadeExpansion:F

.field public mPauseAuth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mDialogSuggestedAlpha:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mNotificationShadeExpansion:F

    return-void
.end method


# virtual methods
.method public calculateAlpha()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mNotificationShadeExpansion:F

    const v1, 0x3ecccccd    # 0.4f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mDialogSuggestedAlpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0xff

    :goto_1
    return v0
.end method

.method public dozeTimeTick()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getDrawable()Lcom/android/systemui/biometrics/UdfpsFpDrawable;
.end method

.method public onSensorRectUpdated(Landroid/graphics/RectF;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->getDrawable()Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x8

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    add-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    add-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    sub-int/2addr v4, v0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    sub-int/2addr p1, v0

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->fingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public updateAlpha()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->calculateAlpha()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->getDrawable()Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/biometrics/UdfpsDrawable;->setAlpha(I)V

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return v0
.end method

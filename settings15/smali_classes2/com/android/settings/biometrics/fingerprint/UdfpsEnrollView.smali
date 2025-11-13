.class public Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper$Listener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mFingerprintDrawable:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;

.field public final mFingerprintProgressDrawable:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;

.field public final mHandler:Landroid/os/Handler;

.field public mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

.field public mProgressBarRadius:I

.field public mSensorRect:Landroid/graphics/Rect;


# direct methods
.method public static $r8$lambda$BF2LnLPda7pHzf6nSGUJBYkDPgE(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;)V
    .locals 11

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget v0, v0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->scaleFactor:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mProgressBarRadius:I

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v1, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mSensorRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v1, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget v2, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->rotation:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    if-ne v2, v3, :cond_1

    :cond_0
    iget v5, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayWidth:I

    iget v1, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayHeight:I

    invoke-static {v0, v5, v1, v2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;III)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v2, :cond_4

    if-ne v2, v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v9

    aget v7, v9, v7

    aget v9, v9, v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int/2addr v1, v9

    if-ne v2, v4, :cond_3

    const/16 v2, 0x55

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v2

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getPaddingX()I

    move-result v2

    sub-int/2addr v10, v2

    iput v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getPaddingY()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    if-ne v2, v3, :cond_6

    const/16 v2, 0x53

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v7

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getPaddingX()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getPaddingY()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v2

    aget v3, v2, v7

    aget v2, v2, v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    add-int/2addr v1, v3

    const/16 v3, 0x35

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getPaddingX()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getPaddingY()I

    move-result v2

    sub-int/2addr v3, v2

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v2, v1, :cond_5

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v2, v3, :cond_5

    goto :goto_2

    :cond_5
    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getPaddingX()I

    move-result v2

    mul-int/2addr v2, v8

    add-int/2addr v2, v1

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getPaddingY()I

    move-result v1

    mul-int/2addr v1, v8

    add-int/2addr v1, v0

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mSensorRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getPaddingX()I

    move-result v1

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getPaddingY()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v3, v3, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getPaddingX()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v4, v4, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getPaddingY()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;

    new-instance v1, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mSensorRect:Landroid/graphics/Rect;

    invoke-direct {v1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result p0

    float-to-int p0, p0

    div-int/lit8 p0, p0, 0x8

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    add-int/2addr v3, p0

    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int/2addr v4, p0

    iget v5, v1, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    sub-int/2addr v5, p0

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    sub-int/2addr v6, p0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object p0, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iput-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mFingerprintProgressDrawable:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getPaddingX()I
    .locals 0

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mProgressBarRadius:I

    return p0
.end method

.method private getPaddingY()I
    .locals 0

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mProgressBarRadius:I

    return p0
.end method


# virtual methods
.method public getOverlayParams()Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 2

    const v0, 0x7f0a10ab    # 1.8352E38f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a10aa

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mFingerprintProgressDrawable:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEnrollHelper(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;

    iput-object p1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    iput-object p0, p1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper$Listener;

    iget v0, p1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mTotalSteps:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget p1, p1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mRemainingSteps:I

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;III)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setOverlayParams(Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    new-instance p1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

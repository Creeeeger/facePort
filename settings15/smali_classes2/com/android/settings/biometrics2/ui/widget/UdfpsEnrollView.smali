.class public Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mFingerprintDrawable:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;

.field public final mFingerprintProgressDrawable:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollProgressBarDrawable;

.field public final mHandler:Landroid/os/Handler;

.field public final mOnDrawListener:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda1;

.field public mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

.field public mProgressBarRadius:I

.field public mRemainingSteps:I

.field public mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public mSensorRect:Landroid/graphics/Rect;

.field public mTotalSteps:I

.field public final mUdfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;


# direct methods
.method public static $r8$lambda$PiM0aR_wvNKlynWGHro_9xCsfqk(Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;)V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

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

    iput v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mProgressBarRadius:I

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v1, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mSensorRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v1, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget v2, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->rotation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    :cond_0
    iget v4, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayWidth:I

    iget v1, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayHeight:I

    invoke-static {v0, v4, v1, v2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;III)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fail to updateDimensions for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parent null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UdfpsEnrollView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLocationOnScreen()[I

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v4, v5

    aget v4, v4, v3

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    add-int/2addr v1, v4

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xb

    const/4 v9, 0x2

    if-eqz v2, :cond_5

    if-ne v2, v9, :cond_3

    goto :goto_0

    :cond_3
    const/16 v4, 0xc

    if-ne v2, v3, :cond_4

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v2

    invoke-direct {p0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->getPaddingX()I

    move-result v2

    sub-int/2addr v6, v2

    iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->getPaddingY()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_4
    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->getPaddingY()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v5

    invoke-direct {p0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->getPaddingX()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v1, 0xa

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v1

    invoke-direct {p0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->getPaddingX()I

    move-result v1

    sub-int/2addr v6, v1

    iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    invoke-direct {p0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->getPaddingY()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->getPaddingX()I

    move-result v2

    mul-int/2addr v2, v9

    add-int/2addr v2, v1

    iput v2, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->getPaddingY()I

    move-result v1

    mul-int/2addr v1, v9

    add-int/2addr v1, v0

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mSensorRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->getPaddingX()I

    move-result v1

    invoke-direct {p0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->getPaddingY()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v3, v3, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-direct {p0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->getPaddingX()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v4, v4, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {p0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->getPaddingY()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;

    new-instance v1, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mSensorRect:Landroid/graphics/Rect;

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

    iget-object p0, v0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object p0, v0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iput-object v1, v0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mTotalSteps:I

    iput v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mRemainingSteps:I

    new-instance v0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mOnDrawListener:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;

    new-instance v0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollProgressBarDrawable;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollProgressBarDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mFingerprintProgressDrawable:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollProgressBarDrawable;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/systemui/biometrics/UdfpsUtils;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mUdfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

    return-void
.end method

.method private getPaddingX()I
    .locals 0

    iget p0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mProgressBarRadius:I

    return p0
.end method

.method private getPaddingY()I
    .locals 0

    iget p0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mProgressBarRadius:I

    return p0
.end method


# virtual methods
.method public final onDetachedFromWindow()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mOnDrawListener:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    const v0, 0x7f0a10ab    # 1.8352E38f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a10aa

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mFingerprintProgressDrawable:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollProgressBarDrawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSensorProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mOnDrawListener:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

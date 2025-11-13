.class public Lcom/android/systemui/navigationbar/gestural/NavigationHandle;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/buttons/ButtonInterface;


# static fields
.field public static final PULSE_ANIMATION_PROGRESS:Lcom/android/systemui/navigationbar/gestural/NavigationHandle$1;


# instance fields
.field public final mAdditionalHeightForAnimation:F

.field public final mAdditionalWidthForAnimation:F

.field public final mBottom:F

.field public final mContext:Landroid/content/Context;

.field public final mDarkColor:I

.field public mDarkIntensity:F

.field public mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

.field public final mLightColor:I

.field public final mPaint:Landroid/graphics/Paint;

.field public mPulseAnimationProgress:F

.field public mPulseAnimator:Landroid/animation/ObjectAnimator;

.field public final mRadius:F

.field public mRequiresInvalidate:Z

.field public mShrink:Z

.field public final mShrinkWidthForAnimation:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle$1;

    const-string v1, "pulseAnimationProgress"

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->PULSE_ANIMATION_PROGRESS:Lcom/android/systemui/navigationbar/gestural/NavigationHandle$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mContext:Landroid/content/Context;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070afd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:F

    const v2, 0x7f070afc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:F

    const v2, 0x7f070b00

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mAdditionalWidthForAnimation:F

    const v2, 0x7f070aff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mAdditionalHeightForAnimation:F

    const v2, 0x7f070b01

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mShrinkWidthForAnimation:F

    const v1, 0x7f0401bd

    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result v1

    const v2, 0x7f0403e1

    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result v2

    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f040319

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const v3, 0x7f0604c7

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-static {v3, v1, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v3

    :goto_0
    iput v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mLightColor:I

    if-eqz v0, :cond_2

    const v0, 0x7f0604c6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-static {v2, v1, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkColor:I

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public final abortCurrentGesture()V
    .locals 0

    return-void
.end method

.method public final animateLongPress(ZZJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mShrink:Z

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/app/animation/Interpolators;->LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    new-instance p2, Lcom/android/systemui/navigationbar/gestural/NavigationHandle$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/android/app/animation/Interpolators;->LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

    :goto_0
    sget-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->PULSE_ANIMATION_PROGRESS:Lcom/android/systemui/navigationbar/gestural/NavigationHandle$1;

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mShrink:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mShrinkWidthForAnimation:F

    neg-float v2, v2

    iget v3, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimationProgress:F

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mAdditionalHeightForAnimation:F

    iget v3, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimationProgress:F

    mul-float/2addr v2, v3

    iget v4, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mAdditionalWidthForAnimation:F

    mul-float/2addr v3, v4

    move v15, v3

    move v3, v2

    move v2, v15

    :goto_0
    iget v4, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float v10, v6, v2

    neg-float v8, v2

    int-to-float v1, v1

    iget v2, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    div-float/2addr v3, v5

    add-float v9, v3, v1

    div-float v13, v4, v5

    add-float v11, v9, v4

    iget-object v14, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v12, v13

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setDarkIntensity(F)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkIntensity:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkIntensity:F

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;->setDarkIntensity(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mLightColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070ee1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    const/4 v1, 0x0

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v3, p1

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkIntensity:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;->setDarkIntensity(F)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

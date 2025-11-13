.class public final Lcom/android/systemui/shared/rotation/FloatingRotationButton;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field public final mButtonDiameterResource:I

.field public mContainerSize:I

.field public final mContentDescriptionResource:I

.field public final mContext:Landroid/content/Context;

.field public mDisplayRotation:I

.field public final mFloatingRotationBtnPositionLeftResource:I

.field public mIsShowing:Z

.field public mIsTaskbarStashed:Z

.field public mIsTaskbarVisible:Z

.field public final mKeyButtonContainer:Landroid/view/ViewGroup;

.field public final mKeyButtonView:Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;

.field public final mMinMarginResource:I

.field public mPosition:Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;

.field public mPositionCalculator:Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;

.field public mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

.field public final mRoundedContentPaddingResource:I

.field public mSamsungBottomMarginResource:I

.field public mSamsungDiameterResource:I

.field public mSamsungHiddenVisualCueRotateBtnResource:I

.field public final mTaskbarBottomMarginResource:I

.field public final mTaskbarLeftMarginResource:I

.field public mUpdatesCallback:Lcom/android/systemui/navigationbar/NavigationBarView$2;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIIIIII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsTaskbarVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsTaskbarStashed:Z

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;

    iput-object p3, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p1, p4, p3, p10}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object p1, p3, Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;->mRipple:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mContentDescriptionResource:I

    iput p5, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mMinMarginResource:I

    iput p6, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mRoundedContentPaddingResource:I

    iput p7, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mTaskbarLeftMarginResource:I

    iput p8, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mTaskbarBottomMarginResource:I

    iput p9, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mButtonDiameterResource:I

    iput p11, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mFloatingRotationBtnPositionLeftResource:I

    sget-boolean p1, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->updateDimensionResources()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final adjustViewPositionAndCreateLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 9

    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x108

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :goto_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mContainerSize:I

    const/16 v6, 0x7e8

    const/4 v8, -0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move v2, v3

    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "FloatingRotationButton"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mDisplayRotation:I

    iget-object v3, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mPositionCalculator:Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;

    iget-boolean v4, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsTaskbarVisible:Z

    iget-boolean v5, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsTaskbarStashed:Z

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->calculatePosition(IZZ)Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mPosition:Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;

    sget-boolean v3, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v3, :cond_1

    sget-object v2, Lcom/android/systemui/shared/rotation/RotationUtil;->Companion:Lcom/android/systemui/shared/rotation/RotationUtil$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lcom/android/systemui/shared/rotation/RotationUtil;->floatingButtonPosition:I

    goto :goto_2

    :cond_1
    iget v2, v2, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;->gravity:I

    :goto_2
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mPosition:Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;

    iget v4, v3, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;->gravity:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->updateTranslation(Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;Z)V

    return-object v0
.end method

.method public final hide()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonContainer:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsShowing:Z

    iget-object p0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mUpdatesCallback:Lcom/android/systemui/navigationbar/NavigationBarView$2;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyActiveTouchRegions()V

    :cond_1
    return-void
.end method

.method public final updateDimensionResources()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mSamsungBottomMarginResource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mMinMarginResource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mRoundedContentPaddingResource:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    iget v2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mTaskbarLeftMarginResource:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mTaskbarBottomMarginResource:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mFloatingRotationBtnPositionLeftResource:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    new-instance v5, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;-><init>(IIIZ)V

    iput-object v5, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mPositionCalculator:Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;

    sget-boolean v4, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mSamsungDiameterResource:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mButtonDiameterResource:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mContainerSize:I

    sget-boolean v1, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public final updateIcon(II)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    iget-object v1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iget v2, v2, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconResId:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateIcon() drawable="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FloatingRotationButton"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mSamsungHiddenVisualCueRotateBtnResource:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iget v2, v2, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconResId:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3f6b851f    # 0.92f

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Color;->valueOf(FFFF)Landroid/graphics/Color;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Color;->toArgb()I

    move-result p0

    iget-object p1, v1, Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, v1, Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;->mRipple:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

    sget-object p1, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;->OVAL:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;

    iput-object p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mType:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;

    return-void
.end method

.method public final updateTranslation(Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;Z)V
    .locals 2

    iget v0, p1, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;->translationX:I

    iget-object v1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;

    iget p1, p1, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;->translationY:I

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/shared/rotation/FloatingRotationButton$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/shared/rotation/FloatingRotationButton$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/rotation/FloatingRotationButton;I)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    int-to-float p0, v0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setTranslationX(F)V

    int-to-float p0, p1

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setTranslationY(F)V

    :goto_0
    return-void
.end method

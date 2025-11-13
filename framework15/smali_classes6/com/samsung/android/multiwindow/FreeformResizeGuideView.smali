.class public Lcom/samsung/android/multiwindow/FreeformResizeGuideView;
.super Landroid/widget/FrameLayout;
.source "FreeformResizeGuideView.java"


# instance fields
.field private blacklist mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final blacklist mAnimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAnimatorSet:Landroid/animation/AnimatorSet;

.field private blacklist mAppIconSize:I

.field private blacklist mAppIconView:Landroid/widget/ImageView;

.field private blacklist mDimView:Landroid/widget/ImageView;

.field private blacklist mDimViewMargin:I

.field private blacklist mFullscreenDimViewMargin:I

.field private blacklist mHeightAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mIsTransition:Z

.field private blacklist mLeftMarginAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mToFullScreen:Z

.field private blacklist mTopMarginAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mWidthAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic blacklist $r8$lambda$10ralw6cq04vJ4WklR6ZMFxzhWI(Lcom/samsung/android/multiwindow/FreeformResizeGuideView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->lambda$show$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7KhEmuVU8t2MDeDMxoxFnHLLrvU(Lcom/samsung/android/multiwindow/FreeformResizeGuideView;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->lambda$show$3(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ICHCZrc9LwJBRMwA2p-qtAFuhKY(Lcom/samsung/android/multiwindow/FreeformResizeGuideView;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->lambda$show$1(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$R7hCr1UsDNYkYw8HKxdMooSiJeg(Lcom/samsung/android/multiwindow/FreeformResizeGuideView;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->lambda$show$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Yilr5RvlYALaWsgVYGeEFqiwL4U(Lcom/samsung/android/multiwindow/FreeformResizeGuideView;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->lambda$show$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAppIconView(Lcom/samsung/android/multiwindow/FreeformResizeGuideView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAppIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimList:Ljava/util/ArrayList;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimList:Ljava/util/ArrayList;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private blacklist getGuideResourceId(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const v0, 0x1080719

    return v0

    :pswitch_0
    const v0, 0x10802e4

    return v0

    :pswitch_1
    const v0, 0x10802e3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getOrCreateValueAnimator(Landroid/animation/ValueAnimator;IILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    move-object p1, v0

    :cond_0
    filled-new-array {p2, p3}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private synthetic blacklist lambda$show$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic blacklist lambda$show$1(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic blacklist lambda$show$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic blacklist lambda$show$3(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic blacklist lambda$show$4(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private varargs blacklist removeAllUpdateListenersIfNeeded([Landroid/animation/ValueAnimator;)V
    .locals 3

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method blacklist dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->removeAllViews()V

    return-void
.end method

.method blacklist hide()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mDimView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method blacklist isShowingAppIcon()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected whitelist onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x102032b

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mDimView:Landroid/widget/ImageView;

    const v0, 0x102032a

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mDimViewMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mFullscreenDimViewMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAppIconSize:I

    return-void
.end method

.method blacklist setDimViewVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method blacklist show(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->show(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;)V

    return-void
.end method

.method blacklist show(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    iget-boolean v6, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mIsTransition:Z

    if-ne v6, v3, :cond_1

    iget-boolean v6, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mToFullScreen:Z

    if-eq v6, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v3, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mIsTransition:Z

    iput-boolean v4, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mToFullScreen:Z

    const/4 v6, 0x1

    :goto_1
    iget v7, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mDimViewMargin:I

    if-eqz v4, :cond_2

    iget v8, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mFullscreenDimViewMargin:I

    goto :goto_2

    :cond_2
    iget v8, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mDimViewMargin:I

    :goto_2
    iget v9, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v7

    iget v10, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    mul-int/lit8 v12, v7, 0x2

    add-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    mul-int/lit8 v13, v7, 0x2

    add-int/2addr v12, v13

    iget v13, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v8

    iget v14, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v8

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    mul-int/lit8 v16, v8, 0x2

    add-int v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v16

    mul-int/lit8 v17, v8, 0x2

    add-int v1, v16, v17

    iget-object v3, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v16, v7

    const/16 v17, 0x2

    if-eqz v6, :cond_e

    iget-object v7, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_d

    const/4 v7, 0x5

    new-array v7, v7, [Landroid/animation/ValueAnimator;

    move/from16 v19, v6

    iget-object v6, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mLeftMarginAnimator:Landroid/animation/ValueAnimator;

    const/16 v18, 0x0

    aput-object v6, v7, v18

    iget-object v6, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mTopMarginAnimator:Landroid/animation/ValueAnimator;

    const/16 v20, 0x1

    aput-object v6, v7, v20

    iget-object v6, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    aput-object v6, v7, v17

    const/4 v6, 0x3

    move/from16 v21, v8

    iget-object v8, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    aput-object v8, v7, v6

    const/4 v6, 0x4

    iget-object v8, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v8, v7, v6

    invoke-direct {v0, v7}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->removeAllUpdateListenersIfNeeded([Landroid/animation/ValueAnimator;)V

    if-ne v9, v13, :cond_3

    move/from16 v6, v20

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_4

    iget-object v7, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mLeftMarginAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0, v3}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/multiwindow/FreeformResizeGuideView;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-direct {v0, v7, v9, v13, v8}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->getOrCreateValueAnimator(Landroid/animation/ValueAnimator;IILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mLeftMarginAnimator:Landroid/animation/ValueAnimator;

    iget-object v7, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimList:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mLeftMarginAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-ne v10, v14, :cond_5

    move/from16 v7, v20

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    if-nez v7, :cond_6

    iget-object v8, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mTopMarginAnimator:Landroid/animation/ValueAnimator;

    move/from16 v17, v6

    new-instance v6, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0, v3}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/multiwindow/FreeformResizeGuideView;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-direct {v0, v8, v10, v14, v6}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->getOrCreateValueAnimator(Landroid/animation/ValueAnimator;IILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mTopMarginAnimator:Landroid/animation/ValueAnimator;

    iget-object v6, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimList:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mTopMarginAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    move/from16 v17, v6

    :goto_5
    if-ne v11, v15, :cond_7

    move/from16 v6, v20

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :goto_6
    if-nez v6, :cond_8

    iget-object v8, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    move/from16 v22, v6

    new-instance v6, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, v3}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/multiwindow/FreeformResizeGuideView;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-direct {v0, v8, v11, v15, v6}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->getOrCreateValueAnimator(Landroid/animation/ValueAnimator;IILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    iget-object v6, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimList:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    move/from16 v22, v6

    :goto_7
    if-ne v12, v1, :cond_9

    goto :goto_8

    :cond_9
    const/16 v20, 0x0

    :goto_8
    move/from16 v6, v20

    if-nez v6, :cond_a

    iget-object v8, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    move/from16 v20, v6

    new-instance v6, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0, v3}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/multiwindow/FreeformResizeGuideView;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-direct {v0, v8, v12, v1, v6}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->getOrCreateValueAnimator(Landroid/animation/ValueAnimator;IILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    iget-object v6, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimList:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    move/from16 v20, v6

    :goto_9
    move v8, v7

    const-wide/16 v6, 0x12c

    move/from16 v23, v8

    sget-object v8, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    if-eqz v5, :cond_c

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->getAnimationDuration(J)J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->getInterpolator(Landroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v8

    move-wide/from16 v24, v6

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->getFromAlpha()I

    move-result v6

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->getToAlpha()I

    move-result v7

    if-ltz v6, :cond_b

    if-ltz v7, :cond_b

    move-object/from16 v26, v8

    iget-object v8, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    move/from16 v27, v9

    new-instance v9, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$$ExternalSyntheticLambda4;

    invoke-direct {v9, v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/multiwindow/FreeformResizeGuideView;)V

    invoke-direct {v0, v8, v6, v7, v9}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->getOrCreateValueAnimator(Landroid/animation/ValueAnimator;IILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v8

    iput-object v8, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v8, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimList:Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_b
    move-object/from16 v26, v8

    move/from16 v27, v9

    :goto_a
    iget-object v8, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->addDismissListener(Landroid/animation/AnimatorSet;)V

    move-wide/from16 v6, v24

    move-object/from16 v8, v26

    goto :goto_b

    :cond_c
    move/from16 v27, v9

    :goto_b
    iget-object v9, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v9, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v5, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_c

    :cond_d
    move/from16 v19, v6

    move/from16 v21, v8

    move/from16 v27, v9

    goto :goto_c

    :cond_e
    move/from16 v19, v6

    move/from16 v21, v8

    move/from16 v27, v9

    iget-boolean v5, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mIsTransition:Z

    if-nez v5, :cond_10

    iget-object v5, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    if-eqz v3, :cond_f

    iput v13, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v14, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v15, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v5, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    if-eqz v4, :cond_10

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAppIconSize:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAppIconSize:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    :goto_c
    iget-object v5, v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mDimView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method blacklist startHideAppIconAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAppIconView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAppIconView:Landroid/widget/ImageView;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAppIconView:Landroid/widget/ImageView;

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    const-string v5, "alpha"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$2;-><init>(Lcom/samsung/android/multiwindow/FreeformResizeGuideView;)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method blacklist startShowAppIconAnimation()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAppIconView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAppIconView:Landroid/widget/ImageView;

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleY"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v6, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v8, v1, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v10, 0x1

    aput-object v2, v8, v10

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v8, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$1;-><init>(Lcom/samsung/android/multiwindow/FreeformResizeGuideView;)V

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    iget-object v8, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAppIconView:Landroid/widget/ImageView;

    new-array v11, v1, [F

    fill-array-data v11, :array_2

    invoke-static {v8, v3, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v8, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAppIconView:Landroid/widget/ImageView;

    new-array v11, v1, [F

    fill-array-data v11, :array_3

    invoke-static {v8, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v11, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mContext:Landroid/content/Context;

    const v12, 0x10c003e

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v8, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v3, v1, v9

    aput-object v5, v1, v10

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f733333    # 0.95f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f733333    # 0.95f
    .end array-data

    :array_2
    .array-data 4
        0x3f733333    # 0.95f
        0x3f666666    # 0.9f
    .end array-data

    :array_3
    .array-data 4
        0x3f733333    # 0.95f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method blacklist update(ILandroid/content/ComponentName;)V
    .locals 4

    invoke-static {p1}, Landroid/app/WindowConfiguration;->isDexTaskDocking(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mDimViewMargin:I

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mFullscreenDimViewMargin:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->getGuideResourceId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mAppIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p2, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getAppIcon(Landroid/content/Context;Landroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

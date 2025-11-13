.class public Lcom/samsung/android/multiwindow/FreeformGuideWindow;
.super Landroid/widget/FrameLayout;
.source "FreeformGuideWindow.java"


# static fields
.field public static final blacklist STATE_NONE:I = -0x1

.field public static final blacklist STATE_RESIZE:I = 0x0

.field public static final blacklist STATE_WARNING:I = 0x1


# instance fields
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

.field private blacklist mAttached:Z

.field private final blacklist mBounds:Landroid/graphics/Rect;

.field private blacklist mDimView:Landroid/widget/ImageView;

.field private blacklist mDimViewMargin:I

.field private blacklist mFullscreenDimViewMargin:I

.field private blacklist mIsShowingFullscreen:Z

.field private final blacklist mLastBounds:Landroid/graphics/Rect;

.field private blacklist mNeedAnimation:Z

.field private blacklist mState:I

.field private final blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    if-eqz p1, :cond_0

    .line 59
    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 58
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mState:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAttached:Z

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimView:Landroid/widget/ImageView;

    .line 49
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mBounds:Landroid/graphics/Rect;

    .line 50
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mLastBounds:Landroid/graphics/Rect;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAnimList:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 53
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mIsShowingFullscreen:Z

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mNeedAnimation:Z

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->setWillNotDraw(Z)V

    .line 62
    return-void
.end method

.method private blacklist generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 106
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0xa2d

    const/16 v4, 0x18

    const/4 v5, -0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 113
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "FreeformGuideWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 115
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 117
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 118
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 119
    const v1, 0x1030595

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 121
    return-object v0
.end method

.method private blacklist getGuideResourceId(I)I
    .locals 1
    .param p1, "dexDockingState"    # I

    .line 95
    packed-switch p1, :pswitch_data_0

    .line 101
    const v0, 0x10806b5

    return v0

    .line 99
    :pswitch_0
    const v0, 0x108029c

    return v0

    .line 97
    :pswitch_1
    const v0, 0x108029b

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist refreshUI()V
    .locals 2

    .line 254
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAttached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 258
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 265
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 261
    :pswitch_1
    nop

    .line 269
    :goto_0
    return-void

    .line 255
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist dismiss()V
    .locals 1

    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAttached:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->removeAllViews()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimView:Landroid/widget/ImageView;

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAttached:Z

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mState:I

    .line 237
    :cond_0
    monitor-exit p0

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist initialize()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->initialize(I)V

    .line 66
    return-void
.end method

.method public blacklist initialize(I)V
    .locals 3
    .param p1, "dexDockingState"    # I

    .line 69
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/app/WindowConfiguration;->isDexTaskDocking(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iput v1, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimViewMargin:I

    .line 71
    iput v1, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mFullscreenDimViewMargin:I

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050174

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimViewMargin:I

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050175

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mFullscreenDimViewMargin:I

    .line 79
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAttached:Z

    if-nez v0, :cond_2

    .line 80
    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->setLayoutDirection(I)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimView:Landroid/widget/ImageView;

    .line 83
    nop

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->getGuideResourceId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->addView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAttached:Z

    .line 92
    :cond_2
    return-void
.end method

.method public blacklist isAttached()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAttached:Z

    return v0
.end method

.method synthetic blacklist lambda$show$0$com-samsung-android-multiwindow-FreeformGuideWindow(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "lp"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .line 168
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 169
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    return-void
.end method

.method synthetic blacklist lambda$show$1$com-samsung-android-multiwindow-FreeformGuideWindow(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "lp"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .line 180
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 181
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    return-void
.end method

.method synthetic blacklist lambda$show$2$com-samsung-android-multiwindow-FreeformGuideWindow(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "lp"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .line 191
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 192
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    return-void
.end method

.method synthetic blacklist lambda$show$3$com-samsung-android-multiwindow-FreeformGuideWindow(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "lp"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .line 202
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 203
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    return-void
.end method

.method public blacklist show(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->show(Landroid/graphics/Rect;Z)V

    .line 126
    return-void
.end method

.method public blacklist show(Landroid/graphics/Rect;Z)V
    .locals 20
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "needToFullscreenTransition"    # Z

    .line 129
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    monitor-enter p0

    .line 130
    :try_start_0
    iget-boolean v0, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAttached:Z

    if-eqz v0, :cond_d

    if-eqz v2, :cond_d

    iget-object v0, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 134
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mLastBounds:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 135
    iget-object v0, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 137
    iget-boolean v0, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mIsShowingFullscreen:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v3, :cond_1

    .line 138
    iput-boolean v3, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mIsShowingFullscreen:Z

    .line 139
    iput-boolean v4, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mNeedAnimation:Z

    goto :goto_0

    .line 141
    :cond_1
    iput-boolean v5, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mNeedAnimation:Z

    .line 144
    :goto_0
    if-eqz v3, :cond_2

    iget v0, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mFullscreenDimViewMargin:I

    goto :goto_1

    :cond_2
    iget v0, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimViewMargin:I

    .line 146
    .local v0, "margin":I
    :goto_1
    iget-object v6, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mLastBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v0

    .line 147
    .local v6, "fromLeftMargin":I
    iget-object v7, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mLastBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v0

    .line 148
    .local v7, "fromTopMargin":I
    iget-object v8, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int/lit8 v9, v0, 0x2

    add-int/2addr v8, v9

    .line 149
    .local v8, "fromWidth":I
    iget-object v9, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    mul-int/lit8 v10, v0, 0x2

    add-int/2addr v9, v10

    .line 151
    .local v9, "fromHeight":I
    iget-object v10, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v0

    .line 152
    .local v10, "toLeftMargin":I
    iget-object v11, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v0

    .line 153
    .local v11, "toTopMargin":I
    iget-object v12, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    mul-int/lit8 v13, v0, 0x2

    add-int/2addr v12, v13

    .line 154
    .local v12, "toWidth":I
    iget-object v13, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    mul-int/lit8 v14, v0, 0x2

    add-int/2addr v13, v14

    .line 157
    .local v13, "toHeight":I
    iget-object v14, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 159
    .local v14, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v15, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mNeedAnimation:Z

    if-eqz v15, :cond_b

    .line 160
    iget-object v15, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAnimList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 163
    if-ne v6, v10, :cond_3

    move v15, v4

    goto :goto_2

    :cond_3
    move v15, v5

    .line 164
    .local v15, "equalLeftMargin":Z
    :goto_2
    const/4 v4, 0x2

    if-nez v15, :cond_4

    .line 165
    new-array v5, v4, [I

    const/16 v17, 0x0

    aput v6, v5, v17

    const/16 v16, 0x1

    aput v10, v5, v16

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 167
    .local v5, "leftMarginAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/samsung/android/multiwindow/FreeformGuideWindow$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v14}, Lcom/samsung/android/multiwindow/FreeformGuideWindow$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/multiwindow/FreeformGuideWindow;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 171
    iget-object v4, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAnimList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v5    # "leftMarginAnimator":Landroid/animation/ValueAnimator;
    :cond_4
    if-ne v7, v11, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 176
    .local v4, "equalTopMargin":Z
    :goto_3
    if-nez v4, :cond_6

    .line 177
    move/from16 v18, v0

    const/4 v5, 0x2

    .end local v0    # "margin":I
    .local v18, "margin":I
    new-array v0, v5, [I

    const/4 v5, 0x0

    aput v7, v0, v5

    const/4 v5, 0x1

    aput v11, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 179
    .local v0, "topMarginAnimator":Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/samsung/android/multiwindow/FreeformGuideWindow$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1, v14}, Lcom/samsung/android/multiwindow/FreeformGuideWindow$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/multiwindow/FreeformGuideWindow;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 183
    iget-object v5, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAnimList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 176
    .end local v18    # "margin":I
    .local v0, "margin":I
    :cond_6
    move/from16 v18, v0

    .line 187
    .end local v0    # "margin":I
    .restart local v18    # "margin":I
    :goto_4
    if-ne v8, v12, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    .line 188
    .local v0, "equalWidth":Z
    :goto_5
    if-nez v0, :cond_8

    .line 189
    move/from16 v19, v0

    const/4 v5, 0x2

    .end local v0    # "equalWidth":Z
    .local v19, "equalWidth":Z
    new-array v0, v5, [I

    const/4 v5, 0x0

    aput v8, v0, v5

    const/4 v5, 0x1

    aput v12, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 190
    .local v0, "widthAnimator":Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/samsung/android/multiwindow/FreeformGuideWindow$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1, v14}, Lcom/samsung/android/multiwindow/FreeformGuideWindow$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/multiwindow/FreeformGuideWindow;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 194
    iget-object v5, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAnimList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 188
    .end local v19    # "equalWidth":Z
    .local v0, "equalWidth":Z
    :cond_8
    move/from16 v19, v0

    .line 198
    .end local v0    # "equalWidth":Z
    .restart local v19    # "equalWidth":Z
    :goto_6
    if-ne v9, v13, :cond_9

    const/4 v0, 0x1

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    .line 199
    .local v0, "equalHeight":Z
    :goto_7
    if-nez v0, :cond_a

    .line 200
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/16 v17, 0x0

    aput v9, v5, v17

    const/16 v16, 0x1

    aput v13, v5, v16

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 201
    .local v5, "heightAnimator":Landroid/animation/ValueAnimator;
    move/from16 v16, v0

    .end local v0    # "equalHeight":Z
    .local v16, "equalHeight":Z
    new-instance v0, Lcom/samsung/android/multiwindow/FreeformGuideWindow$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/multiwindow/FreeformGuideWindow$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/multiwindow/FreeformGuideWindow;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 205
    iget-object v0, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 199
    .end local v5    # "heightAnimator":Landroid/animation/ValueAnimator;
    .end local v16    # "equalHeight":Z
    .restart local v0    # "equalHeight":Z
    :cond_a
    move/from16 v16, v0

    .line 208
    .end local v0    # "equalHeight":Z
    .restart local v16    # "equalHeight":Z
    :goto_8
    iget-object v0, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 209
    iget-object v0, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v2, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    iget-object v0, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 211
    iget-object v0, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 212
    .end local v4    # "equalTopMargin":Z
    .end local v15    # "equalLeftMargin":Z
    .end local v16    # "equalHeight":Z
    .end local v19    # "equalWidth":Z
    goto :goto_9

    .line 213
    .end local v18    # "margin":I
    .local v0, "margin":I
    :cond_b
    move/from16 v18, v0

    .end local v0    # "margin":I
    .restart local v18    # "margin":I
    iget-boolean v0, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mIsShowingFullscreen:Z

    if-nez v0, :cond_c

    .line 214
    iget-object v0, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 216
    iput v10, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 217
    iput v11, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 218
    iput v12, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 219
    iput v13, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 220
    iget-object v0, v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    .end local v6    # "fromLeftMargin":I
    .end local v7    # "fromTopMargin":I
    .end local v8    # "fromWidth":I
    .end local v9    # "fromHeight":I
    .end local v10    # "toLeftMargin":I
    .end local v11    # "toTopMargin":I
    .end local v12    # "toWidth":I
    .end local v13    # "toHeight":I
    .end local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v18    # "margin":I
    :cond_c
    :goto_9
    monitor-exit p0

    .line 224
    return-void

    .line 131
    :cond_d
    :goto_a
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist updateGuideState(I)Z
    .locals 1
    .param p1, "state"    # I

    .line 245
    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mState:I

    if-eq v0, p1, :cond_0

    .line 246
    iput p1, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->mState:I

    .line 247
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->refreshUI()V

    .line 248
    const/4 v0, 0x1

    return v0

    .line 250
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

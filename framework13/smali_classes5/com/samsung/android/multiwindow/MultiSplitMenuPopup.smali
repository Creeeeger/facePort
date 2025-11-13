.class public Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;
.super Landroid/widget/PopupWindow;
.source "MultiSplitMenuPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;,
        Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;,
        Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final blacklist BLUR_ALPHA:I = 0x80

.field private static final blacklist CAPTION_COLOR_DARK:I = -0xbbbbbc

.field private static final blacklist CAPTION_COLOR_LIGHT:I = -0x30304

.field private static final blacklist DEBUG_LOCATION:Z = false

.field private static final blacklist DEFAULT_TITLE:Ljava/lang/String; = "MWMenuPopup:"

.field private static final blacklist DISMISS_DELAY_TIME:I = 0xbb8

.field private static final blacklist FADE_DURATION:I = 0x96

.field private static final blacklist FREEFORM_MIN_OPACITY:F = 0.4f

.field private static final blacklist MENU_BUTTON_COUNT_IN_FREEFORM:I = 0x6

.field private static final blacklist MENU_BUTTON_COUNT_IN_FREEFORM_MINUS_1:I = 0x5

.field private static final blacklist MENU_BUTTON_COUNT_IN_FREEFORM_MINUS_2:I = 0x4

.field private static final blacklist MENU_BUTTON_COUNT_IN_FULLSCREEN:I = 0x3

.field private static final blacklist MENU_BUTTON_COUNT_IN_SPLIT:I = 0x4

.field private static final blacklist OPACITY_INITIAL_PROGRESS:I = 0x3c

.field private static final blacklist POPUP_ALPHA:I = 0xcc

.field private static final blacklist TAG:Ljava/lang/String; = "MultiSplitMenuPopup"


# instance fields
.field private final blacklist mAnchor:Landroid/view/View;

.field private final blacklist mButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClose:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;

.field private final blacklist mContentView:Landroid/view/ViewGroup;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDefaultYOffsetInFreeformMode:I

.field private final blacklist mDismissRunnable:Ljava/lang/Runnable;

.field private blacklist mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

.field private blacklist mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

.field private blacklist mGravity:I

.field private blacklist mIconTintList:Landroid/content/res/ColorStateList;

.field private blacklist mItemPadding:I

.field private blacklist mItemSize:I

.field private final blacklist mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

.field private blacklist mMenuContainer:Landroid/view/ViewGroup;

.field private blacklist mOpacityChangeModeEnabled:Z

.field private blacklist mOpacityProgress:I

.field private final blacklist mOwner:Landroid/view/Window;

.field private final blacklist mOwnerDecor:Lcom/android/internal/policy/DecorView;

.field private blacklist mPopupSidePadding:I

.field private blacklist mSeekBarContainer:Landroid/view/View;

.field private blacklist mStatusBarSize:I

.field private blacklist mSupportSplitMode:Z

.field private final blacklist mVisAnimListener:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;

.field private blacklist mVisibilityAnim:Landroid/animation/AnimatorSet;

.field private final blacklist mWM:Landroid/view/WindowManager;

.field private blacklist mWindowingMode:I

.field private blacklist mXOffset:I

.field private blacklist mYOffset:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMenuContainer(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMenuContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSeekBarContainer(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mSeekBarContainer:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVisibilityAnim(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleDismiss(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->scheduleDismiss()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;Lcom/samsung/android/multiwindow/MultiSplitActions;)V
    .locals 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "actions"    # Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x10304c9

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mButtons:Ljava/util/List;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mSupportSplitMode:Z

    .line 101
    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOpacityChangeModeEnabled:Z

    .line 102
    const/16 v3, 0x3c

    iput v3, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOpacityProgress:I

    .line 104
    new-instance v3, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;-><init>(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener-IA;)V

    iput-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mVisAnimListener:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;

    .line 117
    new-instance v3, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;)V

    iput-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mDismissRunnable:Ljava/lang/Runnable;

    .line 126
    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mAnchor:Landroid/view/View;

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 129
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getWindow()Landroid/view/Window;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOwner:Landroid/view/Window;

    .line 130
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOwnerDecor:Lcom/android/internal/policy/DecorView;

    .line 132
    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mWM:Landroid/view/WindowManager;

    .line 134
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitModeSupported()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mSupportSplitMode:Z

    .line 136
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->setWindowLayoutType(I)V

    .line 138
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 139
    const v4, 0x109016a

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mContentView:Landroid/view/ViewGroup;

    .line 140
    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->setContentView(Landroid/view/View;)V

    .line 142
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMenuContainer:Landroid/view/ViewGroup;

    .line 143
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mSeekBarContainer:Landroid/view/View;

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 147
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;

    if-eqz v2, :cond_1

    .line 148
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 150
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020263

    if-ne v2, v3, :cond_0

    .line 153
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;

    iput-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mClose:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mButtons:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMenuContainer:Landroid/view/ViewGroup;

    const v1, 0x10202c5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    .line 161
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mSeekBarContainer:Landroid/view/View;

    const v1, 0x10202b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

    .line 162
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetMode(I)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->updateResourcesFromDCResources()V

    .line 168
    return-void
.end method

.method private blacklist dismissImmediately()V
    .locals 1

    .line 488
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->setExitTransition(Landroid/transition/Transition;)V

    .line 489
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->dismiss()V

    .line 490
    return-void
.end method

.method private blacklist expandSideTouchArea()V
    .locals 17

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mButtons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;

    .line 463
    .local v2, "button":Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 464
    iget v4, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mItemSize:I

    iget v5, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mPopupSidePadding:I

    iget v9, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mItemPadding:I

    add-int v6, v9, v5

    move-object v3, v2

    move v7, v9

    move v8, v9

    invoke-static/range {v3 .. v9}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->-$$Nest$msetProperties(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;IIIIII)V

    .line 466
    goto :goto_1

    .line 468
    .end local v2    # "button":Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;
    :cond_0
    goto :goto_0

    .line 469
    :cond_1
    :goto_1
    iget-object v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mClose:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;

    iget v11, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mItemSize:I

    iget v12, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mPopupSidePadding:I

    iget v1, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mItemPadding:I

    add-int v15, v1, v12

    move v13, v1

    move v14, v1

    move/from16 v16, v1

    invoke-static/range {v10 .. v16}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->-$$Nest$msetProperties(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;IIIIII)V

    .line 471
    return-void
.end method

.method private blacklist scheduleDismiss()V
    .locals 4

    .line 474
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 475
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isAccessibilityServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 479
    return-void
.end method

.method private blacklist setOpacityChangeModeEnabled()V
    .locals 8

    .line 667
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOpacityChangeModeEnabled:Z

    if-eqz v0, :cond_0

    .line 668
    return-void

    .line 671
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOpacityChangeModeEnabled:Z

    .line 672
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getWindowOpacity()F

    move-result v1

    const v2, 0x3ecccccd    # 0.4f

    sub-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOpacityProgress:I

    .line 673
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 675
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 676
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 678
    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    .line 680
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mSeekBarContainer:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v0, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 681
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x96

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 682
    sget-object v5, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 684
    iget-object v5, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMenuContainer:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    aput v2, v0, v6

    invoke-static {v5, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 685
    .local v0, "captionAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 686
    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mVisAnimListener:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$VisibilityAnimListener;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 687
    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 690
    .end local v0    # "captionAnim":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/ObjectAnimator;
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mSeekBarContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 692
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 693
    return-void
.end method

.method private blacklist setOpacitySeekBarDisabledImmediately()V
    .locals 3

    .line 659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOpacityChangeModeEnabled:Z

    .line 660
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mAnchor:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 661
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mSeekBarContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 662
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMenuContainer:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 664
    return-void
.end method

.method private blacklist updateButtonVisibility()V
    .locals 5

    .line 450
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;

    .line 451
    .local v1, "button":Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;
    iget-object v4, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v4, v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isButtonVisible(Landroid/view/View;)Z

    move-result v4

    .line 452
    .local v4, "visible":Z
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->setVisibility(I)V

    .line 453
    .end local v1    # "button":Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;
    .end local v4    # "visible":Z
    goto :goto_0

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mWindowingMode:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    .line 456
    goto :goto_2

    :cond_2
    move v2, v3

    .line 455
    :goto_2
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->setVisibility(I)V

    .line 458
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->expandSideTouchArea()V

    .line 459
    return-void
.end method

.method private blacklist updateResourcesFromDCResources()V
    .locals 19

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOwnerDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mWindowingMode:I

    .line 265
    iget-object v1, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getDecorCaptionResources()Lcom/samsung/android/util/DecorCaptionResources;

    move-result-object v1

    .line 266
    .local v1, "dcRes":Lcom/samsung/android/util/DecorCaptionResources;
    invoke-virtual {v1}, Lcom/samsung/android/util/DecorCaptionResources;->isNightModeEnabled()Z

    move-result v2

    .line 272
    .local v2, "isNightMode":Z
    if-eqz v2, :cond_0

    const v3, -0xbbbbbc

    goto :goto_0

    :cond_0
    const v3, -0x30304

    .line 273
    .local v3, "backgroundColor":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    .line 274
    .local v4, "background":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setTint(I)V

    .line 277
    iget-object v5, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 278
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v6, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mContext:Landroid/content/Context;

    .line 279
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 278
    const-string/jumbo v7, "wallpapertheme_state"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 281
    if-eqz v2, :cond_1

    .line 282
    const v6, 0x1060307

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mIconTintList:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 285
    :cond_1
    const v6, 0x1060308

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 289
    :goto_1
    const v6, 0x1060314

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 291
    .local v6, "progressTintList":Landroid/content/res/ColorStateList;
    iget-object v9, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v9, v6}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 292
    iget-object v9, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v9, v6}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 293
    iget-object v9, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

    const v10, 0x1060312

    invoke-virtual {v5, v10, v7}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 295
    .end local v6    # "progressTintList":Landroid/content/res/ColorStateList;
    goto :goto_3

    .line 296
    :cond_2
    if-eqz v2, :cond_3

    .line 297
    const v6, 0x1060303

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mIconTintList:Landroid/content/res/ColorStateList;

    goto :goto_2

    .line 300
    :cond_3
    const v6, 0x1060304

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 304
    :goto_2
    const v6, 0x1060313

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 306
    .restart local v6    # "progressTintList":Landroid/content/res/ColorStateList;
    iget-object v9, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v9, v6}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 307
    iget-object v9, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v9, v6}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 308
    iget-object v9, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

    const v10, 0x1060311

    invoke-virtual {v5, v10, v7}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 313
    .end local v6    # "progressTintList":Landroid/content/res/ColorStateList;
    :goto_3
    const v6, 0x105041a

    invoke-virtual {v1, v6}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mItemSize:I

    .line 314
    const v6, 0x1050419

    invoke-virtual {v1, v6}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mItemPadding:I

    .line 316
    iget-object v6, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/R$styleable;->MultiSplitMenuView:[I

    if-eqz v2, :cond_4

    .line 317
    const v10, 0x10304ca

    goto :goto_4

    .line 318
    :cond_4
    const v10, 0x10304b7

    .line 316
    :goto_4
    invoke-virtual {v6, v7, v9, v8, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 320
    .local v6, "a":Landroid/content/res/TypedArray;
    iget-object v7, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mButtons:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x6

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x1

    const/4 v14, 0x5

    const/4 v15, 0x2

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;

    .line 321
    .local v9, "button":Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;
    const/16 v16, 0x0

    .line 322
    .local v16, "iconDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 323
    .local v17, "contentDescription":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->getId()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    goto/16 :goto_7

    .line 341
    :sswitch_0
    iget-object v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isHorizontalSplitState()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 342
    const/16 v10, 0x8

    goto :goto_6

    .line 343
    :cond_5
    const/16 v10, 0x9

    .line 341
    :goto_6
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 344
    const v10, 0x1040cca

    invoke-virtual {v1, v10}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 345
    move-object/from16 v10, v16

    move-object/from16 v11, v17

    goto/16 :goto_7

    .line 355
    :sswitch_1
    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 356
    const v10, 0x1040cbf

    invoke-virtual {v1, v10}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    goto :goto_7

    .line 351
    :sswitch_2
    invoke-virtual {v6, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 352
    const v10, 0x1040cc7

    invoke-virtual {v1, v10}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 353
    move-object/from16 v10, v16

    move-object/from16 v11, v17

    goto :goto_7

    .line 347
    :sswitch_3
    const/4 v10, 0x7

    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 348
    const v10, 0x1040cc6

    invoke-virtual {v1, v10}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 349
    move-object/from16 v10, v16

    move-object/from16 v11, v17

    goto :goto_7

    .line 325
    :sswitch_4
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 326
    const v10, 0x1040cc4

    invoke-virtual {v1, v10}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 327
    move-object/from16 v10, v16

    move-object/from16 v11, v17

    goto :goto_7

    .line 329
    :sswitch_5
    invoke-virtual {v6, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 330
    const v10, 0x1040cc3

    invoke-virtual {v1, v10}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 331
    move-object/from16 v10, v16

    move-object/from16 v11, v17

    goto :goto_7

    .line 337
    :sswitch_6
    invoke-virtual {v6, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 338
    const v10, 0x1040cc2

    invoke-virtual {v1, v10}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 339
    move-object/from16 v10, v16

    move-object/from16 v11, v17

    goto :goto_7

    .line 333
    :sswitch_7
    invoke-virtual {v6, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 334
    const v10, 0x1040cc1

    invoke-virtual {v1, v10}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 335
    move-object/from16 v10, v16

    move-object/from16 v11, v17

    .line 360
    .end local v16    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v17    # "contentDescription":Ljava/lang/String;
    .local v10, "iconDrawable":Landroid/graphics/drawable/Drawable;
    .local v11, "contentDescription":Ljava/lang/String;
    :goto_7
    if-eqz v10, :cond_6

    .line 361
    iget-object v12, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 362
    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 364
    :cond_6
    iget v12, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mItemSize:I

    iget v13, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mItemPadding:I

    invoke-static {v9, v12, v13}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->-$$Nest$msetProperties(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;II)V

    .line 365
    invoke-virtual {v9, v11}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 366
    .end local v9    # "button":Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;
    .end local v10    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "contentDescription":Ljava/lang/String;
    goto/16 :goto_5

    .line 368
    :cond_7
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 374
    const v7, 0x10504cc

    invoke-virtual {v1, v7}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mStatusBarSize:I

    .line 375
    iget-object v7, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    const v9, 0x105041c

    .line 376
    invoke-virtual {v1, v9}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v9

    const v11, 0x105041b

    .line 377
    invoke-virtual {v1, v11}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v11

    .line 375
    invoke-virtual {v7, v2, v9, v11}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->setProperties(ZII)V

    .line 379
    const v7, 0x1050424

    invoke-virtual {v1, v7}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v7

    .line 381
    .local v7, "seekBarPaddingHorizontal":I
    iget-object v9, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v9, v7, v8, v7, v8}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 383
    const v9, 0x1050420

    invoke-virtual {v1, v9}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mPopupSidePadding:I

    .line 386
    iget v11, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mWindowingMode:I

    if-ne v11, v14, :cond_b

    .line 387
    iget-boolean v9, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mSupportSplitMode:Z

    if-eqz v9, :cond_9

    .line 388
    sget-boolean v9, Lcom/samsung/android/rune/ViewRune;->SUPPORT_MULTI_SPLIT_WINDOW_OPACITY:Z

    if-eqz v9, :cond_8

    .line 390
    iget v9, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mItemSize:I

    mul-int/2addr v9, v10

    iget v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mPopupSidePadding:I

    mul-int/2addr v10, v15

    add-int/2addr v9, v10

    iget-object v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    invoke-static {v10}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->-$$Nest$fgetmWidth(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;)I

    move-result v10

    add-int/2addr v9, v10

    .local v9, "width":I
    goto :goto_8

    .line 394
    .end local v9    # "width":I
    :cond_8
    iget v9, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mItemSize:I

    mul-int/2addr v9, v14

    iget v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mPopupSidePadding:I

    mul-int/2addr v10, v15

    add-int/2addr v9, v10

    iget-object v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    invoke-static {v10}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->-$$Nest$fgetmWidth(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;)I

    move-result v10

    add-int/2addr v9, v10

    .restart local v9    # "width":I
    goto :goto_8

    .line 398
    .end local v9    # "width":I
    :cond_9
    sget-boolean v9, Lcom/samsung/android/rune/ViewRune;->SUPPORT_MULTI_SPLIT_WINDOW_OPACITY:Z

    if-eqz v9, :cond_a

    .line 400
    iget v9, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mItemSize:I

    mul-int/2addr v9, v14

    iget v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mPopupSidePadding:I

    mul-int/2addr v10, v15

    add-int/2addr v9, v10

    iget-object v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    invoke-static {v10}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->-$$Nest$fgetmWidth(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;)I

    move-result v10

    add-int/2addr v9, v10

    .restart local v9    # "width":I
    goto :goto_8

    .line 404
    .end local v9    # "width":I
    :cond_a
    iget v9, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mItemSize:I

    mul-int/2addr v9, v12

    iget v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mPopupSidePadding:I

    mul-int/2addr v10, v15

    add-int/2addr v9, v10

    iget-object v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    invoke-static {v10}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->-$$Nest$fgetmWidth(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;)I

    move-result v10

    add-int/2addr v9, v10

    .line 408
    .restart local v9    # "width":I
    :goto_8
    const v10, 0x1050422

    invoke-virtual {v1, v10}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mDefaultYOffsetInFreeformMode:I

    goto :goto_a

    .line 411
    .end local v9    # "width":I
    :cond_b
    if-ne v11, v13, :cond_c

    .line 412
    iget v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mItemSize:I

    const/4 v11, 0x3

    mul-int/2addr v10, v11

    mul-int/2addr v9, v15

    add-int/2addr v10, v9

    move v9, v10

    .local v10, "width":I
    goto :goto_9

    .line 414
    .end local v10    # "width":I
    :cond_c
    iget v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mItemSize:I

    mul-int/2addr v10, v12

    mul-int/2addr v9, v15

    add-int/2addr v10, v9

    move v9, v10

    .line 416
    .restart local v9    # "width":I
    :goto_9
    const v10, 0x1050423

    invoke-virtual {v1, v10}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mYOffset:I

    .line 419
    :goto_a
    invoke-virtual {v0, v9}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->setWidth(I)V

    .line 420
    iget v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mItemSize:I

    invoke-virtual {v0, v10}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->setHeight(I)V

    .line 422
    iget-object v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOwnerDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v10}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 423
    const v10, 0x800033

    iput v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mGravity:I

    .line 424
    iget-object v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mWM:Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 425
    .local v10, "displayWidth":I
    iget-object v11, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mWM:Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 426
    .local v11, "windowWidth":I
    sub-int v12, v10, v11

    .line 427
    .local v12, "widthOffset":I
    iget-object v14, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOwnerDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v14}, Lcom/android/internal/policy/DecorView;->getLayoutDirection()I

    move-result v14

    if-ne v14, v13, :cond_d

    .line 428
    sub-int v13, v10, v9

    div-int/2addr v13, v15

    iput v13, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mXOffset:I

    goto :goto_b

    .line 430
    :cond_d
    sub-int v13, v10, v9

    div-int/2addr v13, v15

    sub-int/2addr v13, v12

    iput v13, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mXOffset:I

    .line 432
    :goto_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateRes: displayWidth="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " xOffset="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mXOffset:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " width="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "MultiSplitMenuPopup"

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .end local v10    # "displayWidth":I
    .end local v11    # "windowWidth":I
    .end local v12    # "widthOffset":I
    goto :goto_c

    .line 434
    :cond_e
    const/16 v10, 0x31

    iput v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mGravity:I

    .line 435
    iput v8, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mXOffset:I

    .line 439
    :goto_c
    new-instance v10, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v10, v8}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v8, 0x80

    .line 440
    invoke-virtual {v10, v8}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v8

    const/16 v10, 0xcc

    .line 441
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v11

    .line 442
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    .line 441
    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v8

    iget v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mItemSize:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    .line 443
    invoke-virtual {v8, v10}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object v8

    .line 444
    invoke-virtual {v8}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v8

    .line 445
    .local v8, "blurInfo":Landroid/view/SemBlurInfo;
    iget-object v10, v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 447
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1020263 -> :sswitch_7
        0x102031c -> :sswitch_6
        0x10203ec -> :sswitch_5
        0x1020408 -> :sswitch_4
        0x102046d -> :sswitch_3
        0x10204a2 -> :sswitch_2
        0x10205af -> :sswitch_1
        0x10205d9 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected final blacklist createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;

    .line 172
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isAccessibilityServiceEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->setFocusable(Z)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOwner:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 175
    .local v0, "ownerToken":Landroid/os/IBinder;
    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 176
    .local v1, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x1040200

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 177
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 178
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    const/4 v3, 0x2

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    .line 179
    iget v2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mWindowingMode:I

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-ne v2, v5, :cond_2

    .line 180
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mWM:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 181
    .local v2, "displayWidth":I
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->getWidth()I

    move-result v5

    .line 182
    .local v5, "popupWidth":I
    new-array v6, v3, [I

    .line 183
    .local v6, "ownerLocation":[I
    iget-object v7, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOwnerDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v7, v6}, Lcom/android/internal/policy/DecorView;->getLocationOnScreen([I)V

    .line 184
    aget v7, v6, v4

    iget-object v8, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOwnerDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v8}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v8

    sub-int/2addr v8, v5

    div-int/2addr v8, v3

    add-int/2addr v7, v8

    .line 185
    .local v7, "popupLocationX":I
    if-gez v7, :cond_0

    .line 186
    const v8, 0x10302fb

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0

    .line 187
    :cond_0
    add-int v8, v7, v5

    if-le v8, v2, :cond_1

    .line 188
    const v8, 0x10302fc

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0

    .line 190
    :cond_1
    const v8, 0x10302fa

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 192
    .end local v2    # "displayWidth":I
    .end local v5    # "popupWidth":I
    .end local v6    # "ownerLocation":[I
    .end local v7    # "popupLocationX":I
    :goto_0
    goto :goto_1

    .line 193
    :cond_2
    const v2, 0x10302fd

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 196
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mAnchor:Landroid/view/View;

    instance-of v5, v2, Lcom/samsung/android/multiwindow/OverlayHandlerView;

    if-eqz v5, :cond_3

    check-cast v2, Lcom/samsung/android/multiwindow/OverlayHandlerView;

    .line 197
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->isFullScreenHandlerOverlappedWithCutout()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_2

    .line 200
    :cond_3
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 202
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mAnchor:Landroid/view/View;

    instance-of v3, v2, Lcom/samsung/android/multiwindow/OverlayHandlerView;

    if-eqz v3, :cond_4

    .line 203
    check-cast v2, Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->setFitInsetsAndCutoutModeIfNeeded(Landroid/view/WindowManager$LayoutParams;)Z

    .line 205
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSMenuPopup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOwner:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    return-object v1
.end method

.method public whitelist dismiss()V
    .locals 0

    .line 483
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 484
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->setOpacitySeekBarDisabledImmediately()V

    .line 485
    return-void
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 494
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOwner:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 495
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 500
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 501
    .local v0, "id":I
    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 525
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->dismissImmediately()V

    .line 527
    const-string v2, "From fullscreen handle"

    const-string v3, "1005"

    const/4 v4, 0x5

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_0

    .line 510
    :sswitch_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 511
    .local v1, "position":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 512
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->dismissImmediately()V

    .line 513
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v2, v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->showAllApps([I)V

    .line 515
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 516
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v2, :cond_1

    .line 517
    const-string v2, "1051"

    invoke-static {v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 522
    :cond_1
    return-void

    .line 506
    .end local v1    # "position":[I
    :sswitch_1
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v2, v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->setHeaderType(I)V

    .line 507
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->dismissImmediately()V

    .line 508
    return-void

    .line 503
    :sswitch_2
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->setOpacityChangeModeEnabled()V

    .line 504
    return-void

    .line 529
    :sswitch_3
    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiSplitActions;->moveToSplit()V

    .line 530
    iget v3, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mWindowingMode:I

    const-string v5, "1000"

    if-ne v3, v4, :cond_3

    .line 531
    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 533
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v3, :cond_2

    .line 534
    const-string v3, "From Popup view"

    invoke-static {v5, v3}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v4, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getMultiSplitFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_2

    .line 538
    const-string v4, "1021"

    invoke-static {v4, v3}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_2
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v3, :cond_3

    .line 544
    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mContext:Landroid/content/Context;

    .line 546
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 544
    const-string v4, "2006"

    invoke-static {v4, v3}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_3
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mWindowingMode:I

    if-ne v3, v1, :cond_7

    .line 553
    invoke-static {v5, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 583
    :sswitch_4
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->minimize()V

    .line 584
    goto/16 :goto_0

    .line 586
    :sswitch_5
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->maximize()V

    .line 587
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mWindowingMode:I

    if-ne v1, v4, :cond_4

    .line 588
    const/16 v1, 0x3c

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOpacityProgress:I

    .line 590
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v1, :cond_7

    .line 591
    const-string v1, "2002"

    invoke-static {v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_4
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v1, :cond_7

    .line 597
    const-string v1, "1013"

    invoke-static {v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 599
    const-string v1, "Switch to Full screen"

    invoke-static {v3, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :sswitch_6
    iget-object v4, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiSplitActions;->moveToFreeform()V

    .line 562
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v4, :cond_7

    .line 563
    iget v4, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mWindowingMode:I

    const-string v5, "2004"

    if-ne v4, v1, :cond_5

    .line 564
    invoke-static {v5, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 568
    :cond_5
    const-string v1, "Tap \'Open in Pop-up view\' button"

    invoke-static {v3, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mContext:Landroid/content/Context;

    .line 573
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 572
    const-string v2, "1012"

    invoke-static {v2, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v1, "From split view Option"

    invoke-static {v5, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :sswitch_7
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->close()V

    .line 608
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mWindowingMode:I

    if-ne v1, v4, :cond_6

    .line 609
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v1, :cond_7

    .line 610
    const-string v1, "2003"

    const-string v2, "Window option"

    invoke-static {v1, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 614
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v1, :cond_7

    .line 615
    const-string v1, "Tap \'Close window\' button"

    invoke-static {v3, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v1, "1014"

    invoke-static {v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 626
    :cond_7
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x102046d -> :sswitch_2
        0x10204a2 -> :sswitch_1
        0x10205af -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1020263 -> :sswitch_7
        0x102031c -> :sswitch_6
        0x10203ec -> :sswitch_5
        0x1020408 -> :sswitch_4
        0x10205d9 -> :sswitch_3
    .end sparse-switch
.end method

.method public whitelist onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 636
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 641
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->scheduleDismiss()V

    goto :goto_0

    .line 638
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 639
    nop

    .line 644
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 630
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 631
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 697
    iput p2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOpacityProgress:I

    .line 698
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    int-to-float v1, p2

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->setWindowOpacity(F)V

    .line 699
    return-void
.end method

.method public whitelist onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 703
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 704
    return-void
.end method

.method public whitelist onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 708
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->scheduleDismiss()V

    .line 711
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v0, :cond_0

    .line 712
    nop

    .line 713
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 712
    const-string v1, "2005"

    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :cond_0
    return-void
.end method

.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 649
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 652
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->scheduleDismiss()V

    .line 655
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method blacklist show()Z
    .locals 7

    .line 212
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOwnerDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mWindowingMode:I

    .line 213
    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 214
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mDefaultYOffsetInFreeformMode:I

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mYOffset:I

    .line 218
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mStatusBarSize:I

    .line 219
    .local v0, "minTop":I
    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 220
    .local v3, "handlerLocation":[I
    iget-object v4, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 221
    aget v4, v3, v1

    if-ge v4, v0, :cond_0

    .line 222
    aget v0, v3, v1

    .line 224
    :cond_0
    aget v4, v3, v1

    iget-object v5, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v2

    add-int/2addr v4, v5

    .line 225
    .local v4, "handlerCenterY":I
    iget v5, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mItemSize:I

    div-int/2addr v5, v2

    sub-int v5, v4, v5

    .line 226
    .local v5, "currTop":I
    if-le v0, v5, :cond_1

    .line 227
    new-array v2, v2, [I

    .line 228
    .local v2, "decorLocation":[I
    iget-object v6, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mOwnerDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v6, v2}, Lcom/android/internal/policy/DecorView;->getLocationOnScreen([I)V

    .line 229
    aget v6, v2, v1

    sub-int v6, v0, v6

    iput v6, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mYOffset:I

    .line 241
    .end local v0    # "minTop":I
    .end local v2    # "decorLocation":[I
    .end local v3    # "handlerLocation":[I
    .end local v4    # "handlerCenterY":I
    .end local v5    # "currTop":I
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->updateButtonVisibility()V

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mAnchor:Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mGravity:I

    iget v3, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mXOffset:I

    iget v4, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mYOffset:I

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show: exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MultiSplitMenuPopup"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->scheduleDismiss()V

    .line 253
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->mWindowingMode:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 254
    const-string v0, "1011"

    invoke-static {v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 257
    :cond_2
    return v1

    .line 259
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

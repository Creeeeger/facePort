.class public final Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field public mAppName:Ljava/lang/CharSequence;

.field public mBackButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

.field public final mButtons:Landroid/util/SparseArray;

.field public mCaptionBackgroundColor:I

.field public mCaptionButtonColor:Landroid/content/res/ColorStateList;

.field public mCaptionHeight:I

.field public final mCaptionType:I

.field public final mContext:Landroid/content/Context;

.field public mDexCaptionWidth:I

.field public mEventReceiver:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$EventReceiver;

.field public mHandleHideAnimator:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;

.field public mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

.field public final mHandler:Landroid/os/Handler;

.field public mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

.field public mInputMonitor:Landroid/view/InputMonitor;

.field public final mIsDexEnabled:Z

.field public final mIsDexMode:Z

.field public mIsImmersiveMode:Z

.field public final mIsNewDexMode:Z

.field public mIsNightMode:Z

.field public mIsSplitTopDown:Z

.field public mIsTaskFocused:Z

.field public mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

.field public final mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

.field public final mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

.field public mPrimaryButtonSet:Landroid/view/ViewGroup;

.field public mRootView:Landroid/view/View;

.field public mSecondaryButtonSet:Landroid/view/ViewGroup;

.field public mShowPrimaryButtonSet:Z

.field public mStagePosition:I

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public mToggleButtonAnimator:Landroid/animation/AnimatorSet;

.field public mUnpinAnimRunnable:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$$ExternalSyntheticLambda0;

.field public mUnpinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    sput-object v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    sget-object v0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    sput-object v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILandroid/os/Handler;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/content/Context;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mButtons:Landroid/util/SparseArray;

    iput p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mCaptionType:I

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    iput-object p8, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-virtual {p4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Configuration;->isDesktopModeEnabled()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsDexEnabled:Z

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p3}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsDexMode:Z

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p3}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsNewDexMode:Z

    iget-object p5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean p7, p5, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    iput-boolean p7, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsTaskFocused:Z

    invoke-static {p5}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    move-result p5

    iput-boolean p5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsNightMode:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->getCaptionButtonTintColor()Landroid/content/res/ColorStateList;

    move-result-object p5

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mCaptionButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    iget-boolean p6, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsNightMode:Z

    if-eqz p6, :cond_0

    const p6, 0x106032f

    goto :goto_0

    :cond_0
    const p6, 0x1060330

    :goto_0
    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p5

    iput p5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mCaptionBackgroundColor:I

    xor-int/lit8 p3, p3, 0x1

    iput-boolean p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsSplitTopDown:Z

    invoke-virtual {p4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result p3

    iput p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mStagePosition:I

    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f0a024b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/windowdecor/widget/HandleView;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    :cond_1
    return-void
.end method

.method public static measureChild(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method


# virtual methods
.method public final adjustOverflowButton(I)V
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mButtons:Landroid/util/SparseArray;

    const v1, 0x7f0a02a7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070f7e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-boolean v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsDexMode:Z

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getPaddingEnd()I

    move-result v4

    if-eq v4, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getPaddingStart()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v4, v5, v2, v6}, Landroid/widget/ImageButton;->setPaddingRelative(IIII)V

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->updateRippleBackground()V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mPrimaryButtonSet:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mSecondaryButtonSet:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mBackButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mBackButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->measureChild(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mBackButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mPrimaryButtonSet:Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    return-void

    :cond_4
    move v0, v2

    move v4, v0

    :goto_0
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mPrimaryButtonSet:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v0, v5, :cond_6

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mPrimaryButtonSet:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v5}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->measureChild(Landroid/view/View;)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_5

    move v0, v6

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_1
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-nez v5, :cond_7

    return-void

    :cond_7
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX:Z

    iget-boolean v8, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsNewDexMode:Z

    if-eqz v7, :cond_8

    if-eqz v8, :cond_8

    invoke-static {v5}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->measureChild(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr p1, v5

    if-gez p1, :cond_8

    move v0, v6

    :cond_8
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mSecondaryButtonSet:Landroid/view/ViewGroup;

    if-nez v5, :cond_9

    return-void

    :cond_9
    const/16 v5, 0x8

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mPrimaryButtonSet:Landroid/view/ViewGroup;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mSecondaryButtonSet:Landroid/view/ViewGroup;

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    :cond_a
    sub-int/2addr p1, v4

    move v4, v2

    move v7, v4

    :goto_2
    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mSecondaryButtonSet:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_c

    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mSecondaryButtonSet:Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_b

    invoke-static {v9}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->measureChild(Landroid/view/View;)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v7, v9

    if-ge p1, v7, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_c
    move v6, v0

    :goto_3
    if-eqz v6, :cond_f

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->measureChild(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    if-eqz v3, :cond_d

    if-ge p1, v0, :cond_d

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mPrimaryButtonSet:Landroid/view/ViewGroup;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mSecondaryButtonSet:Landroid/view/ViewGroup;

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    :cond_d
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mButtons:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getPaddingStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getPaddingStart()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->updateRippleBackground()V

    :cond_e
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mSecondaryButtonSet:Landroid/view/ViewGroup;

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    :cond_f
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz v8, :cond_10

    goto :goto_4

    :cond_10
    move v2, v5

    :goto_4
    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method public final getAppName()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mAppName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mAppName:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "MultiTaskingWindowDecorationViewHolder"

    const-string v1, "getAppName: error "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public final getCaptionButtonTintColor()Landroid/content/res/ColorStateList;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mContext:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsNightMode:Z

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/wm/shell/windowdecor/CaptionShellUtils;->getButtonTintColor(Landroid/content/Context;ZZ)Landroid/content/res/ColorStateList;

    move-result-object p0

    sget-boolean v0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->COLOR_THEME_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    const v0, 0x7f04065e

    filled-new-array {v0}, [I

    move-result-object v0

    new-array v1, v1, [I

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {p0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    filled-new-array {p0, v1}, [I

    move-result-object p0

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public final offsetCaptionLocation(IILandroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-direct {v0, v1, p3}, Landroid/graphics/PointF;-><init>(FF)V

    neg-int p1, p1

    int-to-float p1, p1

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->offset(FF)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget p1, p0, Landroid/graphics/Point;->x:I

    neg-int p1, p1

    int-to-float p1, p1

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/PointF;->offset(FF)V

    return-object v0
.end method

.method public final removeAutoHideInputChannel()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mInputMonitor:Landroid/view/InputMonitor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mEventReceiver:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$EventReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mEventReceiver:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$EventReceiver;

    :cond_1
    return-void
.end method

.method public final resetHandleViewPadding()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v1

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mStagePosition:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/widget/HandleView;->setHandleViewPadding(Z)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/wm/shell/windowdecor/widget/HandleView;->mStagePosition:I

    if-eq v1, p0, :cond_2

    iput p0, v0, Lcom/android/wm/shell/windowdecor/widget/HandleView;->mStagePosition:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/widget/HandleView;->setHandleViewPadding(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setCaptionColor(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsNightMode:Z

    if-eq v0, p1, :cond_5

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsNightMode:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->getCaptionButtonTintColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mCaptionButtonColor:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsNightMode:Z

    if-eqz v0, :cond_0

    const v0, 0x106032f

    goto :goto_0

    :cond_0
    const v0, 0x1060330

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mCaptionBackgroundColor:I

    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mButtons:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mButtons:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mCaptionButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mUnpinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsNightMode:Z

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->updateNightMode(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mUnpinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->applyIconColor()V

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    const v0, 0x7f0a039c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDivider;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsNightMode:Z

    if-eqz v1, :cond_3

    const v1, 0x7f060645

    goto :goto_2

    :cond_3
    const v1, 0x7f060646

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsNightMode:Z

    if-eqz p0, :cond_4

    const p0, 0x3df5c28f    # 0.12f

    goto :goto_3

    :cond_4
    const p0, 0x3e4ccccd    # 0.2f

    :goto_3
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    return-void
.end method

.method public final setHandleAutoHideEnabled(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->setupAutoHideHandleAnimator(Z)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->removeAutoHideInputChannel()V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$2;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final setTaskFocusState(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsTaskFocused:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsTaskFocused:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mButtons:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mButtons:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->setTaskFocusState(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mUnpinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mIsTaskFocused:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mIsTaskFocused:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->applyIconColor()V

    :cond_1
    return-void
.end method

.method public final setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eq p1, v0, :cond_2

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->setTaskFocusState(Z)V

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->setCaptionColor(Z)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_OVERFLOW_MENU:Z

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mCaptionType:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsDexEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeBar(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->adjustOverflowButton(I)V

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result p1

    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mStagePosition:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mStagePosition:I

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->resetHandleViewPadding()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mButtons:Landroid/util/SparseArray;

    const v0, 0x7f0a0bf2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->updateSplitWindowButton(Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setupAutoHideHandleAnimator(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleHideAnimator:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;-><init>(Landroid/os/Handler;Lcom/android/wm/shell/windowdecor/widget/HandleView;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleHideAnimator:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleHideAnimator:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mEnabled:Z

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p1, v0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mEnabled:Z

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHideRunnable:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$$ExternalSyntheticLambda0;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mIsShowing:Z

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHide:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHide:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    :cond_3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mShow:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_4
    :goto_0
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mInputMonitor:Landroid/view/InputMonitor;

    if-nez p1, :cond_5

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    const-string v1, "caption-touch"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mEventReceiver:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$EventReceiver;

    if-nez p1, :cond_7

    new-instance p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$EventReceiver;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$EventReceiver;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mEventReceiver:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$EventReceiver;

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->removeAutoHideInputChannel()V

    :cond_7
    :goto_1
    return-void
.end method

.method public final setupCommonCaptionButtonSet(Landroid/view/ViewGroup;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MD_DEX_COMPAT_CAPTION_SHELL:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->isRotationButtonVisible:Z

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    invoke-static {v3, v4, v5}, Lcom/android/wm/shell/windowdecor/CaptionShellUtils;->isButtonVisible(IIZ)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mCaptionButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v2, v6}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->setTaskFocusState(Z)V

    iget-boolean v4, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsDexMode:Z

    iput-boolean v4, v2, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mIsDex:Z

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mButtons:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getId()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v4, 0x7f0a0bf2

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->updateSplitWindowButton(Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;)V

    goto :goto_2

    :cond_2
    const v4, 0x7f0a0480

    if-ne v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_3
    :goto_2
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_TASK_PINNING:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsNewDexMode:Z

    if-eqz v2, :cond_5

    const v2, 0x7f0a08e7

    if-ne v3, v2, :cond_5

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz v2, :cond_5

    iput-boolean v6, v2, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mShowIconBackground:Z

    goto :goto_3

    :cond_4
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final showPinButtonIconBackground(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mButtons:Landroid/util/SparseArray;

    const v1, 0x7f0a08e7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz v0, :cond_1

    iput-boolean p1, v0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mShowIconBackground:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mContext:Landroid/content/Context;

    const p1, 0x7f131091

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mContext:Landroid/content/Context;

    const p1, 0x7f131090

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public toggleCaptionBarButtonSet()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-boolean v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mShowPrimaryButtonSet:Z

    xor-int/lit8 v5, v4, 0x1

    iput-boolean v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mShowPrimaryButtonSet:Z

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz v5, :cond_0

    iput-boolean v4, v5, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mShowIconBackground:Z

    :cond_0
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mToggleButtonAnimator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070f76

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget-boolean v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mShowPrimaryButtonSet:Z

    if-eqz v5, :cond_2

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mPrimaryButtonSet:Landroid/view/ViewGroup;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mSecondaryButtonSet:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mSecondaryButtonSet:Landroid/view/ViewGroup;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mPrimaryButtonSet:Landroid/view/ViewGroup;

    :goto_0
    if-eqz v5, :cond_3

    const/4 v5, -0x1

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    mul-int/2addr v5, v4

    int-to-float v5, v5

    sget-object v9, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v11, 0x0

    new-array v12, v2, [F

    aput v5, v12, v1

    aput v11, v12, v3

    invoke-static {v6, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v12, 0x190

    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v14, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$5;

    invoke-direct {v14, v6}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$5;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v14, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v16, v9

    const-wide/16 v8, 0xc8

    invoke-static {v6, v3, v8, v9, v14}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils;->createViewAlphaAnimator(Landroid/view/View;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v15

    const-wide/16 v8, 0x87

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v15, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v5, v9, v1

    aput-object v15, v9, v3

    iget-boolean v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mShowPrimaryButtonSet:Z

    if-eqz v5, :cond_4

    move/from16 v17, v3

    goto :goto_2

    :cond_4
    const/16 v17, -0x1

    :goto_2
    mul-int v4, v4, v17

    int-to-float v4, v4

    new-array v5, v2, [F

    aput v11, v5, v1

    aput v4, v5, v3

    invoke-static {v7, v10, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v4, v16

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$5;

    invoke-direct {v4, v7}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$5;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    aput-object v3, v9, v2

    const-wide/16 v2, 0xc8

    invoke-static {v7, v1, v2, v3, v14}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils;->createViewAlphaAnimator(Landroid/view/View;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v9, v2

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$1;

    invoke-direct {v1, v0, v7, v6}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$1;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v8, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mToggleButtonAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final updateButtonState(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p2, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->setTaskFocusState(Z)V

    invoke-virtual {p1}, Landroid/widget/ImageButton;->invalidate()V

    :cond_2
    return-void
.end method

.method public final updateSplitWindowButton(Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v1, v0}, Lcom/android/wm/shell/windowdecor/CaptionShellUtils;->isTopDownSplit(Landroid/app/ActivityManager$RunningTaskInfo;I)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsSplitTopDown:Z

    if-eq v2, v1, :cond_1

    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsSplitTopDown:Z

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    const v1, 0x7f081019

    goto :goto_0

    :cond_0
    const v1, 0x7f081018

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isSplitEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_4

    if-eqz v0, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const v1, 0x3ecccccd    # 0.4f

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->setTaskFocusState(Z)V

    :cond_4
    return-void
.end method

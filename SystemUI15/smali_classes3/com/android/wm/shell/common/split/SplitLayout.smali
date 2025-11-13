.class public final Lcom/android/wm/shell/common/split/SplitLayout;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;


# instance fields
.field public final mAllowLeftRightSplitInPortrait:Z

.field public final mBounds1:Landroid/graphics/Rect;

.field public final mBounds2:Landroid/graphics/Rect;

.field public final mBounds3:Landroid/graphics/Rect;

.field public final mCellDividerBounds:Landroid/graphics/Rect;

.field public mCellDividerPosition:I

.field public mCellInitialized:Z

.field public mCellSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

.field public final mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

.field public mCellStageWindowConfigPosition:I

.field public mContext:Landroid/content/Context;

.field public mDensity:I

.field public final mDimNonImeSide:Z

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field public final mDividerBounds:Landroid/graphics/Rect;

.field public mDividerFlingAnimator:Landroid/animation/ValueAnimator;

.field public mDividerInsets:I

.field public mDividerPosition:I

.field public mDividerSize:I

.field mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

.field public mDividerWindowWidth:I

.field public mFontScale:F

.field public mFontWeightAdjustment:I

.field public mFreezeDividerWindow:Z

.field public final mHostAndCellArea:Landroid/graphics/Rect;

.field public final mHostBounds:Landroid/graphics/Rect;

.field public final mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

.field public mInitialized:Z

.field public final mInsetsState:Landroid/view/InsetsState;

.field public final mInvisibleBounds:Landroid/graphics/Rect;

.field public mIsLargeScreen:Z

.field public mIsLeftRightSplit:Z

.field public mLocale:Ljava/util/Locale;

.field public final mNavigationBarRect:Landroid/graphics/Rect;

.field public mOrientation:I

.field public mPossibleSplitDivision:I

.field public final mRootBounds:Landroid/graphics/Rect;

.field public mRotation:I

.field public mSplitDivision:I

.field public final mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

.field public mSplitScreenFeasibleMode:I

.field public final mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

.field public mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final mSurfaceEffectPolicy:Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final mTempRect2:Landroid/graphics/Rect;

.field public mUiMode:I

.field public final mWinBounds1:Landroid/graphics/Rect;

.field public final mWinBounds2:Landroid/graphics/Rect;

.field public final mWinBounds3:Landroid/graphics/Rect;

.field public mWinToken1:Landroid/window/WindowContainerToken;

.field public mWinToken2:Landroid/window/WindowContainerToken;

.field public mWinToken3:Landroid/window/WindowContainerToken;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/ShellTaskOrganizer;I)V
    .locals 11

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/common/split/SplitLayout;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/ShellTaskOrganizer;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/ShellTaskOrganizer;II)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v7, p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mInvisibleBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds1:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds2:Landroid/graphics/Rect;

    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2}, Landroid/view/InsetsState;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    iput-boolean v9, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mFreezeDividerWindow:Z

    iput-boolean v9, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLargeScreen:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mNavigationBarRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostAndCellArea:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds3:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    iput v9, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    iput-boolean v9, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    iput v9, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    const/4 v2, 0x2

    iput v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitScreenFeasibleMode:I

    const/4 v10, -0x1

    iput v10, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mPossibleSplitDivision:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    iget v2, v7, Landroid/content/res/Configuration;->orientation:I

    iput v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mOrientation:I

    iget-object v2, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    iput v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    iget v2, v7, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDensity:I

    iget v2, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v9

    :goto_0
    iput-boolean v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLargeScreen:Z

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    new-instance v2, Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object v3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    move-object/from16 v5, p5

    invoke-direct {v2, p1, v3, p3, v5}, Lcom/android/wm/shell/common/split/SplitWindowManager;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;)V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mLocale:Ljava/util/Locale;

    iget v2, v7, Landroid/content/res/Configuration;->fontScale:F

    iput v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mFontScale:F

    iget v2, v7, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mFontWeightAdjustment:I

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v2, :cond_1

    new-instance v11, Lcom/android/wm/shell/common/split/SplitWindowManager;

    const-string v2, "Cell"

    invoke-static {p1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    move-object v1, v11

    move-object v4, p3

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/common/split/SplitWindowManager;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Z)V

    iput-object v11, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    :goto_1
    move-object/from16 v1, p8

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    goto :goto_1

    :goto_2
    iput-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    new-instance v1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    iget-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-direct {v1, p0, v2, v9}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;II)V

    iput-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    new-instance v1, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;

    move/from16 v2, p9

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V

    iput-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSurfaceEffectPolicy:Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;

    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDimNonImeSide:Z

    sget-object v2, Lcom/android/wm/shell/Flags;->FEATURE_FLAGS:Lcom/android/wm/shell/FeatureFlagsImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x11101c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mAllowLeftRightSplitInPortrait:Z

    invoke-static {v1, p3, v10}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->isLeftRightSplit(ZLandroid/content/res/Configuration;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v1, :cond_2

    move/from16 v1, p10

    iput v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    :cond_2
    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateDividerConfig(Landroid/content/Context;)V

    iget-object v1, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v8}, Lcom/android/wm/shell/common/split/SplitLayout;->getSnapAlgorithm(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateInvisibleRect()V

    return-void
.end method

.method public static isLandscape(Landroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final applyLayoutOffsetTargetForMultiSplit(Landroid/window/WindowContainerTransaction;ILjava/util/ArrayList;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getNotAdjustedBounds(I)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v3, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v1, v0, v0}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->getNotAdjustedBounds(I)Landroid/graphics/Rect;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v5, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v0}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result v6

    div-float/2addr v5, v6

    add-float/2addr v5, v4

    float-to-int v4, v5

    invoke-virtual {p1, v2, v3, v4}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    goto :goto_2

    :cond_1
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v4, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v3, v4, v2}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final applyTaskChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iget-object v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v2, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getSmallestWidthDp(Landroid/graphics/Rect;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    move p2, v1

    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds2:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, p2

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iget-object v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->getSmallestWidthDp(Landroid/graphics/Rect;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds2:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    :goto_3
    return v1
.end method

.method public final applyTaskChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds3:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken3:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v0, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getSmallestWidthDp(Landroid/graphics/Rect;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds3:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken3:Landroid/window/WindowContainerToken;

    move p4, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    invoke-static {v2, v0}, Lcom/android/wm/shell/common/split/CellUtil;->isCellInLeftOrTopBounds(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    :goto_2
    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds1:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    invoke-virtual {v3, v4}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object p4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p4, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getSmallestWidthDp(Landroid/graphics/Rect;)I

    move-result v3

    invoke-virtual {p1, p4, v3}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds1:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    move p4, v1

    :cond_4
    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds2:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    move v1, p4

    goto :goto_4

    :cond_6
    :goto_3
    iget-object p2, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p2, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p2, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getSmallestWidthDp(Landroid/graphics/Rect;)I

    move-result p4

    invoke-virtual {p1, p2, p4}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds2:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    :goto_4
    return v1
.end method

.method public final calculateCurrentSnapPosition()I
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->snap(IZ)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->snapPosition:I

    return p0
.end method

.method public final createCellSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;
    .locals 9

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostAndCellArea:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Lcom/android/wm/shell/common/split/CellUtil;->isCellInLeftOrTopBounds(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostAndCellArea:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :goto_1
    new-instance v1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v7

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    return-object v1
.end method

.method public flingDividerPosition(IIILjava/lang/Runnable;)V
    .locals 1

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    if-ne p1, p2, :cond_2

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    const/16 p1, 0x34

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/wm/shell/common/split/SplitLayout$1;

    invoke-direct {p2, p0, p4}, Lcom/android/wm/shell/common/split/SplitLayout$1;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final flingDividerToCenter(Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    new-instance v2, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;ILcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;)V

    const/16 p1, 0x1c2

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerPosition(IIILjava/lang/Runnable;)V

    return-void
.end method

.method public final flingDividerToDismiss(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_0
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    new-instance v2, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;ZI)V

    const/16 p1, 0x1c2

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerPosition(IIILjava/lang/Runnable;)V

    return-void
.end method

.method public final getBounds1()Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final getBounds2()Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final getBounds3()Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final getCellDividerLeash()Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    :goto_0
    return-object p0
.end method

.method public final getCellSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->createCellSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    return-object p0
.end method

.method public final getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v1, :cond_0

    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {p0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY_IGNORING_CUTOUT:Z

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    :cond_2
    if-eqz p0, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-class p0, Landroid/view/WindowManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getDividePositionByRatio()I
    .locals 4

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    :goto_1
    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v2, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    goto :goto_1

    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    return p0
.end method

.method public final getDividerLeash()Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    :goto_0
    return-object p0
.end method

.method public final getDividerPositionAsFraction()F
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    :goto_0
    int-to-float p0, p0

    div-float/2addr v0, p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :goto_1
    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public final getDividerSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    return-object p0
.end method

.method public final getHostBounds()Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final getInitBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public final getNotAdjustedBounds(I)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    return-object p0

    :cond_1
    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    :goto_0
    return-object p0
.end method

.method public final getRefBounds1(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final getRefCellDividerBounds()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method public final getRefDividerBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final getRefHostBounds()Landroid/graphics/Rect;
    .locals 2

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getHostBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method public final getSmallestWidthDp(Landroid/graphics/Rect;)I
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-nez p1, :cond_4

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v1, :cond_2

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v0, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final getSnapAlgorithm(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v6

    new-instance v8, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    iget-boolean p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    xor-int/lit8 v5, p0, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :goto_0
    move v7, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x2

    goto :goto_0

    :goto_1
    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;I)V

    return-object v8
.end method

.method public final init()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {v2, p0, v0, v1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->init(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/InsetsState;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayImeController;->addPositionProcessor(Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;)V

    return-void
.end method

.method public final initDividerPosition(Landroid/graphics/Rect;ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v1, :cond_6

    if-eqz v0, :cond_3

    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    :goto_0
    sub-int/2addr p2, v2

    int-to-float p2, p2

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    :goto_1
    iget v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr p2, v2

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    :goto_2
    int-to-float v2, v2

    iget v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    goto :goto_6

    :cond_3
    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    int-to-float p2, p2

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    :goto_3
    int-to-float v2, v2

    div-float/2addr p2, v2

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    :goto_4
    int-to-float v2, v2

    goto :goto_6

    :cond_6
    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    int-to-float v2, v2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    :goto_5
    int-to-float p2, p2

    div-float p2, v2, p2

    iget-boolean v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_4

    :goto_6
    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    mul-float/2addr v2, p2

    float-to-int p2, v2

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_7
    add-int/2addr p2, v0

    goto :goto_8

    :cond_a
    mul-float/2addr v2, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr v2, p2

    float-to-int p2, v2

    :goto_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerPosition:I

    int-to-float v0, v0

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    goto :goto_9

    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    :goto_9
    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    goto :goto_a

    :cond_c
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    :goto_a
    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    :cond_d
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    return-void
.end method

.method public final insetsChanged(Landroid/view/InsetsState;)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isFolding()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {p1, v0, v3, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mNavigationBarRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mNavigationBarRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v3, p1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    iget-boolean v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    if-nez v3, :cond_5

    if-eqz v0, :cond_4

    check-cast v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v4, p0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->handleLayoutSizeChange(Lcom/android/wm/shell/common/split/SplitLayout;Z)V

    :cond_4
    return-void

    :cond_5
    iget-boolean v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mFreezeDividerWindow:Z

    if-eqz v3, :cond_6

    return-void

    :cond_6
    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object v3, v3, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    if-eqz v3, :cond_7

    invoke-virtual {v3, p1, v1}, Lcom/android/wm/shell/common/split/DividerView;->onInsetsChanged(Landroid/view/InsetsState;Z)V

    :cond_7
    if-eqz v0, :cond_8

    check-cast v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v4, p0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->handleLayoutSizeChange(Lcom/android/wm/shell/common/split/SplitLayout;Z)V

    :cond_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/common/split/DividerView;->onInsetsChanged(Landroid/view/InsetsState;Z)V

    :cond_9
    return-void
.end method

.method public final insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 0

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p2, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->insetsChanged(Landroid/view/InsetsState;)V

    :cond_0
    return-void
.end method

.method public final isSplitScreenFeasible(Z)Z
    .locals 10

    new-instance v8, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    iget v2, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    iget v3, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v6

    const/4 p0, 0x2

    if-eqz p1, :cond_0

    move v7, p0

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    move-object v0, v8

    move v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;I)V

    iget-object p1, v8, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-boolean v1, v8, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v1, :cond_1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    iget p1, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    if-eqz v1, :cond_2

    iget v2, v8, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDisplayHeight:I

    goto :goto_2

    :cond_2
    iget v2, v8, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDisplayWidth:I

    :goto_2
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SNAP_ALGORITHM:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    move p1, v4

    :cond_3
    sub-int/2addr v2, p1

    sub-int/2addr v2, v0

    iget p1, v8, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDividerSize:I

    sub-int/2addr v2, p1

    div-int/2addr v2, p0

    if-eqz v3, :cond_4

    invoke-virtual {v8}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->getMinimalSize()I

    move-result p0

    goto :goto_3

    :cond_4
    iget p0, v8, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    :goto_3
    if-lt v2, p0, :cond_5

    goto :goto_4

    :cond_5
    move v9, v4

    :goto_4
    return v9
.end method

.method public final isVerticalDivision()Z
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final moveSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)Landroid/animation/ValueAnimator;
    .locals 13

    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v6, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v7, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    new-instance v12, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move/from16 v8, p5

    move/from16 v9, p6

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FFFFFFLandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v11

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final release(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    iget-object v1, p1, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->reset()V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final releaseCellDivider(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public final resetDividerPosition()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds1:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public final rotateTo(I)V
    .locals 8

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    new-instance p1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-direct {p1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v4, v5, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    iget-boolean v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLargeScreen:Z

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lt v4, v5, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v5

    iget v6, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    iget-boolean v7, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mAllowLeftRightSplitInPortrait:Z

    invoke-static {v6, v7, v3, v4, v5}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->isLeftRightSplit(IZZZZ)Z

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLargeScreen:Z

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lt v4, v5, :cond_3

    move v1, v2

    :cond_3
    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v4

    iget v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    invoke-static {v5, v7, p1, v1, v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->isLeftRightSplit(IZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result p1

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitScreenFeasibleMode:I

    if-ne v1, v2, :cond_6

    :cond_5
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getSnapAlgorithm(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->initDividerPosition(Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method public final setCellDividePosition(ILandroid/window/WindowContainerTransaction;Z)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerPosition:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateCellAndHostBounds(I)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    check-cast p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1, p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    :cond_0
    return-void
.end method

.method public final setCellDividerRatio(FIZZ)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {p2, v0}, Lcom/android/wm/shell/common/split/CellUtil;->isCellInLeftOrTopBounds(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    goto :goto_1

    :cond_1
    move p3, v2

    :goto_1
    if-eqz p4, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float p1, v3, p1

    :cond_2
    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v0, :cond_3

    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_2
    sub-int/2addr v1, p3

    int-to-float p3, v1

    mul-float/2addr p3, p1

    add-float/2addr p3, v3

    float-to-int p1, p3

    add-int/2addr v0, p1

    goto :goto_3

    :cond_3
    iget v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_2

    :goto_3
    if-eqz p4, :cond_4

    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    sub-int/2addr v0, p1

    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateCellStageWindowConfigPosition(I)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateCellAndHostBounds(I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->createCellSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    return-void
.end method

.method public final setDividePosition(ILandroid/window/WindowContainerTransaction;Z)V
    .locals 2

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/wm/shell/common/split/DividerView;->mSetTouchRegion:Z

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    check-cast p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1, p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    :cond_1
    return-void
.end method

.method public final setDivideRatio(FZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    :cond_0
    const/4 p2, 0x0

    if-eqz p3, :cond_1

    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    goto :goto_0

    :cond_1
    move p3, p2

    :goto_0
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_1
    sub-int/2addr v0, p3

    int-to-float p3, v0

    mul-float/2addr p3, p1

    add-float/2addr p3, v1

    float-to-int p1, p3

    add-int/2addr v2, p1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    if-eqz p1, :cond_3

    iget p1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget p1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_3
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    return-void
.end method

.method public final setDividerAtBorder(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget p1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget p1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    return-void
.end method

.method public final setDividerInteractive(Ljava/lang/String;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/common/split/DividerView;->setInteractive(Ljava/lang/String;ZZ)V

    :goto_0
    return-void
.end method

.method public final snapToTarget(ILcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;)V
    .locals 4

    iget v0, p2, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->snapPosition:I

    const/16 v1, 0xb

    const/16 v2, 0xfa

    iget v3, p2, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;)V

    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerPosition(IIILjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V

    invoke-virtual {p0, p1, v3, v2, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerPosition(IIILjava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V

    invoke-virtual {p0, p1, v3, v2, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerPosition(IIILjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final splitSwitching(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda34;)V
    .locals 14

    move-object v7, p0

    iget-object v0, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v8

    iget-boolean v0, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    iget v1, v8, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_0
    if-eqz v0, :cond_1

    move v2, v9

    goto :goto_1

    :cond_1
    iget v2, v8, Landroid/graphics/Rect;->top:I

    :goto_1
    if-eqz v0, :cond_2

    iget v3, v8, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_2
    move v3, v9

    :goto_2
    if-eqz v0, :cond_3

    move v0, v9

    goto :goto_3

    :cond_3
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    :goto_3
    invoke-virtual {v8, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-boolean v1, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    if-eqz v1, :cond_4

    iget-object v1, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_4

    :cond_4
    iget-object v1, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_4
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v10, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v11, v4, v12, v10}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object v0, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {v11, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {v12, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v0, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    iget v0, v8, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v5, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    int-to-float v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/common/split/SplitLayout;->moveSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)Landroid/animation/ValueAnimator;

    move-result-object v13

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v0, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v5, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object v4, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/common/split/SplitLayout;->moveSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)Landroid/animation/ValueAnimator;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/common/split/SplitLayout;->moveSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v13, v2, v9

    const/4 v3, 0x1

    aput-object v11, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/wm/shell/common/split/SplitLayout$2;

    move-object/from16 v2, p4

    invoke-direct {v0, p0, v10, v2, v8}, Lcom/android/wm/shell/common/split/SplitLayout$2;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;ILjava/util/function/Consumer;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final update(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->releaseCellDivider(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->reset()V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v3, p0, p1, v1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->init(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/InsetsState;Z)V

    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/wm/shell/common/split/SplitWindowManager;->init(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/InsetsState;Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->createCellSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    if-eqz p2, :cond_3

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->reset()V

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v3, p0, p1, v1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->init(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/InsetsState;Z)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsMultiSplitRotating:Z

    if-nez p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    check-cast p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V

    :cond_5
    return-void
.end method

.method public final updateBounds(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public final updateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v4, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-nez v4, :cond_3

    iget-boolean v3, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWillBeFlexPanelMode:Z

    if-eqz v3, :cond_4

    :cond_3
    iget v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    if-nez v3, :cond_4

    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p3, p4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 p4, p4, 0x2

    iput p4, p3, Landroid/graphics/Rect;->bottom:I

    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iput p4, p3, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    iput v2, p3, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_4
    :goto_2
    iget-boolean v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr p4, v3

    iget v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    sub-int v3, p4, v3

    iput v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerWindowWidth:I

    add-int/2addr v3, v4

    iput v3, p3, Landroid/graphics/Rect;->right:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    add-int/2addr p4, p3

    iput p4, p2, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, v3

    iget v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    sub-int v3, p4, v3

    iput v3, p3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerWindowWidth:I

    add-int/2addr v3, v4

    iput v3, p3, Landroid/graphics/Rect;->bottom:I

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    add-int/2addr p4, p3

    iput p4, p2, Landroid/graphics/Rect;->top:I

    :goto_3
    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/android/wm/shell/common/split/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    invoke-static {p2, v2}, Lcom/android/wm/shell/common/split/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz p1, :cond_6

    iput-boolean v2, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWillBeFlexPanelMode:Z

    :cond_6
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SNAP_ALGORITHM:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->createCellSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    :cond_7
    if-eqz v0, :cond_8

    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerPosition:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateCellAndHostBounds(I)V

    :cond_8
    return-void
.end method

.method public final updateCellAndHostBounds(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostAndCellArea:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Lcom/android/wm/shell/common/split/CellUtil;->isCellInLeftOrTopBounds(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    invoke-static {v1, v0}, Lcom/android/wm/shell/common/split/CellUtil;->getCellSide(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostAndCellArea:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, -0x1

    if-ne v0, v9, :cond_1

    const-string p1, "CellUtil"

    const-string v1, "calcBoundsForPosition. dockSide invalid. "

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-static {v1, v3, p1, v0, v4}, Lcom/android/wm/shell/common/split/DockedDividerUtils;->calculateBoundsForCellWithPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    if-eq v0, v7, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v8, :cond_3

    if-eq v0, v6, :cond_2

    goto :goto_1

    :cond_2
    move v9, v5

    goto :goto_1

    :cond_3
    move v9, v7

    goto :goto_1

    :cond_4
    move v9, v6

    goto :goto_1

    :cond_5
    move v9, v8

    :goto_1
    invoke-static {v2, v3, p1, v9, v4}, Lcom/android/wm/shell/common/split/DockedDividerUtils;->calculateBoundsForCellWithPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    :goto_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eq v0, v7, :cond_9

    if-eq v0, v5, :cond_8

    if-eq v0, v8, :cond_7

    if-eq v0, v6, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    add-int v3, v1, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    sub-int/2addr v2, v3

    iget v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    sub-int/2addr v2, v4

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    sub-int v3, v1, v2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsCellDivider:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    if-eqz p1, :cond_a

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/wm/shell/common/split/DividerView;->onInsetsChanged(Landroid/view/InsetsState;Z)V

    :cond_a
    return-void
.end method

.method public final updateCellStageWindowConfigPosition(I)V
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->createCellSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget p1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    :cond_0
    return-void
.end method

.method public final updateConfiguration(Landroid/content/res/Configuration;)Z
    .locals 14

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    iget v7, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v8, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget-boolean v9, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    iget v10, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mOrientation:I

    if-ne v10, v2, :cond_0

    iget v10, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    if-ne v10, v0, :cond_0

    iget v10, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDensity:I

    if-ne v10, v3, :cond_0

    iget v10, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mUiMode:I

    if-ne v10, v4, :cond_0

    iget-object v10, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mLocale:Ljava/util/Locale;

    invoke-virtual {v10, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mFontScale:F

    cmpl-float v10, v10, v7

    if-nez v10, :cond_0

    iget v10, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mFontWeightAdjustment:I

    if-ne v10, v8, :cond_0

    return v6

    :cond_0
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    const/4 v11, 0x1

    const/4 v12, 0x5

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    iget v10, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v10, v12, :cond_3

    iget v10, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitScreenFeasibleMode:I

    if-ne v10, v11, :cond_3

    invoke-virtual {p0, v11}, Lcom/android/wm/shell/common/split/SplitLayout;->isSplitScreenFeasible(Z)Z

    move-result v10

    invoke-virtual {p0, v6}, Lcom/android/wm/shell/common/split/SplitLayout;->isSplitScreenFeasible(Z)Z

    move-result v13

    if-eqz v10, :cond_1

    iput v11, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mPossibleSplitDivision:I

    goto :goto_0

    :cond_1
    if-eqz v13, :cond_2

    iput v6, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mPossibleSplitDivision:I

    :cond_2
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "split feasible changed, splitDivision="

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mPossibleSplitDivision:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v13, "SplitLayout"

    invoke-static {v13, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v10, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v10, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v10

    iput-object v10, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {v10, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    iput v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mOrientation:I

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    iput v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDensity:I

    iput v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mUiMode:I

    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_4

    move v0, v11

    goto :goto_1

    :cond_4
    move v0, v6

    :goto_1
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLargeScreen:Z

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mAllowLeftRightSplitInPortrait:Z

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    invoke-static {v0, p1, v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->isLeftRightSplit(ZLandroid/content/res/Configuration;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getSnapAlgorithm(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    const v1, 0x7f130551

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    :cond_5
    iput-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mLocale:Ljava/util/Locale;

    iput v7, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mFontScale:F

    iput v8, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mFontWeightAdjustment:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v1, :cond_7

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-ne p1, v12, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    move-result p1

    xor-int/2addr p1, v11

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    invoke-virtual {p1, v1, v6, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitDivision(IZZ)Z

    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateDividerConfig(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v9, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->initDividerPosition(Landroid/graphics/Rect;ZZ)V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateInvisibleRect()V

    return v11
.end method

.method public final updateDividerBounds(IZ)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSurfaceEffectPolicy:Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mParallaxOffset:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    check-cast v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1, p0, v0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanging(Lcom/android/wm/shell/common/split/SplitLayout;IIZ)V

    return-void
.end method

.method public final updateDividerConfig(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER_SIZE_FOLD:Z

    if-eqz v1, :cond_0

    const v1, 0x10502c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x10502bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const v1, 0x1050183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_3
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_4
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/RoundedCorner;->getRadius()I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_5
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_LAUNCH_POLICY:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz p1, :cond_6

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-eqz p1, :cond_6

    iput v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    iput v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    goto :goto_3

    :cond_6
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER_SIZE_FOLD:Z

    if-eqz p1, :cond_7

    const p1, 0x7f071451

    goto :goto_2

    :cond_7
    const p1, 0x7f071450

    :goto_2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    :goto_3
    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    mul-int/2addr v0, v4

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerWindowWidth:I

    return-void
.end method

.method public final updateInvisibleRect()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInvisibleBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget-boolean v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-eqz v4, :cond_0

    div-int/lit8 v5, v5, 0x2

    :cond_0
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v1, 0x2

    :goto_0
    invoke-virtual {v0, v2, v3, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInvisibleBounds:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    :goto_2
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final updateSnapAlgorithm(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getSnapAlgorithm(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->initDividerPosition(Landroid/graphics/Rect;ZZ)V

    return-void
.end method

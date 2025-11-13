.class public final Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDragTargetWindowingMode:I

.field public mDropSide:I

.field public mHalfTarget:I

.field public mNeedToReparentCell:Z

.field public mPushRegion:I

.field public mShrunkWindowingMode:I

.field public mSplitCreateMode:I

.field public mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public mSwapWindowingMode:I

.field public mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

.field public mToPosition:I

.field public mToWindowingMode:I

.field public mUseSingleNonTarget:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mHalfTarget:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    return-void
.end method


# virtual methods
.method public final getDefaultFloatingWindowingMode()I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x5

    return p0
.end method

.method public final update(IIZ)V
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->updateForPush(I)V

    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mShrunkWindowingMode:I

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mNeedToReparentCell:Z

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mShrunkWindowingMode:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->getDefaultFloatingWindowingMode()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    iput v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mUseSingleNonTarget:Z

    const/4 v4, 0x5

    const/16 v5, 0x40

    const/16 v6, 0x20

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/16 v9, 0x10

    const/16 v10, 0x8

    const/4 v11, 0x2

    if-eqz v3, :cond_11

    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget-boolean p2, p2, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mSupportOnlyTwoUpMode:Z

    if-eqz p2, :cond_7

    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    invoke-static {p1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->isFloating(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iput v7, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    if-ne p2, v11, :cond_3

    move v6, v10

    :cond_3
    iput v6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    goto :goto_1

    :cond_4
    iget p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    if-ne p2, v8, :cond_5

    move v5, v9

    :cond_5
    iput v5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    :goto_1
    if-eqz p1, :cond_6

    move v7, v11

    :cond_6
    iput v7, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    return-void

    :cond_7
    if-eqz p3, :cond_8

    iput v7, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    goto :goto_2

    :cond_8
    iget p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    :goto_2
    if-eq p1, v11, :cond_c

    if-eq p1, v8, :cond_b

    if-eq p1, v10, :cond_a

    if-eq p1, v9, :cond_9

    goto :goto_3

    :cond_9
    move v0, v5

    goto :goto_3

    :cond_a
    move v0, v6

    goto :goto_3

    :cond_b
    move v0, v9

    goto :goto_3

    :cond_c
    move v0, v10

    :goto_3
    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    if-eq p1, v11, :cond_10

    if-eq p1, v8, :cond_f

    if-eq p1, v10, :cond_e

    if-eq p1, v9, :cond_d

    goto :goto_4

    :cond_d
    move v1, v4

    goto :goto_4

    :cond_e
    move v1, v8

    goto :goto_4

    :cond_f
    move v1, v7

    goto :goto_4

    :cond_10
    move v1, v11

    :goto_4
    iput v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    return-void

    :cond_11
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget-object p1, p1, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mRunningTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_1e

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result p1

    iget-object p3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    move-result p3

    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    if-eq v0, v11, :cond_17

    if-eq v0, v8, :cond_12

    if-eq v0, v10, :cond_17

    if-eq v0, v9, :cond_12

    goto :goto_5

    :cond_12
    if-ne v0, v8, :cond_13

    move v5, v9

    :cond_13
    iput v5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    and-int/2addr p1, v10

    if-eqz p1, :cond_15

    or-int/lit8 p1, v5, 0x8

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    if-eqz p3, :cond_14

    move v4, v11

    :cond_14
    iput v4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto :goto_5

    :cond_15
    or-int/lit8 p1, v5, 0x20

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    if-eqz p3, :cond_16

    move v4, v8

    :cond_16
    iput v4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto :goto_5

    :cond_17
    if-ne v0, v11, :cond_18

    move v6, v10

    :cond_18
    iput v6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    and-int/2addr p1, v9

    if-eqz p1, :cond_1a

    or-int/lit8 p1, v6, 0x10

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    if-eqz p3, :cond_19

    move v7, v11

    :cond_19
    iput v7, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto :goto_5

    :cond_1a
    or-int/lit8 p1, v6, 0x40

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    if-eqz p3, :cond_1b

    move v4, v11

    :cond_1b
    iput v4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    :goto_5
    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    invoke-static {p1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->isFloating(I)Z

    move-result p1

    const/16 p3, 0xc

    if-eqz p1, :cond_1d

    const/16 p1, 0xd

    if-ne p2, p1, :cond_1c

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    goto :goto_6

    :cond_1c
    iput p3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    goto :goto_6

    :cond_1d
    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    if-eq p1, p3, :cond_1e

    if-eq p2, p3, :cond_1e

    iput-boolean v2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mNeedToReparentCell:Z

    :cond_1e
    :goto_6
    return-void
.end method

.method public final updateForPush(I)V
    .locals 8

    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mPushRegion:I

    if-eq v0, p1, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mNeedToReparentCell:Z

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mPushRegion:I

    const/4 v1, -0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->getDefaultFloatingWindowingMode()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    iput v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto :goto_2

    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq p1, v5, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v2, :cond_1

    move v6, v0

    goto :goto_0

    :cond_1
    const/16 v6, 0x40

    goto :goto_0

    :cond_2
    const/16 v6, 0x20

    goto :goto_0

    :cond_3
    const/16 v6, 0x10

    goto :goto_0

    :cond_4
    const/16 v6, 0x8

    :goto_0
    iput v6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    iput v4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    iget v6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    const/16 v7, 0xc

    if-eq v6, v7, :cond_5

    invoke-static {v6}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->isFloating(I)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    iput-boolean v5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mNeedToReparentCell:Z

    :cond_6
    if-eq p1, v5, :cond_a

    if-eq p1, v3, :cond_9

    if-eq p1, v4, :cond_8

    if-eq p1, v2, :cond_7

    goto :goto_1

    :cond_7
    move v1, v4

    goto :goto_1

    :cond_8
    move v1, v3

    goto :goto_1

    :cond_9
    const/4 v1, 0x5

    goto :goto_1

    :cond_a
    move v1, v2

    :goto_1
    iput v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSwapWindowingMode:I

    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mShrunkWindowingMode:I

    :cond_b
    :goto_2
    return-void
.end method

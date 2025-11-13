.class public final Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final DEBUG:Z

.field public final TAG:Ljava/lang/String;

.field public final allAppsComponentName:Landroid/content/ComponentName;

.field public mEnabled:Z

.field public final mRealWm:Landroid/view/IWindowSession;

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class p1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->TAG:Ljava/lang/String;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->DEBUG:Z

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->mRealWm:Landroid/view/IWindowSession;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getEdgeAllAppsComponent()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->allAppsComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static varargs intValueIn(I[I)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final startSplitByTwoTouchSwipeIfPossible(ILjava/lang/String;)V
    .locals 13

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->TAG:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startSplitByTwoTouchSwipeIfPossible: gestureFrom="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-nez v3, :cond_1

    const-string p0, "  mStageCoordinator is null."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-nez v3, :cond_2

    const-string p0, "  dynamic enabled=false"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isFlexPanelMode()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p0, "  in flex panel mode"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->mEnabled:Z

    if-nez v3, :cond_5

    if-eqz v1, :cond_4

    const-string p0, "  enabled=false"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x4

    filled-new-array {v3, v4, v5}, [I

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->intValueIn(I[I)Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v1, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "  not allowed gestureFrom="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " callSite="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    const/4 p2, 0x2

    filled-new-array {v3, p2}, [I

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->intValueIn(I[I)Z

    move-result v6

    xor-int/lit8 v10, v6, 0x1

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FULL_TO_SPLIT_BY_GESTURE:Z

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_10

    iget-object v6, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v6

    if-nez v6, :cond_8

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->supportMultiSplitAppMinimumSize()Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_8
    iget-object v6, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v1, :cond_9

    const-string p0, "  inMultiSplit. skip."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    :cond_a
    iget-object v6, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitDivision()I

    move-result v6

    iget-object v9, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v9

    if-eqz v9, :cond_f

    filled-new-array {v8, v3}, [I

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->intValueIn(I[I)Z

    move-result v9

    if-nez v9, :cond_c

    if-eqz v1, :cond_b

    const-string p0, "  inSplit. but division is not set."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void

    :cond_c
    if-nez v6, :cond_d

    move v8, v3

    :cond_d
    filled-new-array {p2, v5}, [I

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->intValueIn(I[I)Z

    move-result v5

    xor-int/2addr v5, v8

    if-nez v5, :cond_f

    if-eqz v1, :cond_e

    const-string p0, "  inSplit. gestureFrom is not fit in split."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void

    :cond_f
    filled-new-array {v3, v4}, [I

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->intValueIn(I[I)Z

    move-result v4

    xor-int/2addr v4, v3

    move v11, v4

    goto :goto_2

    :cond_10
    iget-object v4, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    iget-object v6, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v6, v4}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v4

    iget v6, v4, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v4, v4, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    if-le v6, v4, :cond_11

    move v4, p2

    goto :goto_1

    :cond_11
    move v4, v3

    :goto_1
    filled-new-array {v3, p2}, [I

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->intValueIn(I[I)Z

    move-result v6

    if-nez v6, :cond_13

    if-eqz v1, :cond_12

    const-string p0, "  dl has no orientation."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void

    :cond_13
    if-ne v4, p2, :cond_14

    move v8, v3

    :cond_14
    filled-new-array {p2, v5}, [I

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->intValueIn(I[I)Z

    move-result v4

    xor-int/2addr v4, v8

    if-nez v4, :cond_16

    if-eqz v1, :cond_15

    const-string p0, "  gestureFrom is not fit."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-void

    :cond_16
    move v11, v7

    :goto_2
    if-eqz v1, :cond_1a

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "enterSplitIfPossible: all apps position="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eq v10, v7, :cond_19

    if-eqz v10, :cond_18

    if-eq v10, v3, :cond_17

    const-string/jumbo v5, "unknown="

    invoke-static {v10, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_17
    const-string v5, "bottomOrRight"

    goto :goto_3

    :cond_18
    const-string/jumbo v5, "topOrLeft"

    goto :goto_3

    :cond_19
    const-string/jumbo v5, "undefined"

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v4

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne v10, v2, :cond_1b

    goto :goto_4

    :cond_1b
    move v3, p2

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;)V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_1d

    if-eqz v1, :cond_1c

    const-string/jumbo p0, "startSplitByTwoTouchSwipeIfPossible: failed, reason=apps_edge_on_top"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void

    :cond_1d
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda1;

    invoke-direct {v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;

    const/4 v12, 0x1

    move-object v7, v0

    move v8, p1

    move-object v9, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;-><init>(ILjava/lang/Object;III)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

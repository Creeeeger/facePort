.class public final Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDefaultStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DefaultStarter;

.field public final mDisallowHitRegion:Landroid/graphics/RectF;

.field public final mDropTargetProviders:Landroid/util/SparseArray;

.field public final mFreeformStarter:Lcom/android/wm/shell/draganddrop/FreeformStarter;

.field public mIsIntentSenderDropTarget:Z

.field public mIsTopTaskFullscreen:Z

.field public mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

.field public final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field public mSession:Lcom/android/wm/shell/draganddrop/DragSession;

.field public final mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

.field public final mTargets:Ljava/util/ArrayList;

.field public mToast:Landroid/widget/Toast;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/android/wm/shell/transition/Transitions;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDisallowHitRegion:Landroid/graphics/RectF;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDropTargetProviders:Landroid/util/SparseArray;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mIsTopTaskFullscreen:Z

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    new-instance p2, Lcom/android/wm/shell/draganddrop/FreeformStarter;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/draganddrop/FreeformStarter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mFreeformStarter:Lcom/android/wm/shell/draganddrop/FreeformStarter;

    new-instance p2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DefaultStarter;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DefaultStarter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDefaultStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DefaultStarter;

    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    new-instance p2, Lcom/android/wm/shell/draganddrop/AospSplitDropTargetProvider;

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/draganddrop/AospSplitDropTargetProvider;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;Landroid/content/Context;)V

    const/4 p3, 0x1

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p2, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;Landroid/content/Context;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object p5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/transition/Transitions;)V
    .locals 6

    new-instance v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DefaultStarter;

    invoke-direct {v3, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DefaultStarter;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/android/wm/shell/transition/Transitions;)V

    return-void
.end method

.method public static getProperLaunchOptions(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;
    .locals 4

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isSplit()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    const/4 v2, 0x1

    iget p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    if-eq p0, v0, :cond_1

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    move v3, v2

    :cond_4
    :goto_2
    new-instance p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;-><init>(III)V

    return-object p0
.end method


# virtual methods
.method public final getCenterFreeformBounds()Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v2, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v1

    const v2, 0x7f07034b

    const v3, 0x7f070348

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_DND_MULTI_SPLIT_DROP_TARGET:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->isInSubDisplay()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x2

    invoke-static {v2, v1, v5, v4}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v2

    sub-int/2addr v3, p0

    div-int/2addr v3, v5

    add-int/2addr v1, v2

    add-int/2addr p0, v3

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public handleDrop(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;Landroid/window/WindowContainerToken;)V
    .locals 9

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    if-eq p1, v0, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p1, :cond_3

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onDroppedToSplit(ILcom/android/internal/logging/InstanceId;Z)V

    :goto_2
    move v3, v0

    goto :goto_3

    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    :goto_3
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object p1, v2, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    if-eqz p1, :cond_4

    const/4 v7, 0x0

    const/4 v8, -0x1

    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->launchApp(Lcom/android/wm/shell/draganddrop/DragSession;ILandroid/window/WindowContainerToken;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Landroid/view/DragAndDropPermissions;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;I)V

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    const/4 v7, -0x1

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->launchIntent(Lcom/android/wm/shell/draganddrop/DragSession;ILcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Landroid/view/DragAndDropPermissions;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;I)V

    :cond_5
    :goto_4
    return-void
.end method

.method public final isInSubDisplay()Z
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final launchApp(Lcom/android/wm/shell/draganddrop/DragSession;ILandroid/window/WindowContainerToken;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Landroid/view/DragAndDropPermissions;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;I)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v1, p6

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DRAG_AND_DROP_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    int-to-long v4, v9

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v16

    const/4 v14, 0x1

    const-string v15, "Launching app data at position=%d"

    const-wide v12, -0x6fe1242674decf20L

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragSession;->mInitialDragData:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    const-string v4, "application/vnd.android.task"

    invoke-virtual {v2, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "application/vnd.android.shortcut"

    invoke-virtual {v2, v5}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v5

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    invoke-virtual {v6, v3}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    invoke-virtual {v6, v3}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    move/from16 v7, p7

    invoke-virtual {v6, v7}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, v0, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    const-string v11, "android.intent.extra.ACTIVITY_OPTIONS"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    invoke-virtual {v7, v11}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    iget-object v7, v0, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    const-string v11, "android.intent.extra.USER"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    const/4 v11, -0x1

    if-eqz v1, :cond_2

    iget v12, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->splitDivision:I

    goto :goto_0

    :cond_2
    move v12, v11

    :goto_0
    const/4 v13, 0x0

    if-eqz v1, :cond_3

    iget v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->cellPosition:I

    move v14, v1

    goto :goto_1

    :cond_3
    move v14, v13

    :goto_1
    invoke-static {v6}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    iget-object v1, v8, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object v15, v1, Lcom/android/wm/shell/draganddrop/DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    if-eqz v15, :cond_8

    iget-object v15, v15, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    if-eqz v15, :cond_8

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v3, p2

    move-object/from16 v4, p5

    move-object v5, v6

    move v6, v12

    move v7, v14

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->startDragAndSplit(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Landroid/content/Intent;ILandroid/view/DragAndDropPermissions;Landroid/os/Bundle;II)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_DND_SA_LOGGING:Z

    if-eqz v0, :cond_7

    instance-of v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const-string v1, "From App content DragNSplit"

    if-eqz v0, :cond_6

    if-ne v9, v11, :cond_4

    if-eqz v14, :cond_6

    :cond_4
    const-string v0, "1000"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMultiSplitScreenVisible()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v14, :cond_6

    :cond_5
    const-string v0, "1021"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    instance-of v0, v10, Lcom/android/wm/shell/draganddrop/FreeformStarter;

    if-eqz v0, :cond_7

    const-string v0, "2004"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    if-eqz v4, :cond_a

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    const-string v3, "android.intent.extra.TASK_ID"

    invoke-virtual {v1, v3, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ClipDescription;->isDragFromRecent()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    instance-of v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v0, :cond_9

    if-eq v9, v11, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v4, p2

    move-object v5, v7

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->startSplitScreenWithAllApps(ILandroid/app/PendingIntent;Landroid/content/ComponentName;ILandroid/os/UserHandle;I)V

    goto/16 :goto_4

    :cond_9
    const/4 v7, 0x1

    move-object/from16 v0, p4

    move/from16 v2, p2

    move-object v3, v6

    move-object/from16 v4, p3

    move v5, v12

    move v6, v14

    invoke-interface/range {v0 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startTask(IILandroid/os/Bundle;Landroid/window/WindowContainerToken;IIZ)V

    goto/16 :goto_4

    :cond_a
    if-eqz v5, :cond_c

    if-eqz p3, :cond_b

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DRAG_AND_DROP_enabled:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_b

    sget-object v15, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v16, -0x6bfadd4038fcc881L

    const/16 v18, 0x0

    const-string v19, "Can not hide task token with starting shortcut"

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.ID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    move/from16 v3, p2

    move-object v4, v6

    move-object v5, v7

    move v6, v12

    move v7, v14

    invoke-interface/range {v0 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;II)V

    goto/16 :goto_4

    :cond_c
    instance-of v2, v10, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const-string v4, "android.intent.extra.PENDING_INTENT"

    if-eqz v2, :cond_f

    if-ne v9, v11, :cond_d

    goto :goto_2

    :cond_d
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/draganddrop/DragSession;->getNonFloatingTopTask(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_2

    :cond_e
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v1, -0x1

    move-object/from16 v0, p0

    move/from16 v4, p2

    move-object v5, v7

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->startSplitScreenWithAllApps(ILandroid/app/PendingIntent;Landroid/content/ComponentName;ILandroid/os/UserHandle;I)V

    goto :goto_4

    :cond_f
    :goto_2
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/PendingIntent;

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_10

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "DragAndDropPolicy"

    const-string v2, "Expected app intent\'s EXTRA_USER to match pending intent user"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move v2, v0

    goto :goto_3

    :cond_11
    move v2, v13

    :goto_3
    move-object/from16 v0, p4

    move/from16 v3, p2

    move-object v4, v6

    move-object/from16 v5, p3

    move v6, v12

    move v7, v14

    invoke-interface/range {v0 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startIntent(Landroid/app/PendingIntent;IILandroid/os/Bundle;Landroid/window/WindowContainerToken;II)V

    :goto_4
    return-void
.end method

.method public final launchIntent(Lcom/android/wm/shell/draganddrop/DragSession;ILcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Landroid/view/DragAndDropPermissions;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;I)V
    .locals 12

    move-object v0, p1

    move-object/from16 v1, p5

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DRAG_AND_DROP_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    move v2, p2

    int-to-long v4, v2

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v11

    const/4 v9, 0x1

    const-string v10, "Launching intent at position=%d"

    const-wide v7, -0x2e9daee4845acd7dL    # -1.1119852284785179E84

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    const/high16 v5, 0x18000000

    invoke-virtual {v4, v5}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    move/from16 v5, p6

    invoke-virtual {v4, v5}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v1, :cond_1

    iget v6, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->splitDivision:I

    move v10, v6

    goto :goto_1

    :cond_1
    move v10, v5

    :goto_1
    if-eqz v1, :cond_2

    iget v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->cellPosition:I

    :goto_2
    move v11, v1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :goto_3
    invoke-static {v4}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    if-ne v10, v5, :cond_3

    if-eqz v11, :cond_4

    :cond_3
    move-object v1, p0

    goto :goto_4

    :cond_4
    invoke-static {v9}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragSession;->launchableIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    move-object v1, p0

    iget-object v0, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    goto :goto_5

    :goto_4
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragSession;->launchableIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_5

    move-object v4, p0

    move-object v5, p3

    move v7, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->startDragAndSplit(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Landroid/content/Intent;ILandroid/view/DragAndDropPermissions;Landroid/os/Bundle;II)V

    :cond_5
    :goto_5
    return-void
.end method

.method public final startDragAndSplit(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Landroid/content/Intent;ILandroid/view/DragAndDropPermissions;Landroid/os/Bundle;II)V
    .locals 12

    move-object v0, p0

    move-object v7, p2

    move-object/from16 v8, p4

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    iget v1, v1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingUserId:I

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x1

    move v9, p3

    if-eq v9, v3, :cond_1

    const-string v3, "dropResolverActivity.extra.wallpaper"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    move v9, p3

    :cond_1
    :goto_0
    const-string v3, "dragPermission"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eq v2, v1, :cond_2

    invoke-virtual {p2, v1}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    const-string v3, "dropResolverActivity.extra.userid"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/android/wm/shell/draganddrop/AppResult;->getContentType()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iget-object v4, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object v5, v4, Lcom/android/wm/shell/draganddrop/DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    iget-object v5, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingPackageName:Ljava/lang/String;

    iget-boolean v4, v4, Lcom/android/wm/shell/draganddrop/DragSession;->isDragDataDropResolver:Z

    if-eqz v4, :cond_4

    const-string v4, "dropResolverActivity.extra.contentType"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "dropResolverActivity.extra.callingPackage"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1042"

    invoke-static {v4, v3}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-boolean v10, v3, Lcom/android/wm/shell/draganddrop/DragSession;->isDragDataDropResolver:Z

    if-eqz v8, :cond_6

    if-nez v10, :cond_6

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/DragAndDropPermissions;->takeTransient()Z

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_6
    :goto_4
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-boolean v4, v3, Lcom/android/wm/shell/draganddrop/DragSession;->isDragDataDropResolver:Z

    if-eqz v4, :cond_7

    move-object v1, p1

    move v11, v2

    goto :goto_5

    :cond_7
    move v11, v1

    move-object v1, p1

    :goto_5
    instance-of v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v2, :cond_9

    iget-object v2, v3, Lcom/android/wm/shell/draganddrop/DragSession;->mVisibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    invoke-virtual {v2}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->getFullscreenTasks()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    :cond_8
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v11}, Landroid/os/UserHandle;-><init>(I)V

    const/high16 v4, 0x2000000

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v11}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, -0x1

    move-object v1, p0

    move v5, p3

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->startSplitScreenWithAllApps(ILandroid/app/PendingIntent;Landroid/content/ComponentName;ILandroid/os/UserHandle;I)V

    goto :goto_6

    :cond_9
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object/from16 v3, p5

    move v4, v11

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startDragAndSplit(Landroid/content/Intent;ILandroid/os/Bundle;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    if-eqz v8, :cond_a

    if-nez v10, :cond_a

    invoke-virtual/range {p4 .. p4}, Landroid/view/DragAndDropPermissions;->release()V

    :cond_a
    return-void

    :goto_7
    if-eqz v8, :cond_b

    if-nez v10, :cond_b

    invoke-virtual/range {p4 .. p4}, Landroid/view/DragAndDropPermissions;->release()V

    :cond_b
    throw v0
.end method

.method public final startSplitScreenWithAllApps(ILandroid/app/PendingIntent;Landroid/content/ComponentName;ILandroid/os/UserHandle;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p5

    goto :goto_0

    :cond_1
    move p5, v0

    :goto_0
    invoke-static {p3, p5, p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getEdgeAllAppsActivityIntent(Landroid/content/ComponentName;II)Landroid/content/Intent;

    move-result-object p3

    const/4 p5, 0x1

    if-nez p4, :cond_2

    move v0, p5

    :cond_2
    const-string/jumbo p4, "start_dnd_split_with_all_apps"

    invoke-virtual {p3, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2, p3, v0, p6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startPendingIntentAndIntent(Landroid/app/PendingIntent;Landroid/content/Intent;II)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p3, v0, p6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTaskAndIntent(ILandroid/content/Intent;II)V

    :goto_1
    return-void
.end method

.method public final supportMultiSplitDropTarget()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->isInSubDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isFlexPanelEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->supportMultiSplitAppMinimumSize()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

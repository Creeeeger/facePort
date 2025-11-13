.class final Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$onBindViewHolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $holder:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

.field final synthetic $task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

.field final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter;Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$onBindViewHolder$1;->$task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    iput-object p3, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$onBindViewHolder$1;->$holder:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    iget-object v1, v0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter;

    iget-object v1, v1, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter;->listener:Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$RecentTaskClickListener;

    iget-object v2, v0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$onBindViewHolder$1;->$task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    iget-object v0, v0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$onBindViewHolder$1;->$holder:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/app/ActivityOptions$LaunchCookie;

    invoke-direct {v3}, Landroid/app/ActivityOptions$LaunchCookie;-><init>()V

    sget-object v4, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v4, v2, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->isForegroundTask:Z

    const/4 v5, 0x0

    iget-object v6, v2, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->splitBounds:Lcom/android/wm/shell/util/SplitBounds;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const v9, 0x10a009f

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Landroid/app/ActivityOptions;->makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v7, v1, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->splitScreen:Ljava/util/Optional;

    invoke-virtual {v7}, Ljava/util/Optional;->isPresent()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-static {v0, v5, v5, v7, v8}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    iget v9, v2, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->displayId:I

    invoke-virtual {v7, v9}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v7, v3}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/app/ActivityOptions$LaunchCookie;)V

    new-instance v15, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$onRecentAppClicked$handleResult$1;

    iget v9, v2, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->taskId:I

    invoke-direct {v15, v1, v3, v9}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$onRecentAppClicked$handleResult$1;-><init>(Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;Landroid/app/ActivityOptions$LaunchCookie;I)V

    sget-boolean v3, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FLIP:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v10, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v3, v10}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v3, v3, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->baseIntentComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    iget-object v2, v2, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->baseIntentComponent:Landroid/content/ComponentName;

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v10, v1, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->context:Landroid/content/Context;

    const/high16 v11, 0x4000000

    invoke-static {v10, v5, v2, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    iget-object v11, v1, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->activityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v12

    invoke-interface {v11, v3, v12}, Landroid/app/IActivityTaskManager;->isPackageEnabledForCoverLauncher(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->pluginAODManager:Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {v3, v10, v2}, Lcom/android/systemui/doze/PluginAODManager;->showCoverToast(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    :cond_3
    iget-object v2, v1, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->splitScreen:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v6, :cond_6

    if-nez v4, :cond_6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v6, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    if-ne v9, v2, :cond_4

    move v3, v8

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    if-eqz v3, :cond_5

    iget v2, v6, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    :cond_5
    move/from16 v20, v2

    xor-int/lit8 v21, v3, 0x1

    new-instance v2, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner;

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v13

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    new-instance v4, Landroid/view/DisplayInfo;

    invoke-direct {v4}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    new-instance v14, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v4

    invoke-direct {v14, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v10, v2

    move v11, v9

    move/from16 v12, v20

    invoke-direct/range {v10 .. v15}, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner;-><init>(II[ILandroid/graphics/Rect;Lkotlin/jvm/functions/Function0;)V

    new-instance v3, Landroid/window/RemoteTransition;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v0

    const-string/jumbo v4, "startSplitScreenTask"

    invoke-direct {v3, v2, v0, v4}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->splitScreen:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreen;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v19

    iget v1, v6, Lcom/android/wm/shell/util/SplitBounds;->snapPosition:I

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v4, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1;

    move-object/from16 v16, v4

    move-object/from16 v17, v0

    move/from16 v18, v9

    move/from16 v22, v1

    move-object/from16 v23, v3

    invoke-direct/range {v16 .. v23}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;ILandroid/os/Bundle;IIILandroid/window/RemoteTransition;)V

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_6
    iget-object v0, v1, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->activityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    invoke-virtual {v15}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$onRecentAppClicked$handleResult$1;->invoke()Ljava/lang/Object;

    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

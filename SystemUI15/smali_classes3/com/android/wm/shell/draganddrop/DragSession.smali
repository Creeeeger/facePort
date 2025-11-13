.class public final Lcom/android/wm/shell/draganddrop/DragSession;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public activityInfo:Landroid/content/pm/ActivityInfo;

.field public appData:Landroid/content/Intent;

.field public displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field public dragItemSupportsSplitscreen:Z

.field public final hideDragSourceTaskId:I

.field public isDragDataDropResolver:Z

.field public isDragFromRecent:Z

.field public isHideDragSourceTask:Z

.field public launchableIntent:Landroid/app/PendingIntent;

.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

.field public final mInitialDragData:Landroid/content/ClipData;

.field public final mInitialDragFlags:I

.field public final mVisibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

.field public runningTaskActType:I

.field public runningTaskSupportsSplitScreen:Z


# direct methods
.method public constructor <init>(Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;I)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/draganddrop/DragSession;-><init>(Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;ILcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;ILcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DragSession;->runningTaskActType:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/wm/shell/draganddrop/DragSession;->hideDragSourceTaskId:I

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragSession;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragSession;->mInitialDragData:Landroid/content/ClipData;

    iput p4, p0, Lcom/android/wm/shell/draganddrop/DragSession;->mInitialDragFlags:I

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string p2, "android.intent.extra.HIDE_DRAG_SOURCE_TASK_ID"

    invoke-virtual {p1, p2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/android/wm/shell/draganddrop/DragSession;->hideDragSourceTaskId:I

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DRAG_AND_DROP_enabled:[Z

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_1

    int-to-long p1, v1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, -0x67c21761ba6dc201L    # -6.555409164104257E-192

    const/4 v3, 0x1

    const-string v4, "Extracting drag source taskId: taskId=%d"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iput-object p5, p0, Lcom/android/wm/shell/draganddrop/DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    iput-object p6, p0, Lcom/android/wm/shell/draganddrop/DragSession;->mVisibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    return-void
.end method


# virtual methods
.method public final getNonFloatingTopTask(Z)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragSession;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/app/ActivityTaskManager;->getTasks(IZZI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/draganddrop/DragSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/draganddrop/DragSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/DragSession;Z)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final update()V
    .locals 15

    iget v0, p0, Lcom/android/wm/shell/draganddrop/DragSession;->hideDragSourceTaskId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DragSession;->mInitialDragData:Landroid/content/ClipData;

    invoke-virtual {v5}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipDescription;->isDragFromRecent()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/wm/shell/draganddrop/DragSession;->isDragFromRecent:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DragSession;->mInitialDragData:Landroid/content/ClipData;

    invoke-virtual {v5, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, "android.intent.extra.DND_RECENT_TOP_TASK_ID"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    iget-boolean v6, p0, Lcom/android/wm/shell/draganddrop/DragSession;->isDragFromRecent:Z

    if-eqz v6, :cond_4

    if-eq v5, v3, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragSession;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    const v6, 0x7fffffff

    invoke-virtual {v3, v6, v2}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v7, v5, :cond_2

    invoke-static {v6}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_2

    :cond_3
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/draganddrop/DragSession;->getNonFloatingTopTask(Z)Ljava/util/List;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    :goto_3
    if-ltz v5, :cond_8

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v4, :cond_7

    iget v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, v7, :cond_7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DRAG_AND_DROP_enabled:[Z

    aget-boolean v8, v8, v1

    if-eqz v8, :cond_6

    int-to-long v7, v7

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    goto :goto_4

    :cond_5
    const-string v6, "null"

    :goto_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7, v6}, [Ljava/lang/Object;

    move-result-object v14

    const/4 v12, 0x1

    const-string v13, "Skipping running task: id=%d component=%s"

    const-wide v10, -0x6f2b766cad2dcd32L

    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragSession;->isHideDragSourceTask:Z

    goto :goto_5

    :cond_7
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    iget v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    iput v7, p0, Lcom/android/wm/shell/draganddrop/DragSession;->runningTaskActType:I

    iget-boolean v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    iput-boolean v6, p0, Lcom/android/wm/shell/draganddrop/DragSession;->runningTaskSupportsSplitScreen:Z

    :goto_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragSession;->mInitialDragData:Landroid/content/ClipData;

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragSession;->activityInfo:Landroid/content/pm/ActivityInfo;

    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-nez v3, :cond_9

    iput-boolean v2, p0, Lcom/android/wm/shell/draganddrop/DragSession;->dragItemSupportsSplitscreen:Z

    goto :goto_8

    :cond_9
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    if-eqz v3, :cond_b

    iget-object v0, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/android/wm/shell/draganddrop/AppResult;->hasResizableResolveInfo()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragSession;->dragItemSupportsSplitscreen:Z

    goto :goto_8

    :cond_b
    if-eqz v0, :cond_d

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    move v1, v2

    :cond_d
    :goto_7
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragSession;->dragItemSupportsSplitscreen:Z

    :goto_8
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragSession;->mInitialDragData:Landroid/content/ClipData;

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragSession;->mInitialDragData:Landroid/content/ClipData;

    iget v1, p0, Lcom/android/wm/shell/draganddrop/DragSession;->mInitialDragFlags:I

    invoke-static {v0, v1}, Lcom/android/wm/shell/draganddrop/DragUtils;->getLaunchIntent(Landroid/content/ClipData;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragSession;->launchableIntent:Landroid/app/PendingIntent;

    return-void
.end method

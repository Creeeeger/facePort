.class public final Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/taskview/TaskView$Listener;


# instance fields
.field public mDestroyed:Z

.field public mInitialized:Z

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->mInitialized:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->mDestroyed:Z

    return-void
.end method


# virtual methods
.method public final onBackPressedOnTaskRoot(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskId:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;->$controller:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-boolean p1, p1, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mListener:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;

    check-cast p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mListener:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$2;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$2;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->hideModalOrCollapse()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onInitialized()V
    .locals 11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->mDestroyed:Z

    iget-boolean v3, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->mInitialized:Z

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->getBubbleKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v3, v4}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v6, 0x25d4ae1d1e035e1L

    const/16 v8, 0xf

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->mDestroyed:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->mInitialized:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {v3, v1}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mParentView:Landroid/view/View;

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final onReleased()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->mDestroyed:Z

    return-void
.end method

.method public final onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 8

    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v0, 0x0

    aget-boolean p2, p2, v0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    if-eqz p2, :cond_0

    int-to-long v0, p1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->getBubbleKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide v3, -0x7928e4c62f21c2dfL

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskId:I

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz p2, :cond_1

    iget-boolean v0, p2, Lcom/android/wm/shell/bubbles/Bubble;->mIsAppBubble:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;->$controller:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mAppBubbleTaskIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mListener:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;

    check-cast p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->onTaskCreated()V

    return-void
.end method

.method public final onTaskRemovalStarted(I)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    if-eqz v0, :cond_0

    int-to-long v0, p1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->getBubbleKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide v3, -0x35955ba6b12bc17aL    # -3.114984695225802E50

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;->$controller:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->removeBubble(ILjava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/wm/shell/taskview/TaskView;->release()V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mParentView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    :cond_2
    return-void
.end method

.method public final onTaskVisibilityChanged(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mListener:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;

    check-cast p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setContentVisibility(Z)V

    return-void
.end method

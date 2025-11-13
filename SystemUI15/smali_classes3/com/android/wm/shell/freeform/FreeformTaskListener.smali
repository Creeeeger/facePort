.class public final Lcom/android/wm/shell/freeform/FreeformTaskListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;
.implements Lcom/android/wm/shell/ShellTaskOrganizer$FocusListener;


# instance fields
.field public mCaptionType:I

.field public final mContext:Landroid/content/Context;

.field public final mDesktopModeTaskRepository:Ljava/util/Optional;

.field public final mDexWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;

.field public final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field public mFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mImePositionProcessor:Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;

.field public mPrevFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTasks:Landroid/util/SparseArray;

.field public final mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;",
            ">;",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            "Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mCaptionType:I

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p6, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    iput-object p7, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDexWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;

    iput-object p5, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDesktopModeTaskRepository:Ljava/util/Optional;

    if-eqz p3, :cond_0

    new-instance p5, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0}, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskListener;)V

    invoke-virtual {p3, p5, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    const/4 p5, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string p7, "freeform_caption_type"

    invoke-static {p3, p7, p5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mCaptionType:I

    :cond_1
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz p3, :cond_2

    instance-of p3, p6, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    if-eqz p3, :cond_2

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    new-instance p3, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    invoke-direct {p3, p0, p1, p6, p5}, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskListener;ILcom/android/wm/shell/windowdecor/WindowDecorViewModel;I)V

    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mImePositionProcessor:Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/DisplayImeController;->addPositionProcessor(Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;)V

    :cond_2
    new-instance p1, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskListener;)V

    iget-object p0, p4, Lcom/android/wm/shell/ShellTaskOrganizer;->mMultiWindowCoreStateChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p0, p4, Lcom/android/wm/shell/ShellTaskOrganizer;->mMultiWindowCoreStateChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->findTaskSurface$1(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method public final createRestartDialog(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 1

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDexWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    const-string v0, "  "

    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " tasks"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findTaskSurface$1(I)Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "There is no surface for taskId="

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getTaskInfo(I)Landroid/app/TaskInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final hasChild()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMultiWindow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onFocusTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 9

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->updateFocusedTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v0, v0

    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v4, -0x673e0e8414b3cb1cL

    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDesktopModeTaskRepository:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->updateFocusedTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_4
    return-void
.end method

.method public final onImmersiveModeChanged(IZ)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_IMMERSIVE_MODE:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    instance-of v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mLastImmersiveTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onImmersiveModeChanged: last="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", immersive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MultiTaskingWindowDecorViewModel"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->updateLastImmersiveDecoration(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->resetLastImmersiveDecoration()V

    :cond_3
    :goto_2
    return-void
.end method

.method public final onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v0, v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide v3, -0x740d9e3293ec410L    # -4.2126801046577E273

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;-><init>(I)V

    iput-object p1, v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p2, v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {v1, p1, p2, v0, v0}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDesktopModeTaskRepository:Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    iget-boolean p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->updateFocusedTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Task appeared more than once: #"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v1, v1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide v4, -0x5876afb65676c4bfL    # -3.1369387400097316E-118

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {v1, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDexWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    iput-object p1, v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDesktopModeTaskRepository:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->updateFocusedTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_2
    return-void
.end method

.method public final onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v0, v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide v3, -0x41cfe9ce79eacee0L    # -3.745475125643561E-9

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDesktopModeTaskRepository:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_BUG_FIX:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-interface {p0, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_3
    return-void
.end method

.method public final reparentChildSurfaceToTask(ILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->findTaskSurface$1(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final resetStashedFreeform(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    check-cast p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->resetStashedFreeform(Z)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "resetStashedFreeform failed. There is no task for taskId="

    invoke-static {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final resizeTasksByFreeformCaptionType(I)Landroid/window/WindowContainerTransaction;
    .locals 7

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mCaptionType:I

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mCaptionType:I

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    instance-of v5, v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    if-eqz v5, :cond_3

    check-cast v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget v5, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mCaptionType:I

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget v6, v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    if-ne v6, v5, :cond_2

    const-string/jumbo v4, "setCaptionType: The caption type has already been set. type="

    const-string v6, "MultiTaskingWindowDecoration"

    invoke-static {v5, v4, v6}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iput v5, v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    :cond_3
    :goto_1
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v4, 0x3

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->freeformCaptionTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "freeform_caption_type"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "FreeformTaskListener"

    return-object p0
.end method

.method public final updateFocusedTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_1

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mPrevFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

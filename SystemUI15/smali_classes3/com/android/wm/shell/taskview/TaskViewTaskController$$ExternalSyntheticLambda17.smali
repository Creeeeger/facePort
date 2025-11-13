.class public final synthetic Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;ZILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda17;->f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iput-boolean p2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda17;->f$1:Z

    iput p3, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda17;->f$2:I

    iput-object p4, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda17;->f$3:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda17;->f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget-boolean v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda17;->f$1:Z

    iget v2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda17;->f$2:I

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda17;->f$3:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    invoke-interface {v3, v2, p0}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onTaskCreated(ILandroid/content/ComponentName;)V

    :cond_0
    if-eqz v1, :cond_1

    iget-boolean p0, v0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceCreated:Z

    if-nez p0, :cond_2

    :cond_1
    iget-object p0, v0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    iget-boolean v0, v0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceCreated:Z

    invoke-interface {p0, v2, v0}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onTaskVisibilityChanged(IZ)V

    :cond_2
    return-void
.end method

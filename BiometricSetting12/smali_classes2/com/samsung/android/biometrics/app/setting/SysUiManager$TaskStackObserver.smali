.class public Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;
.super Landroid/app/TaskStackListener;
.source "SysUiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/SysUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskStackObserver"
.end annotation


# static fields
.field public static final TASK_FOCUS_CHANGED:I = 0x4

.field public static final TASK_MOVED_TO_FRONT:I = 0x3

.field public static final TASK_REMOVED:I = 0x2

.field public static final TASK_STACK_CHANGED:I = 0x1


# instance fields
.field private mIsWatching:Z

.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public observe(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;->mIsWatching:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;->mIsWatching:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;->mIsWatching:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSS_SysUiManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onTaskFocusChanged(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1500(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1500(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    move-result-object v0

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/16 v2, 0x9

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1500(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1500(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.class final Landroid/app/StatusBarManager$UndoCallback;
.super Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;
.source "StatusBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/StatusBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UndoCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/lang/Runnable;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/app/StatusBarManager$UndoCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/StatusBarManager$UndoCallback;->mCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public blacklist onUndoTriggered()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/app/StatusBarManager$UndoCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/app/StatusBarManager$UndoCallback;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/app/StatusBarManager$UndoCallback;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/app/StatusBarManager$UndoCallback;->restoreCallingIdentity(J)V

    throw v2
.end method

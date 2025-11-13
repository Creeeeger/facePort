.class Landroid/app/backup/BackupManager$BackupObserverWrapper;
.super Landroid/app/backup/IBackupObserver$Stub;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupObserverWrapper"
.end annotation


# static fields
.field static final greylist-max-o MSG_FINISHED:I = 0x3

.field static final greylist-max-o MSG_RESULT:I = 0x2

.field static final greylist-max-o MSG_UPDATE:I = 0x1


# instance fields
.field final greylist-max-o mHandler:Landroid/os/Handler;

.field final greylist-max-o mObserver:Landroid/app/backup/BackupObserver;

.field final synthetic blacklist this$0:Landroid/app/backup/BackupManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/BackupObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->this$0:Landroid/app/backup/BackupManager;

    invoke-direct {p0}, Landroid/app/backup/IBackupObserver$Stub;-><init>()V

    new-instance v0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;-><init>(Landroid/app/backup/BackupManager$BackupObserverWrapper;Landroid/os/Looper;Landroid/app/backup/BackupManager;)V

    iput-object v0, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mObserver:Landroid/app/backup/BackupObserver;

    return-void
.end method


# virtual methods
.method public greylist-max-o backupFinished(I)V
    .locals 4

    iget-object v0, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public greylist-max-o onResult(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public greylist-max-o onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .locals 4

    iget-object v0, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

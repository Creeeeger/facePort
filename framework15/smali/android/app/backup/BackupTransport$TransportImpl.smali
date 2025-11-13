.class Landroid/app/backup/BackupTransport$TransportImpl;
.super Lcom/android/internal/backup/IBackupTransport$Stub;
.source "BackupTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransportImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/backup/BackupTransport;


# direct methods
.method constructor blacklist <init>(Landroid/app/backup/BackupTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-direct {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist abortFullRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->abortFullRestore()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, -0x3e8

    invoke-interface {p1, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    :goto_0
    return-void
.end method

.method public blacklist cancelFullBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->cancelFullBackup()V

    invoke-interface {p1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationComplete()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, -0x3e8

    invoke-interface {p1, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    :goto_0
    return-void
.end method

.method public blacklist checkFullBackupSize(JLcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2}, Landroid/app/backup/BackupTransport;->checkFullBackupSize(J)I

    move-result v0

    invoke-interface {p3, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, -0x3e8

    invoke-interface {p3, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    :goto_0
    return-void
.end method

.method public blacklist clearBackupData(Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I

    move-result v0

    invoke-interface {p2, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, -0x3e8

    invoke-interface {p2, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    :goto_0
    return-void
.end method

.method public blacklist configurationIntent(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    :goto_0
    return-void
.end method

.method public blacklist currentDestinationString(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    :goto_0
    return-void
.end method

.method public blacklist dataManagementIntent(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->dataManagementIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    :goto_0
    return-void
.end method

.method public blacklist dataManagementIntentLabel(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->dataManagementIntentLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    :goto_0
    return-void
.end method

.method public blacklist finishBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->finishBackup()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, -0x3e8

    invoke-interface {p1, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    :goto_0
    return-void
.end method

.method public blacklist finishRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->finishRestore()V

    invoke-interface {p1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationComplete()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, -0x3e8

    invoke-interface {p1, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    :goto_0
    return-void
.end method

.method public blacklist getAvailableRestoreSets(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/util/List<",
            "Landroid/app/backup/RestoreSet;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    :goto_0
    return-void
.end method

.method public blacklist getBackupManagerMonitor(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/backup/IBackupManagerMonitor;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->getBackupManagerMonitor()Landroid/app/backup/BackupManagerMonitor;

    move-result-object v0

    new-instance v1, Landroid/app/backup/BackupManagerMonitorWrapper;

    invoke-direct {v1, v0}, Landroid/app/backup/BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/BackupManagerMonitor;)V

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    :goto_0
    return-void
.end method

.method public blacklist getBackupQuota(Ljava/lang/String;ZLcom/android/internal/infra/AndroidFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2}, Landroid/app/backup/BackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    :goto_0
    return-void
.end method

.method public blacklist getCurrentRestoreSet(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->getCurrentRestoreSet()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    :goto_0
    return-void
.end method

.method public blacklist getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    invoke-interface {p2, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, -0x3e8

    invoke-interface {p2, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    :goto_0
    return-void
.end method

.method public blacklist getRestoreData(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    invoke-interface {p2, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, -0x3e8

    invoke-interface {p2, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    :goto_0
    return-void
.end method

.method public blacklist getTransportFlags(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->getTransportFlags()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    :goto_0
    return-void
.end method

.method public blacklist initializeDevice(Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->initializeDevice()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, -0x3e8

    invoke-interface {p1, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    :goto_0
    return-void
.end method

.method public blacklist isAppEligibleForBackup(Landroid/content/pm/PackageInfo;ZLcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Z",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2}, Landroid/app/backup/BackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    :goto_0
    return-void
.end method

.method public blacklist name(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    :goto_0
    return-void
.end method

.method public blacklist nextRestorePackage(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/backup/RestoreDescription;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    :goto_0
    return-void
.end method

.method public blacklist performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v0

    invoke-interface {p4, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, -0x3e8

    invoke-interface {p4, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    :goto_0
    return-void
.end method

.method public blacklist performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v0

    invoke-interface {p4, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, -0x3e8

    invoke-interface {p4, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    :goto_0
    return-void
.end method

.method public blacklist requestBackupTime(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->requestBackupTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    :goto_0
    return-void
.end method

.method public blacklist requestFullBackupTime(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->requestFullBackupTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    :goto_0
    return-void
.end method

.method public blacklist sendBackupData(ILcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->sendBackupData(I)I

    move-result v0

    invoke-interface {p2, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, -0x3e8

    invoke-interface {p2, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    :goto_0
    return-void
.end method

.method public blacklist startRestore(J[Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v0

    invoke-interface {p4, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, -0x3e8

    invoke-interface {p4, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    :goto_0
    return-void
.end method

.method public blacklist transportDirName(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    :goto_0
    return-void
.end method

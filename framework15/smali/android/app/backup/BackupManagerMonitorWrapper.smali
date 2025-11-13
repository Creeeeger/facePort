.class public Landroid/app/backup/BackupManagerMonitorWrapper;
.super Landroid/app/backup/IBackupManagerMonitor$Stub;
.source "BackupManagerMonitorWrapper.java"


# instance fields
.field private final blacklist mMonitor:Landroid/app/backup/BackupManagerMonitor;


# direct methods
.method public constructor blacklist <init>(Landroid/app/backup/BackupManagerMonitor;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/backup/IBackupManagerMonitor$Stub;-><init>()V

    iput-object p1, p0, Landroid/app/backup/BackupManagerMonitorWrapper;->mMonitor:Landroid/app/backup/BackupManagerMonitor;

    return-void
.end method


# virtual methods
.method public blacklist onEvent(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupManagerMonitorWrapper;->mMonitor:Landroid/app/backup/BackupManagerMonitor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/backup/BackupManagerMonitorWrapper;->mMonitor:Landroid/app/backup/BackupManagerMonitor;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupManagerMonitor;->onEvent(Landroid/os/Bundle;)V

    return-void
.end method

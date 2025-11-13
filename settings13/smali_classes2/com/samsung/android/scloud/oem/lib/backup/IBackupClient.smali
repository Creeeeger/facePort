.class public interface abstract Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;
.super Ljava/lang/Object;
.source "IBackupClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$BackupProgressListener;,
        Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;
    }
.end annotation


# virtual methods
.method public abstract backupCompleted(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract backupFailed(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract initialize(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "listener"
        }
    .end annotation
.end method

.method public abstract restoreCompleted(Landroid/content/Context;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "restoredList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract restoreFailed(Landroid/content/Context;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "restoredList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

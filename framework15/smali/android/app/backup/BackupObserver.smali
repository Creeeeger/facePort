.class public abstract Landroid/app/backup/BackupObserver;
.super Ljava/lang/Object;
.source "BackupObserver.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist backupFinished(I)V
    .locals 0

    return-void
.end method

.method public whitelist onResult(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public whitelist onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .locals 0

    return-void
.end method

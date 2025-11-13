.class public abstract Landroid/app/backup/RestoreObserver;
.super Ljava/lang/Object;
.source "RestoreObserver.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onUpdate(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist restoreFinished(I)V
    .locals 0

    return-void
.end method

.method public whitelist restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public whitelist restoreStarting(I)V
    .locals 0

    return-void
.end method

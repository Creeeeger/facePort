.class public Lcom/samsung/android/app/usage/IUsageStatsWatcher$Default;
.super Ljava/lang/Object;
.source "IUsageStatsWatcher.java"

# interfaces
.implements Lcom/samsung/android/app/usage/IUsageStatsWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/usage/IUsageStatsWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0
    .param p1, "pauseComponent"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0
    .param p1, "resumeComponent"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0
    .param p1, "stopComponent"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.class public interface abstract Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;
.super Ljava/lang/Object;
.source "SemRemoteAppModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskChangeListener"
.end annotation


# virtual methods
.method public abstract blacklist onRecentTaskListUpdated()V
.end method

.method public abstract blacklist onTaskDisplayChanged(II)V
.end method

.method public abstract blacklist onTaskPlayed(II)V
.end method

.method public abstract blacklist onTaskRemoved(I)V
.end method

.method public abstract blacklist onTaskTriedToGoToBackground(II)V
.end method

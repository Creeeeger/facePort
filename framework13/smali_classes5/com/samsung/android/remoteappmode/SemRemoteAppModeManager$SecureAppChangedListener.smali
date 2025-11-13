.class public interface abstract Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListener;
.super Ljava/lang/Object;
.source "SemRemoteAppModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SecureAppChangedListener"
.end annotation


# virtual methods
.method public abstract blacklist onSecuredAppLaunched(ILjava/lang/String;)V
.end method

.method public abstract blacklist onSecuredAppRemoved(ILjava/lang/String;)V
.end method

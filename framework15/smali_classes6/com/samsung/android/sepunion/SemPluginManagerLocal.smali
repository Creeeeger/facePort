.class public abstract Lcom/samsung/android/sepunion/SemPluginManagerLocal;
.super Ljava/lang/Object;
.source "SemPluginManagerLocal.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist addLedNotification(Landroid/os/Bundle;)V
.end method

.method public abstract blacklist disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
.end method

.method public abstract blacklist disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
.end method

.method public abstract blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
.end method

.method public abstract blacklist getCoverState()Lcom/samsung/android/cover/CoverState;
.end method

.method public abstract blacklist getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;
.end method

.method public abstract blacklist getCoverSwitchState()Z
.end method

.method public abstract blacklist getVersion()I
.end method

.method public abstract blacklist isCoverManagerDisabled()Z
.end method

.method public abstract blacklist onCoverAppCovered(Z)I
.end method

.method public abstract blacklist registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
.end method

.method public abstract blacklist registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
.end method

.method public abstract blacklist registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
.end method

.method public abstract blacklist registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
.end method

.method public abstract blacklist removeLedNotification(Landroid/os/Bundle;)V
.end method

.method public abstract blacklist requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
.end method

.method public abstract blacklist sendDataToCover(I[B)V
.end method

.method public abstract blacklist sendDataToNfcLedCover(I[B)V
.end method

.method public abstract blacklist sendPowerKeyToCover()V
.end method

.method public abstract blacklist sendSystemEvent(Landroid/os/Bundle;)V
.end method

.method public abstract blacklist setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
.end method

.method public abstract blacklist unregisterCallback(Landroid/os/IBinder;)Z
.end method

.method public abstract blacklist unregisterCallbackForExternal(Landroid/os/IBinder;)Z
.end method

.method public abstract blacklist unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
.end method

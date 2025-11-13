.class public interface abstract Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract dispatchEvent(Landroid/os/Bundle;)V
.end method

.method public abstract getDynamicLockData()Ljava/lang/String;
.end method

.method public abstract goToLockedShade()V
.end method

.method public abstract isSecure()Z
.end method

.method public abstract makeExpandedInvisible()V
.end method

.method public abstract onLaunchTransitionFadingEnded()V
.end method

.method public abstract requestDismissKeyguard(Landroid/content/Intent;)V
.end method

.method public abstract setBiometricRecognition(Z)V
.end method

.method public abstract setDynamicLockData(Ljava/lang/String;)V
.end method

.method public abstract setLockscreenTimer(J)V
.end method

.method public abstract setPluginLockWallpaper(IILjava/lang/String;)V
.end method

.method public abstract setPluginWallpaper(IIILjava/lang/String;)V
.end method

.method public abstract setPluginWallpaper(IIILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPluginWallpaperHints(ILjava/lang/String;)V
.end method

.method public abstract setRotationAllowed(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setScreenOrientation(ZZ)V
.end method

.method public abstract setTimeOut(Z)V
.end method

.method public abstract setViewMode(I)V
.end method

.method public abstract setWallpaperHints(Ljava/lang/String;)V
.end method

.method public abstract updateDynamicLockData(Ljava/lang/String;)V
.end method

.method public abstract updateWindowSecureState(Z)V
.end method

.method public abstract userActivity()V
.end method

.class public interface abstract Lcom/android/systemui/plugins/subscreen/PluginSubScreen;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_SUB_SCREEN"
    version = 0x1
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_SUB_SCREEN"

.field public static final BIOMETRIC_TYPE_FACE:I = 0x3e9

.field public static final BIOMETRIC_TYPE_FINGERPRINT:I = 0x3ea

.field public static final KEY_AUTO_WIPE_WARNING_MESSAGE:Ljava/lang/String; = "auto_wipe_warning_message"

.field public static final KEY_BOUNCER_MESSAGE:Ljava/lang/String; = "bouncer_message"

.field public static final KEY_INCORRECT_BOUNCER_MESSAGE:Ljava/lang/String; = "bouncer_incorrect_message"

.field public static final KEY_STRONG_AUTH_MESSAGE:Ljava/lang/String; = "strong_auth_message"

.field public static final KEY_STRONG_AUTH_POPUP_MESSAGE:Ljava/lang/String; = "strong_auth_popup_message"

.field public static final SUB_ROOM_MUSIC_WIDGET:I = 0x130

.field public static final SUB_ROOM_NETWORK:I = 0x12f

.field public static final SUB_ROOM_NOTIFICATION:I = 0x12d

.field public static final SUB_ROOM_QUICK_PANEL:I = 0x12c

.field public static final SUB_ROOM_WIDGET:I = 0x12e

.field public static final VERSION:I = 0x1


# virtual methods
.method public disableTask(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dozeTimeTick()V
    .locals 0

    return-void
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public enableTask(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNowTouchableRect()Landroid/graphics/Rect;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubScreenPreview()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubScreenPreview(I)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubScreenPreview(III)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isTurnOnSmartCase()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBiometricAuthFailed(I)V
    .locals 0

    return-void
.end method

.method public onBiometricAuthenticated(IIZ)V
    .locals 0

    return-void
.end method

.method public onBiometricError(ILjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onBiometricRunningStateChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onCameraLaunchedDoubleTap()V
    .locals 0

    return-void
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public onCoverOccludedStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDeviceStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onDozeAmountChanged(F)V
    .locals 0

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDreamingInAwakeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDualDARInnerLockscreenRequirementChanged(Z)V
    .locals 0

    return-void
.end method

.method public onEntryAdded(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method

.method public onEntryRemoved(Landroid/service/notification/StatusBarNotification;I)V
    .locals 0

    return-void
.end method

.method public onEntryUpdated(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method

.method public onFinishedGoingToSleep()V
    .locals 0

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 0

    return-void
.end method

.method public onFolderStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFullscreenBouncerChanged(ZZ)V
    .locals 0

    return-void
.end method

.method public onKeyguardShowingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onLockDisabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onLockModeChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackageDataCleared(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onPasswordChecked(ZI)V
    .locals 0

    return-void
.end method

.method public onReceivedIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onResumeSubHomeActivity()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public onSemWallpaperChanged(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 0

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    return-void
.end method

.method public abstract onSubUIStarted(Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onSubUIStarted(Landroid/view/Window;Landroid/os/Bundle;)V
.end method

.method public abstract onSubUIStopped()V
.end method

.method public onUnlockedChanged(Z)V
    .locals 0

    return-void
.end method

.method public onUserUnlocked()V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public requestOpenAppPopup(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public requestOpenAppPopup(Landroid/app/PendingIntent;Z)V
    .locals 0

    return-void
.end method

.method public requestOpenAppPopup(Landroid/app/PendingIntent;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setClockColor(Landroid/view/View;III)V
    .locals 0

    return-void
.end method

.method public abstract setPluginCallback(Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;)V
.end method

.method public setSubHomeActivityResumed(Z)V
    .locals 0

    return-void
.end method

.method public showWipeWarningDialog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateCapsule(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

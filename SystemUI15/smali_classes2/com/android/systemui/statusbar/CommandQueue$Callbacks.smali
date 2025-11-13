.class public interface abstract Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abortTransient(II)V
    .locals 0

    return-void
.end method

.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .locals 0

    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 0

    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public appTransitionCancelled(I)V
    .locals 0

    return-void
.end method

.method public appTransitionFinished(I)V
    .locals 0

    return-void
.end method

.method public appTransitionPending(IZ)V
    .locals 0

    return-void
.end method

.method public appTransitionStarting(JJZI)V
    .locals 0

    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 0

    return-void
.end method

.method public cancelRequestAddTile(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public confirmImmersivePrompt()V
    .locals 0

    return-void
.end method

.method public disable(IIIZ)V
    .locals 0

    return-void
.end method

.method public dismissInattentiveSleepWarning(Z)V
    .locals 0

    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 0

    return-void
.end method

.method public handleShowGlobalActionsMenu(I)V
    .locals 0

    return-void
.end method

.method public handleShowShutdownUi(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public handleSystemKey(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public hideAuthenticationDialog(J)V
    .locals 0

    return-void
.end method

.method public hideRecentApps(ZZ)V
    .locals 0

    return-void
.end method

.method public hideToast(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public immersiveModeChanged(IZ)V
    .locals 0

    return-void
.end method

.method public moveFocusedTaskToDesktop(I)V
    .locals 0

    return-void
.end method

.method public moveFocusedTaskToFullscreen(I)V
    .locals 0

    return-void
.end method

.method public moveFocusedTaskToStageSplit(IZ)V
    .locals 0

    return-void
.end method

.method public notifyRequestedGameToolsWin(Z)V
    .locals 0

    return-void
.end method

.method public notifyRequestedSystemKey(ZZ)V
    .locals 0

    return-void
.end method

.method public notifySamsungPayInfo(IZLandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onBiometricAuthenticated(I)V
    .locals 0

    return-void
.end method

.method public onBiometricError(III)V
    .locals 0

    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 0

    return-void
.end method

.method public onDisplayReady(I)V
    .locals 0

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onEmergencyActionLaunchGestureDetected()V
    .locals 0

    return-void
.end method

.method public onFlashlightKeyPressed(I)V
    .locals 0

    return-void
.end method

.method public onRecentsAnimationStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onRotationProposal(IZ)V
    .locals 0

    return-void
.end method

.method public onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .locals 0

    return-void
.end method

.method public preloadRecentApps()V
    .locals 0

    return-void
.end method

.method public registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .locals 0

    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestAddTile(ILandroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    .locals 0

    return-void
.end method

.method public requestMagnificationConnection(Z)V
    .locals 0

    return-void
.end method

.method public requestTileServiceListeningState(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public resetScheduleAutoHide()V
    .locals 0

    return-void
.end method

.method public sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public setBiometricContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    .locals 0

    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    return-void
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 0

    return-void
.end method

.method public setNavigationBarLumaSamplingEnabled(IZ)V
    .locals 0

    return-void
.end method

.method public setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    .locals 0

    return-void
.end method

.method public setQsTiles([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSplitscreenFocus(Z)V
    .locals 0

    return-void
.end method

.method public setTopAppHidesStatusBar(Z)V
    .locals 0

    return-void
.end method

.method public setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    .locals 0

    return-void
.end method

.method public setWindowState(III)V
    .locals 0

    return-void
.end method

.method public showAssistDisclosure()V
    .locals 0

    return-void
.end method

.method public showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public showInattentiveSleepWarning()V
    .locals 0

    return-void
.end method

.method public showMediaOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 0

    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 0

    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 0

    return-void
.end method

.method public showRearDisplayDialog(I)V
    .locals 0

    return-void
.end method

.method public showRecentApps(Z)V
    .locals 0

    return-void
.end method

.method public showScreenPinningRequest(I)V
    .locals 0

    return-void
.end method

.method public showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V
    .locals 0

    return-void
.end method

.method public showTransient(IIZ)V
    .locals 0

    return-void
.end method

.method public showWirelessChargingAnimation(I)V
    .locals 0

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public startSearcleByHomeKey(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public suppressAmbientDisplay(Z)V
    .locals 0

    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 0

    return-void
.end method

.method public toggleNotificationsPanel()V
    .locals 0

    return-void
.end method

.method public toggleQuickSettingsPanel()V
    .locals 0

    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    return-void
.end method

.method public toggleSplitScreen()V
    .locals 0

    return-void
.end method

.method public toggleTaskbar()V
    .locals 0

    return-void
.end method

.method public unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .locals 0

    return-void
.end method

.method public updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    .locals 0

    return-void
.end method

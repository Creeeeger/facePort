.class public Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Default;
.super Ljava/lang/Object;
.source "IMultiTaskingBinder.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IMultiTaskingBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 379
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist changeSplitLayoutByNaturalSwitching(ILandroid/os/Bundle;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "dropBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    return-void
.end method

.method public blacklist changeToHorizontalSplitLayout(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    return-void
.end method

.method public blacklist disableDividerPanelFirstAutoOpen()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    return-void
.end method

.method public blacklist disableNonResizeableAppRestartDialog()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    return-void
.end method

.method public blacklist dismissSplitTask(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "homeBehindTopTask"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    return-void
.end method

.method public blacklist dismissTaskInSplitScreen(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    return-void
.end method

.method public blacklist enterSplitScreenTopActivity()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    return-void
.end method

.method public blacklist exitMultiWindow(Landroid/os/IBinder;Z)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "checkPermission"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist finishNaturalSwitching()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    return-void
.end method

.method public blacklist getAllowedMultiWindowPackageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCornerGestureCustomValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDexTaskInfoFlags(Landroid/os/IBinder;)I
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFreeformAlpha(Landroid/os/IBinder;)F
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFreeformContainerDefaultPoint()Landroid/graphics/PointF;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMWDisableRequesters()Landroid/content/pm/StringParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMinimizedFreeformTasksForCurrentUser()Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMultiSplitFlags()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMultiWindowBlockListApp()Landroid/content/pm/StringParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMultiWindowModeStates(I)I
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getResizeMode(Landroid/content/pm/ActivityInfo;)I
    .locals 1
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSplitActivityAllowPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSplitActivityPackageEnabled(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportEmbedActivityPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;
    .locals 1
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTaskInfoFromPackageName(Ljava/lang/String;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVisibleTasks()Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasMinimizedToggleTasks()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hideInputMethod(I)V
    .locals 0
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    return-void
.end method

.method public blacklist injectBackEventForDex(Landroid/os/IBinder;I)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAllTasksResizable(III)Z
    .locals 1
    .param p1, "taskId1"    # I
    .param p2, "taskId2"    # I
    .param p3, "taskId3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAllowedMultiWindowPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDisabledNonResizeableAppRestartDialog()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFlexPanelRunning()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMultiWindowBlockListApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSplitImmersiveModeEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isValidCornerGesture(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist minimizeAllTasks(I)Z
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist minimizeTaskById(I)Z
    .locals 1
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist minimizeTaskByToken(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist moveFreeformTaskToSplit(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    return-void
.end method

.method public blacklist moveSplitTaskToFreeform(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    return-void
.end method

.method public blacklist noMoreShowMultiWindowHandlerHelp(I)V
    .locals 0
    .param p1, "windowingMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    return-void
.end method

.method public blacklist notifyDragSplitAppIconHasDrawable(Z)V
    .locals 0
    .param p1, "hasDrawable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    return-void
.end method

.method public blacklist notifyFreeformMinimizeAnimationEnd(I)V
    .locals 0
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist registerDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/multiwindow/IDexSnappingCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    return-void
.end method

.method public blacklist registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/multiwindow/IFreeformCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist registerNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/INaturalSwitchingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    return-void
.end method

.method public blacklist registerRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    return-void
.end method

.method public blacklist registerSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    return-void
.end method

.method public blacklist removeFocusedTask(I)Z
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportDexHelpShown(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    return-void
.end method

.method public blacklist reportFreeformContainerPoint(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "point"    # Landroid/graphics/PointF;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist reportMultiWindowHandlerHelpShown(I)V
    .locals 0
    .param p1, "windowingMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    return-void
.end method

.method public blacklist setBlockedMinimizeFreeformEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    return-void
.end method

.method public blacklist setCornerGestureCustomValue(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    return-void
.end method

.method public blacklist setCornerGestureEnabledWithSettings(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    return-void
.end method

.method public blacklist setCustomDensityEnabled(I)V
    .locals 0
    .param p1, "enabledFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    return-void
.end method

.method public blacklist setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    return-void
.end method

.method public blacklist setFreeformAlpha(Landroid/os/IBinder;F)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "alpha"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist setFreeformHeaderType(I)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    return-void
.end method

.method public blacklist setMaxVisibleFreeformCountForDex(II)V
    .locals 0
    .param p1, "maxCount"    # I
    .param p2, "maxDexCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    return-void
.end method

.method public blacklist setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "requester"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    return-void
.end method

.method public blacklist setNaviStarSplitImmersiveMode(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    return-void
.end method

.method public blacklist setSplitActivityPackageEnabled(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    return-void
.end method

.method public blacklist setSplitImmersiveMode(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    return-void
.end method

.method public blacklist setStayFocusActivityEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    return-void
.end method

.method public blacklist showOverlayAllApps(Landroid/os/IBinder;[I)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "buttonPosition"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    return-void
.end method

.method public blacklist startFreeformTaskPinning(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    return-void
.end method

.method public blacklist startNaturalSwitching(ILandroid/os/IRemoteCallback;)Z
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "callback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startResizingFreeformTask(Landroid/os/IBinder;IIZ)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "isPointerInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    return-void
.end method

.method public blacklist stopFreeformTaskPinning(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    return-void
.end method

.method public blacklist supportMultiSplitAppMinimumSize()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportsMultiWindow(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist toggleFreeformWindowingMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/multiwindow/IDexSnappingCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    return-void
.end method

.method public blacklist unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/multiwindow/IFreeformCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist unregisterNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/INaturalSwitchingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    return-void
.end method

.method public blacklist unregisterRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    return-void
.end method

.method public blacklist unregisterSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    return-void
.end method

.method public blacklist updateMultiSplitAppMinimumSize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    return-void
.end method

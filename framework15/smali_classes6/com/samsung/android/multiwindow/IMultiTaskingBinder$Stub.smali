.class public abstract Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;
.super Landroid/os/Binder;
.source "IMultiTaskingBinder.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IMultiTaskingBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_calculateMaxWidth:I = 0x45

.field static final blacklist TRANSACTION_changeToHorizontalSplitLayout:I = 0x42

.field static final blacklist TRANSACTION_clearAllDockingTasks:I = 0x47

.field static final blacklist TRANSACTION_dismissSplitTask:I = 0x41

.field static final blacklist TRANSACTION_exitMultiWindow:I = 0x1

.field static final blacklist TRANSACTION_finishNaturalSwitching:I = 0x3e

.field static final blacklist TRANSACTION_getAllowedMultiWindowPackageList:I = 0x6

.field static final blacklist TRANSACTION_getDexTaskInfoFlags:I = 0x2f

.field static final blacklist TRANSACTION_getEmbedActivityPackageEnabled:I = 0x16

.field static final blacklist TRANSACTION_getFreeformContainerPoint:I = 0x12

.field static final blacklist TRANSACTION_getMWDisableRequesters:I = 0x9

.field static final blacklist TRANSACTION_getMinimizedFreeformTasksForCurrentUser:I = 0x13

.field static final blacklist TRANSACTION_getMultiSplitFlags:I = 0x15

.field static final blacklist TRANSACTION_getMultiWindowBlockListApp:I = 0x8

.field static final blacklist TRANSACTION_getMultiWindowModeStates:I = 0x2

.field static final blacklist TRANSACTION_getResizeMode:I = 0x4

.field static final blacklist TRANSACTION_getSplitActivityAllowPackages:I = 0x19

.field static final blacklist TRANSACTION_getSplitActivityPackageEnabled:I = 0x1a

.field static final blacklist TRANSACTION_getSupportEmbedActivityPackages:I = 0x18

.field static final blacklist TRANSACTION_getSurfaceFreezerSnapshot:I = 0x3c

.field static final blacklist TRANSACTION_getTaskInfoFromPackageName:I = 0x1f

.field static final blacklist TRANSACTION_getVisibleTasks:I = 0x14

.field static final blacklist TRANSACTION_hasMinimizedToggleTasks:I = 0x2e

.field static final blacklist TRANSACTION_initDockingBounds:I = 0x43

.field static final blacklist TRANSACTION_isAllTasksResizable:I = 0xd

.field static final blacklist TRANSACTION_isAllowedMultiWindowPackage:I = 0x5

.field static final blacklist TRANSACTION_isCornerGestureRunning:I = 0x1e

.field static final blacklist TRANSACTION_isDismissedFlexPanelMode:I = 0x36

.field static final blacklist TRANSACTION_isFlexPanelRunning:I = 0x40

.field static final blacklist TRANSACTION_isMultiWindowBlockListApp:I = 0x7

.field static final blacklist TRANSACTION_isSplitImmersiveModeEnabled:I = 0x26

.field static final blacklist TRANSACTION_isValidCornerGesture:I = 0x1d

.field static final blacklist TRANSACTION_isVisibleTaskByTaskIdInDexDisplay:I = 0x2c

.field static final blacklist TRANSACTION_isVisibleTaskInDexDisplay:I = 0x2b

.field static final blacklist TRANSACTION_minimizeAllTasks:I = 0x22

.field static final blacklist TRANSACTION_minimizeAllTasksByRecents:I = 0x23

.field static final blacklist TRANSACTION_minimizeTaskById:I = 0x21

.field static final blacklist TRANSACTION_minimizeTaskToSpecificPosition:I = 0x24

.field static final blacklist TRANSACTION_notifyDragSplitAppIconHasDrawable:I = 0x3b

.field static final blacklist TRANSACTION_notifyFreeformMinimizeAnimationEnd:I = 0x10

.field static final blacklist TRANSACTION_preventNaturalSwitching:I = 0x3f

.field static final blacklist TRANSACTION_registerDexSnappingCallback:I = 0x48

.field static final blacklist TRANSACTION_registerDexTransientDelayListener:I = 0x4d

.field static final blacklist TRANSACTION_registerFreeformCallback:I = 0xe

.field static final blacklist TRANSACTION_registerRemoteAppTransitionListener:I = 0xb

.field static final blacklist TRANSACTION_removeFocusedTask:I = 0x20

.field static final blacklist TRANSACTION_reportFreeformContainerPoint:I = 0x11

.field static final blacklist TRANSACTION_resizeOtherTaskIfNeeded:I = 0x46

.field static final blacklist TRANSACTION_rotateDexCompatTask:I = 0x32

.field static final blacklist TRANSACTION_saveFreeformBounds:I = 0x27

.field static final blacklist TRANSACTION_scheduleNotifyDexSnappingCallback:I = 0x4a

.field static final blacklist TRANSACTION_setBlockedMinimizeFreeformEnable:I = 0x37

.field static final blacklist TRANSACTION_setBoostFreeformTaskLayer:I = 0x30

.field static final blacklist TRANSACTION_setCandidateTask:I = 0x44

.field static final blacklist TRANSACTION_setCornerGestureEnabledWithSettings:I = 0x1c

.field static final blacklist TRANSACTION_setCustomDensityEnabled:I = 0x38

.field static final blacklist TRANSACTION_setEmbedActivityPackageEnabled:I = 0x17

.field static final blacklist TRANSACTION_setEnsureLaunchSplitEnabled:I = 0x39

.field static final blacklist TRANSACTION_setMaxVisibleFreeformCountForDex:I = 0x3a

.field static final blacklist TRANSACTION_setMultiWindowEnabledForUser:I = 0xa

.field static final blacklist TRANSACTION_setNaviStarSplitImmersiveMode:I = 0x28

.field static final blacklist TRANSACTION_setSplitActivityPackageEnabled:I = 0x1b

.field static final blacklist TRANSACTION_setSplitImmersiveMode:I = 0x25

.field static final blacklist TRANSACTION_setStayFocusActivityEnabled:I = 0x29

.field static final blacklist TRANSACTION_setStayFocusAndTopResumedActivityEnabled:I = 0x2a

.field static final blacklist TRANSACTION_shouldDeferEnterSplit:I = 0x2d

.field static final blacklist TRANSACTION_startAssistantActivityToSplit:I = 0x4c

.field static final blacklist TRANSACTION_startNaturalSwitching:I = 0x3d

.field static final blacklist TRANSACTION_supportMultiSplitAppMinimumSize:I = 0x34

.field static final blacklist TRANSACTION_supportsMultiWindow:I = 0x3

.field static final blacklist TRANSACTION_toggleFreeformForDexCompatApp:I = 0x33

.field static final blacklist TRANSACTION_toggleFreeformWindowingMode:I = 0x4b

.field static final blacklist TRANSACTION_toggleFreeformWindowingModeForDex:I = 0x31

.field static final blacklist TRANSACTION_unregisterDexSnappingCallback:I = 0x49

.field static final blacklist TRANSACTION_unregisterFreeformCallback:I = 0xf

.field static final blacklist TRANSACTION_unregisterRemoteAppTransitionListener:I = 0xc

.field static final blacklist TRANSACTION_updateMultiSplitAppMinimumSize:I = 0x35


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.multiwindow.IMultiTaskingBinder"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.multiwindow.IMultiTaskingBinder"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "registerDexTransientDelayListener"

    return-object v0

    :pswitch_1
    const-string v0, "startAssistantActivityToSplit"

    return-object v0

    :pswitch_2
    const-string v0, "toggleFreeformWindowingMode"

    return-object v0

    :pswitch_3
    const-string v0, "scheduleNotifyDexSnappingCallback"

    return-object v0

    :pswitch_4
    const-string v0, "unregisterDexSnappingCallback"

    return-object v0

    :pswitch_5
    const-string v0, "registerDexSnappingCallback"

    return-object v0

    :pswitch_6
    const-string v0, "clearAllDockingTasks"

    return-object v0

    :pswitch_7
    const-string v0, "resizeOtherTaskIfNeeded"

    return-object v0

    :pswitch_8
    const-string v0, "calculateMaxWidth"

    return-object v0

    :pswitch_9
    const-string v0, "setCandidateTask"

    return-object v0

    :pswitch_a
    const-string v0, "initDockingBounds"

    return-object v0

    :pswitch_b
    const-string v0, "changeToHorizontalSplitLayout"

    return-object v0

    :pswitch_c
    const-string v0, "dismissSplitTask"

    return-object v0

    :pswitch_d
    const-string v0, "isFlexPanelRunning"

    return-object v0

    :pswitch_e
    const-string v0, "preventNaturalSwitching"

    return-object v0

    :pswitch_f
    const-string v0, "finishNaturalSwitching"

    return-object v0

    :pswitch_10
    const-string v0, "startNaturalSwitching"

    return-object v0

    :pswitch_11
    const-string v0, "getSurfaceFreezerSnapshot"

    return-object v0

    :pswitch_12
    const-string v0, "notifyDragSplitAppIconHasDrawable"

    return-object v0

    :pswitch_13
    const-string v0, "setMaxVisibleFreeformCountForDex"

    return-object v0

    :pswitch_14
    const-string v0, "setEnsureLaunchSplitEnabled"

    return-object v0

    :pswitch_15
    const-string v0, "setCustomDensityEnabled"

    return-object v0

    :pswitch_16
    const-string v0, "setBlockedMinimizeFreeformEnable"

    return-object v0

    :pswitch_17
    const-string v0, "isDismissedFlexPanelMode"

    return-object v0

    :pswitch_18
    const-string v0, "updateMultiSplitAppMinimumSize"

    return-object v0

    :pswitch_19
    const-string v0, "supportMultiSplitAppMinimumSize"

    return-object v0

    :pswitch_1a
    const-string v0, "toggleFreeformForDexCompatApp"

    return-object v0

    :pswitch_1b
    const-string v0, "rotateDexCompatTask"

    return-object v0

    :pswitch_1c
    const-string v0, "toggleFreeformWindowingModeForDex"

    return-object v0

    :pswitch_1d
    const-string v0, "setBoostFreeformTaskLayer"

    return-object v0

    :pswitch_1e
    const-string v0, "getDexTaskInfoFlags"

    return-object v0

    :pswitch_1f
    const-string v0, "hasMinimizedToggleTasks"

    return-object v0

    :pswitch_20
    const-string v0, "shouldDeferEnterSplit"

    return-object v0

    :pswitch_21
    const-string v0, "isVisibleTaskByTaskIdInDexDisplay"

    return-object v0

    :pswitch_22
    const-string v0, "isVisibleTaskInDexDisplay"

    return-object v0

    :pswitch_23
    const-string v0, "setStayFocusAndTopResumedActivityEnabled"

    return-object v0

    :pswitch_24
    const-string v0, "setStayFocusActivityEnabled"

    return-object v0

    :pswitch_25
    const-string v0, "setNaviStarSplitImmersiveMode"

    return-object v0

    :pswitch_26
    const-string v0, "saveFreeformBounds"

    return-object v0

    :pswitch_27
    const-string v0, "isSplitImmersiveModeEnabled"

    return-object v0

    :pswitch_28
    const-string v0, "setSplitImmersiveMode"

    return-object v0

    :pswitch_29
    const-string v0, "minimizeTaskToSpecificPosition"

    return-object v0

    :pswitch_2a
    const-string v0, "minimizeAllTasksByRecents"

    return-object v0

    :pswitch_2b
    const-string v0, "minimizeAllTasks"

    return-object v0

    :pswitch_2c
    const-string v0, "minimizeTaskById"

    return-object v0

    :pswitch_2d
    const-string v0, "removeFocusedTask"

    return-object v0

    :pswitch_2e
    const-string v0, "getTaskInfoFromPackageName"

    return-object v0

    :pswitch_2f
    const-string v0, "isCornerGestureRunning"

    return-object v0

    :pswitch_30
    const-string v0, "isValidCornerGesture"

    return-object v0

    :pswitch_31
    const-string v0, "setCornerGestureEnabledWithSettings"

    return-object v0

    :pswitch_32
    const-string v0, "setSplitActivityPackageEnabled"

    return-object v0

    :pswitch_33
    const-string v0, "getSplitActivityPackageEnabled"

    return-object v0

    :pswitch_34
    const-string v0, "getSplitActivityAllowPackages"

    return-object v0

    :pswitch_35
    const-string v0, "getSupportEmbedActivityPackages"

    return-object v0

    :pswitch_36
    const-string v0, "setEmbedActivityPackageEnabled"

    return-object v0

    :pswitch_37
    const-string v0, "getEmbedActivityPackageEnabled"

    return-object v0

    :pswitch_38
    const-string v0, "getMultiSplitFlags"

    return-object v0

    :pswitch_39
    const-string v0, "getVisibleTasks"

    return-object v0

    :pswitch_3a
    const-string v0, "getMinimizedFreeformTasksForCurrentUser"

    return-object v0

    :pswitch_3b
    const-string v0, "getFreeformContainerPoint"

    return-object v0

    :pswitch_3c
    const-string v0, "reportFreeformContainerPoint"

    return-object v0

    :pswitch_3d
    const-string v0, "notifyFreeformMinimizeAnimationEnd"

    return-object v0

    :pswitch_3e
    const-string v0, "unregisterFreeformCallback"

    return-object v0

    :pswitch_3f
    const-string v0, "registerFreeformCallback"

    return-object v0

    :pswitch_40
    const-string v0, "isAllTasksResizable"

    return-object v0

    :pswitch_41
    const-string v0, "unregisterRemoteAppTransitionListener"

    return-object v0

    :pswitch_42
    const-string v0, "registerRemoteAppTransitionListener"

    return-object v0

    :pswitch_43
    const-string v0, "setMultiWindowEnabledForUser"

    return-object v0

    :pswitch_44
    const-string v0, "getMWDisableRequesters"

    return-object v0

    :pswitch_45
    const-string v0, "getMultiWindowBlockListApp"

    return-object v0

    :pswitch_46
    const-string v0, "isMultiWindowBlockListApp"

    return-object v0

    :pswitch_47
    const-string v0, "getAllowedMultiWindowPackageList"

    return-object v0

    :pswitch_48
    const-string v0, "isAllowedMultiWindowPackage"

    return-object v0

    :pswitch_49
    const-string v0, "getResizeMode"

    return-object v0

    :pswitch_4a
    const-string v0, "supportsMultiWindow"

    return-object v0

    :pswitch_4b
    const-string v0, "getMultiWindowModeStates"

    return-object v0

    :pswitch_4c
    const-string v0, "exitMultiWindow"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x4c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.multiwindow.IMultiTaskingBinder"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IDexTransientCaptionDelayListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDexTransientCaptionDelayListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->registerDexTransientDelayListener(Lcom/samsung/android/multiwindow/IDexTransientCaptionDelayListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->startAssistantActivityToSplit(Landroid/content/Intent;F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->toggleFreeformWindowingMode()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->scheduleNotifyDexSnappingCallback(ILandroid/graphics/Rect;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IDexSnappingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->unregisterDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IDexSnappingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->registerDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->clearAllDockingTasks(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->resizeOtherTaskIfNeeded(ILandroid/graphics/Rect;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->calculateMaxWidth(III)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setCandidateTask(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->initDockingBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->changeToHorizontalSplitLayout(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->dismissSplitTask(Landroid/os/IBinder;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isFlexPanelRunning()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->preventNaturalSwitching(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->finishNaturalSwitching()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->startNaturalSwitching(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->notifyDragSplitAppIconHasDrawable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setMaxVisibleFreeformCountForDex(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setEnsureLaunchSplitEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setCustomDensityEnabled(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setBlockedMinimizeFreeformEnable(Z)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isDismissedFlexPanelMode()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->updateMultiSplitAppMinimumSize()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->supportMultiSplitAppMinimumSize()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->toggleFreeformForDexCompatApp(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->rotateDexCompatTask(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1c
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->toggleFreeformWindowingModeForDex(Landroid/window/WindowContainerToken;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setBoostFreeformTaskLayer(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getDexTaskInfoFlags(Landroid/os/IBinder;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->hasMinimizedToggleTasks()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_20
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->shouldDeferEnterSplit(Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isVisibleTaskByTaskIdInDexDisplay(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_22
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isVisibleTaskInDexDisplay(Landroid/app/PendingIntent;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setStayFocusAndTopResumedActivityEnabled(ZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setStayFocusActivityEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setNaviStarSplitImmersiveMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->saveFreeformBounds(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isSplitImmersiveModeEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setSplitImmersiveMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->minimizeTaskToSpecificPosition(IZII)Z

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->minimizeAllTasksByRecents(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->minimizeAllTasks(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->minimizeTaskById(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->removeFocusedTask(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getTaskInfoFromPackageName(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_2f
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isCornerGestureRunning()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_30
    sget-object v2, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isValidCornerGesture(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setCornerGestureEnabledWithSettings(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setSplitActivityPackageEnabled(Ljava/lang/String;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getSplitActivityPackageEnabled(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_34
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getSplitActivityAllowPackages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_35
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getSupportEmbedActivityPackages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_38
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getMultiSplitFlags()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_39
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getVisibleTasks()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_3a
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getMinimizedFreeformTasksForCurrentUser()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_3b
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getFreeformContainerPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_3c
    sget-object v2, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->reportFreeformContainerPoint(Landroid/graphics/PointF;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->notifyFreeformMinimizeAnimationEnd(ILandroid/graphics/PointF;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IFreeformCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IFreeformCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isAllTasksResizable(III)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->unregisterRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->registerRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_44
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getMWDisableRequesters()Landroid/content/pm/StringParceledListSlice;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_45
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getMultiWindowBlockListApp()Landroid/content/pm/StringParceledListSlice;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isMultiWindowBlockListApp(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_47
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getAllowedMultiWindowPackageList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isAllowedMultiWindowPackage(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_49
    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getResizeMode(Landroid/content/pm/ActivityInfo;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->supportsMultiWindow(Landroid/os/IBinder;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getMultiWindowModeStates(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->exitMultiWindow(Landroid/os/IBinder;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

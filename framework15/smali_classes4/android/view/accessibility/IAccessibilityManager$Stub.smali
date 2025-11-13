.class public abstract Landroid/view/accessibility/IAccessibilityManager$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityManager.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityManager"

.field static final blacklist PERMISSIONS_notifyQuickSettingsTilesChanged:[Ljava/lang/String;

.field static final blacklist TRANSACTION_OnStartGestureWakeup:I = 0x43

.field static final blacklist TRANSACTION_OnStopGestureWakeup:I = 0x44

.field static final greylist-max-o TRANSACTION_addAccessibilityInteractionConnection:I = 0x7

.field static final greylist-max-o TRANSACTION_addClient:I = 0x3

.field static final blacklist TRANSACTION_associateEmbeddedHierarchy:I = 0x17

.field static final blacklist TRANSACTION_attachAccessibilityOverlayToDisplay:I = 0x2a

.field static final blacklist TRANSACTION_convertPixelToDpi:I = 0x40

.field static final blacklist TRANSACTION_disassociateEmbeddedHierarchy:I = 0x18

.field static final blacklist TRANSACTION_enableShortcutsForTargets:I = 0x2c

.field static final blacklist TRANSACTION_getA11yFeatureToTileMap:I = 0x2d

.field static final blacklist TRANSACTION_getAccessibilityShortcutTargets:I = 0x10

.field static final blacklist TRANSACTION_getAccessibilityWindowId:I = 0x12

.field static final greylist-max-o TRANSACTION_getEnabledAccessibilityServiceList:I = 0x6

.field static final blacklist TRANSACTION_getFocusColor:I = 0x1a

.field static final blacklist TRANSACTION_getFocusStrokeWidth:I = 0x19

.field static final greylist-max-o TRANSACTION_getInstalledAccessibilityServiceList:I = 0x5

.field static final blacklist TRANSACTION_getRecommendedTimeoutMillis:I = 0x13

.field static final blacklist TRANSACTION_getScreenReaderName:I = 0x3e

.field static final greylist-max-o TRANSACTION_getWindowToken:I = 0xc

.field static final blacklist TRANSACTION_getWindowTransformationSpec:I = 0x29

.field static final blacklist TRANSACTION_injectInputEventToInputFilter:I = 0x22

.field static final greylist-max-o TRANSACTION_interrupt:I = 0x1

.field static final blacklist TRANSACTION_isAccessibilityServiceWarningRequired:I = 0x28

.field static final blacklist TRANSACTION_isAccessibilityTargetAllowed:I = 0x26

.field static final blacklist TRANSACTION_isActivatedMagnification:I = 0x4f

.field static final blacklist TRANSACTION_isAudioDescriptionByDefaultEnabled:I = 0x1b

.field static final blacklist TRANSACTION_isCameraFlashNotificationRunning:I = 0x52

.field static final blacklist TRANSACTION_isScreenReaderEnabled:I = 0x3d

.field static final blacklist TRANSACTION_isSystemAudioCaptioningUiEnabled:I = 0x1d

.field static final blacklist TRANSACTION_isTwoFingerGestureRecognitionEnabled:I = 0x3c

.field static final greylist-max-o TRANSACTION_notifyAccessibilityButtonClicked:I = 0xd

.field static final greylist-max-o TRANSACTION_notifyAccessibilityButtonVisibilityChanged:I = 0xe

.field static final blacklist TRANSACTION_notifyQuickSettingsTilesChanged:I = 0x2b

.field static final blacklist TRANSACTION_performAccessibilityDirectAccess:I = 0x48

.field static final greylist-max-o TRANSACTION_performAccessibilityShortcut:I = 0xf

.field static final blacklist TRANSACTION_registerProxyForDisplay:I = 0x20

.field static final blacklist TRANSACTION_registerSystemAction:I = 0x14

.field static final greylist-max-o TRANSACTION_registerUiTestAutomationService:I = 0xa

.field static final greylist-max-o TRANSACTION_removeAccessibilityInteractionConnection:I = 0x8

.field static final blacklist TRANSACTION_removeClient:I = 0x4

.field static final blacklist TRANSACTION_semCheckMdnieColorBlind:I = 0x32

.field static final blacklist TRANSACTION_semDisableMdnieColorFilter:I = 0x35

.field static final blacklist TRANSACTION_semDisableWindowMagnification:I = 0x4c

.field static final blacklist TRANSACTION_semDumpCallStack:I = 0x47

.field static final blacklist TRANSACTION_semEnableMdnieColorFilter:I = 0x34

.field static final blacklist TRANSACTION_semEnableWindowMagnification:I = 0x4b

.field static final blacklist TRANSACTION_semGetWindowMagnificationBounds:I = 0x49

.field static final blacklist TRANSACTION_semGetWindowMagnificationScale:I = 0x4a

.field static final blacklist TRANSACTION_semInjectInputEventToInputFilter:I = 0x51

.field static final blacklist TRANSACTION_semIsAccessibilityButtonShown:I = 0x45

.field static final blacklist TRANSACTION_semIsAccessibilityServiceEnabled:I = 0x2e

.field static final blacklist TRANSACTION_semIsDarkScreenMode:I = 0x36

.field static final blacklist TRANSACTION_semIsWindowMagnificationEnabled:I = 0x4e

.field static final blacklist TRANSACTION_semLockNow:I = 0x42

.field static final blacklist TRANSACTION_semMoveWindowMagnification:I = 0x4d

.field static final blacklist TRANSACTION_semOpenDeviceOptions:I = 0x3a

.field static final blacklist TRANSACTION_semPerformAccessibilityButtonClick:I = 0x50

.field static final blacklist TRANSACTION_semRegisterAssistantMenu:I = 0x39

.field static final blacklist TRANSACTION_semSetColorBlind:I = 0x31

.field static final blacklist TRANSACTION_semSetMdnieAccessibilityMode:I = 0x33

.field static final blacklist TRANSACTION_semSetTwoFingerGestureRecognitionEnabled:I = 0x3b

.field static final blacklist TRANSACTION_semToggleDarkScreenMode:I = 0x37

.field static final blacklist TRANSACTION_semTurnOffAccessibilityService:I = 0x2f

.field static final blacklist TRANSACTION_semTurnOnAccessibilityService:I = 0x30

.field static final blacklist TRANSACTION_semUpdateAssitantMenu:I = 0x38

.field static final greylist-max-o TRANSACTION_sendAccessibilityEvent:I = 0x2

.field static final greylist-max-o TRANSACTION_sendFingerprintGesture:I = 0x11

.field static final blacklist TRANSACTION_sendRestrictedDialogIntent:I = 0x27

.field static final blacklist TRANSACTION_setAccessibilityWindowAttributes:I = 0x1f

.field static final blacklist TRANSACTION_setMagnificationConnection:I = 0x16

.field static final blacklist TRANSACTION_setMagnificationDisactivate:I = 0x46

.field static final greylist-max-o TRANSACTION_setPictureInPictureActionReplacingConnection:I = 0x9

.field static final blacklist TRANSACTION_setScreenReaderEnabled:I = 0x3f

.field static final blacklist TRANSACTION_setSystemAudioCaptioningEnabled:I = 0x1c

.field static final blacklist TRANSACTION_setSystemAudioCaptioningUiEnabled:I = 0x1e

.field static final blacklist TRANSACTION_setTalkbackMode:I = 0x41

.field static final blacklist TRANSACTION_startFlashNotificationEvent:I = 0x25

.field static final blacklist TRANSACTION_startFlashNotificationSequence:I = 0x23

.field static final blacklist TRANSACTION_stopFlashNotificationSequence:I = 0x24

.field static final blacklist TRANSACTION_unregisterProxyForDisplay:I = 0x21

.field static final blacklist TRANSACTION_unregisterSystemAction:I = 0x15

.field static final greylist-max-o TRANSACTION_unregisterUiTestAutomationService:I = 0xb


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/accessibility/IAccessibilityManager$Stub;->PERMISSIONS_notifyQuickSettingsTilesChanged:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    nop

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.view.accessibility.IAccessibilityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/IAccessibilityManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "isCameraFlashNotificationRunning"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "semInjectInputEventToInputFilter"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "semPerformAccessibilityButtonClick"

    return-object v0

    :pswitch_3
    const-string v0, "isActivatedMagnification"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "semIsWindowMagnificationEnabled"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "semMoveWindowMagnification"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "semDisableWindowMagnification"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "semEnableWindowMagnification"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "semGetWindowMagnificationScale"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "semGetWindowMagnificationBounds"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "performAccessibilityDirectAccess"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "semDumpCallStack"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "setMagnificationDisactivate"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "semIsAccessibilityButtonShown"

    return-object v0

    :pswitch_e
    const-string v0, "OnStopGestureWakeup"

    return-object v0

    :pswitch_f
    const-string v0, "OnStartGestureWakeup"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "semLockNow"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "setTalkbackMode"

    return-object v0

    :pswitch_12
    const-string v0, "convertPixelToDpi"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "setScreenReaderEnabled"

    return-object v0

    :pswitch_14
    const-string v0, "getScreenReaderName"

    return-object v0

    :pswitch_15
    const-string v0, "isScreenReaderEnabled"

    return-object v0

    :pswitch_16
    const-string v0, "isTwoFingerGestureRecognitionEnabled"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "semSetTwoFingerGestureRecognitionEnabled"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "semOpenDeviceOptions"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "semRegisterAssistantMenu"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "semUpdateAssitantMenu"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "semToggleDarkScreenMode"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "semIsDarkScreenMode"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "semDisableMdnieColorFilter"

    return-object v0

    :pswitch_1e
    const-string/jumbo v0, "semEnableMdnieColorFilter"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "semSetMdnieAccessibilityMode"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "semCheckMdnieColorBlind"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "semSetColorBlind"

    return-object v0

    :pswitch_22
    const-string/jumbo v0, "semTurnOnAccessibilityService"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "semTurnOffAccessibilityService"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "semIsAccessibilityServiceEnabled"

    return-object v0

    :pswitch_25
    const-string v0, "getA11yFeatureToTileMap"

    return-object v0

    :pswitch_26
    const-string v0, "enableShortcutsForTargets"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "notifyQuickSettingsTilesChanged"

    return-object v0

    :pswitch_28
    const-string v0, "attachAccessibilityOverlayToDisplay"

    return-object v0

    :pswitch_29
    const-string v0, "getWindowTransformationSpec"

    return-object v0

    :pswitch_2a
    const-string v0, "isAccessibilityServiceWarningRequired"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "sendRestrictedDialogIntent"

    return-object v0

    :pswitch_2c
    const-string v0, "isAccessibilityTargetAllowed"

    return-object v0

    :pswitch_2d
    const-string/jumbo v0, "startFlashNotificationEvent"

    return-object v0

    :pswitch_2e
    const-string/jumbo v0, "stopFlashNotificationSequence"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "startFlashNotificationSequence"

    return-object v0

    :pswitch_30
    const-string v0, "injectInputEventToInputFilter"

    return-object v0

    :pswitch_31
    const-string/jumbo v0, "unregisterProxyForDisplay"

    return-object v0

    :pswitch_32
    const-string/jumbo v0, "registerProxyForDisplay"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "setAccessibilityWindowAttributes"

    return-object v0

    :pswitch_34
    const-string/jumbo v0, "setSystemAudioCaptioningUiEnabled"

    return-object v0

    :pswitch_35
    const-string v0, "isSystemAudioCaptioningUiEnabled"

    return-object v0

    :pswitch_36
    const-string/jumbo v0, "setSystemAudioCaptioningEnabled"

    return-object v0

    :pswitch_37
    const-string v0, "isAudioDescriptionByDefaultEnabled"

    return-object v0

    :pswitch_38
    const-string v0, "getFocusColor"

    return-object v0

    :pswitch_39
    const-string v0, "getFocusStrokeWidth"

    return-object v0

    :pswitch_3a
    const-string v0, "disassociateEmbeddedHierarchy"

    return-object v0

    :pswitch_3b
    const-string v0, "associateEmbeddedHierarchy"

    return-object v0

    :pswitch_3c
    const-string/jumbo v0, "setMagnificationConnection"

    return-object v0

    :pswitch_3d
    const-string/jumbo v0, "unregisterSystemAction"

    return-object v0

    :pswitch_3e
    const-string/jumbo v0, "registerSystemAction"

    return-object v0

    :pswitch_3f
    const-string v0, "getRecommendedTimeoutMillis"

    return-object v0

    :pswitch_40
    const-string v0, "getAccessibilityWindowId"

    return-object v0

    :pswitch_41
    const-string/jumbo v0, "sendFingerprintGesture"

    return-object v0

    :pswitch_42
    const-string v0, "getAccessibilityShortcutTargets"

    return-object v0

    :pswitch_43
    const-string/jumbo v0, "performAccessibilityShortcut"

    return-object v0

    :pswitch_44
    const-string/jumbo v0, "notifyAccessibilityButtonVisibilityChanged"

    return-object v0

    :pswitch_45
    const-string/jumbo v0, "notifyAccessibilityButtonClicked"

    return-object v0

    :pswitch_46
    const-string v0, "getWindowToken"

    return-object v0

    :pswitch_47
    const-string/jumbo v0, "unregisterUiTestAutomationService"

    return-object v0

    :pswitch_48
    const-string/jumbo v0, "registerUiTestAutomationService"

    return-object v0

    :pswitch_49
    const-string/jumbo v0, "setPictureInPictureActionReplacingConnection"

    return-object v0

    :pswitch_4a
    const-string/jumbo v0, "removeAccessibilityInteractionConnection"

    return-object v0

    :pswitch_4b
    const-string v0, "addAccessibilityInteractionConnection"

    return-object v0

    :pswitch_4c
    const-string v0, "getEnabledAccessibilityServiceList"

    return-object v0

    :pswitch_4d
    const-string v0, "getInstalledAccessibilityServiceList"

    return-object v0

    :pswitch_4e
    const-string/jumbo v0, "removeClient"

    return-object v0

    :pswitch_4f
    const-string v0, "addClient"

    return-object v0

    :pswitch_50
    const-string/jumbo v0, "sendAccessibilityEvent"

    return-object v0

    :pswitch_51
    const-string v0, "interrupt"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
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

.method protected blacklist attachAccessibilityOverlayToDisplay_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist enableShortcutsForTargets_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getA11yFeatureToTileMap_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getAccessibilityShortcutTargets_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x51

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getWindowToken_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.RETRIEVE_WINDOW_CONTENT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist injectInputEventToInputFilter_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isAccessibilityServiceWarningRequired_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isActivatedMagnification_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist notifyAccessibilityButtonClicked_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist notifyAccessibilityButtonVisibilityChanged_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist notifyQuickSettingsTilesChanged_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/view/accessibility/IAccessibilityManager$Stub;->PERMISSIONS_notifyQuickSettingsTilesChanged:[Ljava/lang/String;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.view.accessibility.IAccessibilityManager"

    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v0, 0x5f4e5446

    if-ne v7, v0, :cond_1

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :cond_1
    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isCameraFlashNotificationRunning()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semInjectInputEventToInputFilter(Landroid/view/InputEvent;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semPerformAccessibilityButtonClick(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isActivatedMagnification()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsWindowMagnificationEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semMoveWindowMagnification(FF)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semDisableWindowMagnification()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semEnableWindowMagnification(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semGetWindowMagnificationScale()F

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semGetWindowMagnificationBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->performAccessibilityDirectAccess(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semDumpCallStack(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setMagnificationDisactivate()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsAccessibilityButtonShown()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->OnStopGestureWakeup()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->OnStartGestureWakeup()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semLockNow()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setTalkbackMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->convertPixelToDpi(F)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setScreenReaderEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getScreenReaderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isScreenReaderEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetTwoFingerGestureRecognitionEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semOpenDeviceOptions()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semRegisterAssistantMenu(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1a
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semToggleDarkScreenMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsDarkScreenMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semDisableMdnieColorFilter()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semEnableMdnieColorFilter(II)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetMdnieAccessibilityMode(IZ)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semCheckMdnieColorBlind([I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetColorBlind(ZF)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semTurnOnAccessibilityService(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semTurnOffAccessibilityService(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getA11yFeatureToTileMap(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->enableShortcutsForTargets(ZILjava/util/List;I)V

    goto/16 :goto_0

    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyQuickSettingsTilesChanged(ILjava/util/List;)V

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->attachAccessibilityOverlayToDisplay(ILandroid/view/SurfaceControl;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_2a
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isAccessibilityServiceWarningRequired(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendRestrictedDialogIntent(Ljava/lang/String;II)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isAccessibilityTargetAllowed(Ljava/lang/String;II)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->startFlashNotificationEvent(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->stopFlashNotificationSequence(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->startFlashNotificationSequence(Ljava/lang/String;ILandroid/os/IBinder;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_30
    sget-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->injectInputEventToInputFilter(Landroid/view/InputEvent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterProxyForDisplay(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerProxyForDisplay(Landroid/accessibilityservice/IAccessibilityServiceClient;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/view/accessibility/AccessibilityWindowAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setAccessibilityWindowAttributes(IIILandroid/view/accessibility/AccessibilityWindowAttributes;)V

    goto/16 :goto_0

    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setSystemAudioCaptioningUiEnabled(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isSystemAudioCaptioningUiEnabled(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setSystemAudioCaptioningEnabled(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isAudioDescriptionByDefaultEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getFocusColor()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getFocusStrokeWidth()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IMagnificationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IMagnificationConnection;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setMagnificationConnection(Landroid/view/accessibility/IMagnificationConnection;)V

    goto/16 :goto_0

    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterSystemAction(I)V

    goto/16 :goto_0

    :pswitch_3e
    sget-object v0, Landroid/app/RemoteAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerSystemAction(Landroid/app/RemoteAction;I)V

    goto/16 :goto_0

    :pswitch_3f
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getRecommendedTimeoutMillis()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getAccessibilityWindowId(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendFingerprintGesture(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->performAccessibilityShortcut(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyAccessibilityButtonVisibilityChanged(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyAccessibilityButtonClicked(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getWindowToken(II)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v13

    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto :goto_0

    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getInstalledAccessibilityServiceList(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->removeClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :pswitch_50
    sget-object v0, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V

    goto :goto_0

    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->interrupt(I)V

    nop

    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
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

.method protected blacklist performAccessibilityDirectAccess_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist performAccessibilityShortcut_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist registerProxyForDisplay_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist registerSystemAction_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist registerUiTestAutomationService_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.RETRIEVE_WINDOW_CONTENT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semDisableMdnieColorFilter_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semDisableWindowMagnification_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semEnableMdnieColorFilter_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semEnableWindowMagnification_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semGetWindowMagnificationBounds_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semGetWindowMagnificationScale_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semInjectInputEventToInputFilter_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semIsDarkScreenMode_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semIsWindowMagnificationEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semMoveWindowMagnification_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semToggleDarkScreenMode_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setMagnificationConnection_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setMagnificationDisactivate_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setPictureInPictureActionReplacingConnection_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_ACCESSIBILITY_DATA"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setScreenReaderEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setSystemAudioCaptioningEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_SYSTEM_AUDIO_CAPTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setSystemAudioCaptioningUiEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_SYSTEM_AUDIO_CAPTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist unregisterProxyForDisplay_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist unregisterSystemAction_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.class public Landroid/hardware/input/IInputManager$Default;
.super Ljava/lang/Object;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addDeviceWirelessKeyboardShare(I)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public blacklist addPortAssociation(Ljava/lang/String;I)V
    .locals 0
    .param p1, "inputPort"    # Ljava/lang/String;
    .param p2, "displayPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    return-void
.end method

.method public blacklist addUniqueIdAssociation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "inputPort"    # Ljava/lang/String;
    .param p2, "displayUniqueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 400
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelCurrentTouch()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    return-void
.end method

.method public blacklist cancelVibrate(ILandroid/os/IBinder;)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    return-void
.end method

.method public blacklist changeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    return-void
.end method

.method public blacklist checkInputFeature()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist closeLightSession(ILandroid/os/IBinder;)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    return-void
.end method

.method public blacklist connectByBtDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "addr"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    return-void
.end method

.method public blacklist disableInputDevice(I)V
    .locals 0
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist disableSensor(II)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    return-void
.end method

.method public blacklist enableInputDevice(I)V
    .locals 0
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist enableSensor(IIII)Z
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .param p3, "samplingPeriodUs"    # I
    .param p4, "maxBatchReportLatencyUs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist flushSensor(II)Z
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist forceFadeIcon(I)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    return-void
.end method

.method public blacklist getBatteryCapacity(I)I
    .locals 1
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBatteryStatus(I)I
    .locals 1
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 1
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDefaultPointerIcon()Landroid/view/PointerIcon;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDisplayIdForPointerIcon()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 1
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGlobalMetaState(I)I
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getInboundQueueLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getInputDevice(I)Landroid/view/InputDevice;
    .locals 1
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInputDeviceIds()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyCodeForKeyLocation(II)I
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "locationKeyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 1
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;
    .locals 1
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .locals 1
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLastLidEventTimeNanos()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getLidState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLightState(II)Landroid/hardware/lights/LightState;
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "lightId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLights(I)Ljava/util/List;
    .locals 1
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getScanCodeState(III)I
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "scanCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSensorList(I)[Landroid/hardware/input/InputSensorInfo;
    .locals 1
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getToolTypeForDefaultPointerIcon()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .locals 1
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVibratorIds(I)[I
    .locals 1
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasKeys(II[I[Z)Z
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "keyExists"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist injectInputEventToTarget(Landroid/view/InputEvent;II)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .param p3, "targetUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDefaultPointerIconChanged()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInTabletMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInputDeviceEnabled(I)Z
    .locals 1
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMicMuted()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUidTouched(I)Z
    .locals 1
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVibrating(I)Z
    .locals 1
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;II)Landroid/view/InputMonitor;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "filter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist monitorInputForBinder(Ljava/lang/String;II)Landroid/view/InputChannel;
    .locals 1
    .param p1, "inputChannelName"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "filter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    return-void
.end method

.method public blacklist registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    return-void
.end method

.method public blacklist registerLidStateChangedListener(Landroid/hardware/input/ISemLidStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/input/ISemLidStateChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public blacklist registerMultiFingerGestureListener(Landroid/hardware/input/IMultiFingerGestureListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/input/IMultiFingerGestureListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    return-void
.end method

.method public blacklist registerPointerIconChangedListener(Landroid/hardware/input/IPointerIconChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/input/IPointerIconChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    return-void
.end method

.method public blacklist registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/input/IInputSensorEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/input/ITabletModeChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    return-void
.end method

.method public blacklist registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerWirelessKeyboardShareChangedListener(Landroid/hardware/input/IWirelessKeyboardShareChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/input/IWirelessKeyboardShareChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    return-void
.end method

.method public blacklist removeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    return-void
.end method

.method public blacklist removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public blacklist removePortAssociation(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputPort"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    return-void
.end method

.method public blacklist removeUniqueIdAssociation(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputPort"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    return-void
.end method

.method public blacklist requestPointerCapture(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "inputChannelToken"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    return-void
.end method

.method public blacklist semGetMotionIdleTimeMillis(Z)J
    .locals 2
    .param p1, "useOnlyActionDown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist setCoverVerify(I)V
    .locals 0
    .param p1, "verify"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    return-void
.end method

.method public blacklist setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    return-void
.end method

.method public blacklist setCustomHoverIcon(Landroid/view/PointerIcon;)V
    .locals 0
    .param p1, "icon"    # Landroid/view/PointerIcon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    return-void
.end method

.method public blacklist setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .locals 0
    .param p1, "icon"    # Landroid/view/PointerIcon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    return-void
.end method

.method public blacklist setDefaultPointerIcon(ILandroid/view/PointerIcon;Z)V
    .locals 0
    .param p1, "toolType"    # I
    .param p2, "icon"    # Landroid/view/PointerIcon;
    .param p3, "forced"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    return-void
.end method

.method public blacklist setDisplayIdForPointerIcon(I)V
    .locals 0
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    return-void
.end method

.method public blacklist setEnableTSP(IZ)Z
    .locals 1
    .param p1, "cmdtype"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setHostRoleWirelessKeyboardShare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    return-void
.end method

.method public blacklist setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p4, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    return-void
.end method

.method public blacklist setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "lightIds"    # [I
    .param p3, "states"    # [Landroid/hardware/lights/LightState;
    .param p4, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    return-void
.end method

.method public blacklist setPointerIconType(I)V
    .locals 0
    .param p1, "typeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    return-void
.end method

.method public blacklist setShowAllTouches(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    return-void
.end method

.method public blacklist setStartedShutdown(Z)V
    .locals 0
    .param p1, "isStarted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    return-void
.end method

.method public blacklist setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .locals 0
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "rotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public blacklist setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "isPut"    # Z
    .param p3, "keycodes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    return-void
.end method

.method public blacklist switchDeviceWirelessKeyboardShare(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist tryPointerSpeed(I)V
    .locals 0
    .param p1, "speed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/input/IInputSensorEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    return-void
.end method

.method public blacklist unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateWirelessKeyboardShareStatus()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    return-void
.end method

.method public blacklist verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
    .locals 1
    .param p1, "ev"    # Landroid/view/InputEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "effect"    # Landroid/os/VibrationEffect;
    .param p3, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    return-void
.end method

.method public blacklist vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "vibration"    # Landroid/os/CombinedVibration;
    .param p3, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    return-void
.end method

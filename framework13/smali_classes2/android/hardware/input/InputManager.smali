.class public final Landroid/hardware/input/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputManager$SemTspCommandType;,
        Landroid/hardware/input/InputManager$OnMultiFingerGestureListenerDelegate;,
        Landroid/hardware/input/InputManager$MultiFingerGestureListener;,
        Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;,
        Landroid/hardware/input/InputManager$OnPointerIconChangedListenerDelegate;,
        Landroid/hardware/input/InputManager$PointerIconChangedListener;,
        Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;,
        Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;,
        Landroid/hardware/input/InputManager$TabletModeChangedListener;,
        Landroid/hardware/input/InputManager$OnTabletModeChangedListener;,
        Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListenerDelegate;,
        Landroid/hardware/input/InputManager$WirelessKeyboardShareChangedListener;,
        Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;,
        Landroid/hardware/input/InputManager$SemOnLidStateChangedListenerDelegate;,
        Landroid/hardware/input/InputManager$LidStateChangedListener;,
        Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;,
        Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;,
        Landroid/hardware/input/InputManager$InputDevicesChangedListener;,
        Landroid/hardware/input/InputManager$InputDeviceListener;,
        Landroid/hardware/input/InputManager$SwitchState;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_QUERY_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

.field public static final blacklist BLOCK_UNTRUSTED_TOUCHES:J = 0x96aec7eL

.field public static final blacklist BLOCK_UNTRUSTED_TOUCHES_MODES:[I

.field private static final blacklist CONVERSION_TYPE_SPEN_TO_MOUSE:I = 0x2774

.field private static final greylist-max-o DEBUG:Z = false

.field public static final blacklist DEFAULT_BLOCK_UNTRUSTED_TOUCHES_MODE:I = 0x2

.field public static final blacklist DEFAULT_MAXIMUM_OBSCURING_OPACITY_FOR_TOUCH:F = 0.8f

.field public static final greylist-max-o DEFAULT_POINTER_SPEED:I = 0x0

.field public static final greylist-max-o INJECT_INPUT_EVENT_MODE_ASYNC:I = 0x0

.field public static final greylist INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH:I = 0x2

.field public static final greylist-max-o INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT:I = 0x1

.field public static final greylist-max-o MAX_POINTER_SPEED:I = 0x7

.field public static final whitelist META_DATA_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

.field public static final greylist-max-o MIN_POINTER_SPEED:I = -0x7

.field public static final blacklist MONITOR_FILTER_ALL:I = 0xffff

.field public static final blacklist MONITOR_FILTER_FINGER:I = 0x1

.field public static final blacklist MONITOR_FILTER_KEY:I = 0x10

.field public static final blacklist MONITOR_FILTER_MOUSE:I = 0x4

.field public static final blacklist MONITOR_FILTER_SPEN:I = 0x2

.field private static final greylist-max-o MSG_DEVICE_ADDED:I = 0x1

.field private static final greylist-max-o MSG_DEVICE_CHANGED:I = 0x3

.field private static final greylist-max-o MSG_DEVICE_REMOVED:I = 0x2

.field private static final blacklist MSG_MULTI_FINGER_GESTURE:I = 0x1

.field private static final blacklist MSG_POINTERICON_CHANGED:I = 0x1

.field public static final whitelist SEM_INJECT_INPUT_EVENT_MODE_ASYNC:I = 0x0

.field public static final whitelist SEM_INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT:I = 0x1

.field public static final blacklist SEM_INPUT_FEATURE_AOT:I = 0x1

.field public static final blacklist SEM_INPUT_FEATURE_MASK:I = -0x1

.field public static final whitelist SEM_LID_STATE_CLOSED:I = 0x1

.field public static final whitelist SEM_LID_STATE_OPEN:I = 0x0

.field public static final whitelist SEM_LID_STATE_UNKNOWN:I = -0x1

.field public static final greylist-max-o SWITCH_STATE_OFF:I = 0x0

.field public static final greylist-max-o SWITCH_STATE_ON:I = 0x1

.field public static final greylist-max-o SWITCH_STATE_UNKNOWN:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "InputManager"

.field private static blacklist mDefaultPointerIcon:Landroid/view/PointerIcon;

.field private static greylist-max-o sInstance:Landroid/hardware/input/InputManager;


# instance fields
.field private final greylist-max-p mIm:Landroid/hardware/input/IInputManager;

.field private final greylist-max-o mInputDeviceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

.field private greylist-max-o mInputDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

.field private final greylist-max-o mInputDevicesLock:Ljava/lang/Object;

.field private blacklist mIsStylusFromTouchpad:Z

.field private blacklist mLidStateChangedListener:Landroid/hardware/input/InputManager$LidStateChangedListener;

.field private final blacklist mLidStateLock:Ljava/lang/Object;

.field private blacklist mMultiFingerGestureListener:Landroid/hardware/input/InputManager$MultiFingerGestureListener;

.field private final blacklist mMultiFingerGestureLock:Ljava/lang/Object;

.field private blacklist mOnMultiFingerGestureListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManager$OnMultiFingerGestureListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnPointerIconChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManager$OnPointerIconChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mOnTabletModeChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPointerIcon:Landroid/view/PointerIcon;

.field private blacklist mPointerIconChangedListener:Landroid/hardware/input/InputManager$PointerIconChangedListener;

.field private final blacklist mPointerIconLock:Ljava/lang/Object;

.field private blacklist mPointerIconType:I

.field private blacklist mSemOnLidStateChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManager$SemOnLidStateChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTabletModeChangedListener:Landroid/hardware/input/InputManager$TabletModeChangedListener;

.field private final greylist-max-o mTabletModeLock:Ljava/lang/Object;

.field private blacklist mWirelessKeyboardShareChangedListener:Landroid/hardware/input/InputManager$WirelessKeyboardShareChangedListener;

.field private final blacklist mWirelessKeyboardShareLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monInputDevicesChanged(Landroid/hardware/input/InputManager;[I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->onInputDevicesChanged([I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monLidStateChanged(Landroid/hardware/input/InputManager;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/InputManager;->onLidStateChanged(JZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monMultiFingerGesture(Landroid/hardware/input/InputManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputManager;->onMultiFingerGesture(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monPointerIconChanged(Landroid/hardware/input/InputManager;ILandroid/view/PointerIcon;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputManager;->onPointerIconChanged(ILandroid/view/PointerIcon;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTabletModeChanged(Landroid/hardware/input/InputManager;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/InputManager;->onTabletModeChanged(JZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monWirelessKeyboardShareChanged(Landroid/hardware/input/InputManager;JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/input/InputManager;->onWirelessKeyboardShareChanged(JILjava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/hardware/input/InputManager;->BLOCK_UNTRUSTED_TOUCHES_MODES:[I

    .line 416
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/input/InputManager;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method private constructor greylist-max-o <init>(Landroid/hardware/input/IInputManager;)V
    .locals 1
    .param p1, "im"    # Landroid/hardware/input/IInputManager;

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mLidStateLock:Ljava/lang/Object;

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mMultiFingerGestureLock:Ljava/lang/Object;

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mTabletModeLock:Ljava/lang/Object;

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mPointerIconLock:Ljava/lang/Object;

    .line 430
    iput-object p1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    .line 431
    return-void
.end method

.method public static blacklist clearInstance()V
    .locals 2

    .line 455
    const-class v0, Landroid/hardware/input/InputManager;

    monitor-enter v0

    .line 456
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;

    .line 457
    monitor-exit v0

    .line 458
    return-void

    .line 457
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static greylist-max-o containsDeviceId([II)Z
    .locals 2
    .param p0, "deviceIdAndGeneration"    # [I
    .param p1, "deviceId"    # I

    .line 2173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 2174
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 2175
    const/4 v1, 0x1

    return v1

    .line 2173
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2178
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 751
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 752
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 753
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    if-ne v2, p1, :cond_0

    .line 754
    return v1

    .line 752
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 757
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist findOnMultiFingerGestureListenerLocked(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    .line 740
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mOnMultiFingerGestureListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 741
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 742
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnMultiFingerGestureListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$OnMultiFingerGestureListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManager$OnMultiFingerGestureListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    if-ne v2, p1, :cond_0

    .line 743
    return v1

    .line 741
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 746
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist findOnPointerIconChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    .line 1026
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1027
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1028
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$OnPointerIconChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManager$OnPointerIconChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    if-ne v2, p1, :cond_0

    .line 1029
    return v1

    .line 1027
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1032
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private greylist-max-o findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    .line 951
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 952
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 953
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    if-ne v2, p1, :cond_0

    .line 954
    return v1

    .line 952
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 957
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist findOnWirelessKeyboardShareChangedListenerLocked(Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;

    .line 2647
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2648
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2649
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;

    if-ne v2, p1, :cond_0

    .line 2650
    return v1

    .line 2648
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2653
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist findSemOnLidStateChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    .line 862
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mSemOnLidStateChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 863
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 864
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 865
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mSemOnLidStateChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$SemOnLidStateChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManager$SemOnLidStateChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    if-ne v2, p1, :cond_0

    .line 866
    return v1

    .line 864
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 870
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static greylist getInstance()Landroid/hardware/input/InputManager;
    .locals 3

    .line 469
    const-class v0, Landroid/hardware/input/InputManager;

    monitor-enter v0

    .line 470
    :try_start_0
    sget-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 472
    :try_start_1
    new-instance v1, Landroid/hardware/input/InputManager;

    const-string v2, "input"

    .line 473
    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/input/InputManager;-><init>(Landroid/hardware/input/IInputManager;)V

    sput-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    goto :goto_0

    .line 474
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 478
    .end local v1    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_0
    :goto_0
    sget-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;

    monitor-exit v0

    return-object v1

    .line 479
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private greylist hidden_setPointerIconType(I)V
    .locals 0
    .param p1, "iconId"    # I

    .line 1808
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 1809
    return-void
.end method

.method private blacklist initializeLidStateListenerLocked()V
    .locals 3

    .line 851
    new-instance v0, Landroid/hardware/input/InputManager$LidStateChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManager$LidStateChangedListener;-><init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$LidStateChangedListener-IA;)V

    .line 853
    .local v0, "listener":Landroid/hardware/input/InputManager$LidStateChangedListener;
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerLidStateChangedListener(Landroid/hardware/input/ISemLidStateChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    nop

    .line 857
    iput-object v0, p0, Landroid/hardware/input/InputManager;->mLidStateChangedListener:Landroid/hardware/input/InputManager$LidStateChangedListener;

    .line 858
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManager;->mSemOnLidStateChangedListeners:Ljava/util/List;

    .line 859
    return-void

    .line 854
    :catch_0
    move-exception v1

    .line 855
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist initializeMultiFingerGestureListenerLocked()V
    .locals 3

    .line 729
    new-instance v0, Landroid/hardware/input/InputManager$MultiFingerGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManager$MultiFingerGestureListener;-><init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$MultiFingerGestureListener-IA;)V

    .line 731
    .local v0, "listener":Landroid/hardware/input/InputManager$MultiFingerGestureListener;
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerMultiFingerGestureListener(Landroid/hardware/input/IMultiFingerGestureListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    nop

    .line 735
    iput-object v0, p0, Landroid/hardware/input/InputManager;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$MultiFingerGestureListener;

    .line 736
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManager;->mOnMultiFingerGestureListeners:Ljava/util/List;

    .line 737
    return-void

    .line 732
    :catch_0
    move-exception v1

    .line 733
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist initializePointerIconChangedListenerLocked()V
    .locals 3

    .line 1015
    new-instance v0, Landroid/hardware/input/InputManager$PointerIconChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManager$PointerIconChangedListener;-><init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$PointerIconChangedListener-IA;)V

    .line 1017
    .local v0, "listener":Landroid/hardware/input/InputManager$PointerIconChangedListener;
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerPointerIconChangedListener(Landroid/hardware/input/IPointerIconChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    nop

    .line 1021
    iput-object v0, p0, Landroid/hardware/input/InputManager;->mPointerIconChangedListener:Landroid/hardware/input/InputManager$PointerIconChangedListener;

    .line 1022
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManager;->mOnPointerIconChangedListeners:Ljava/util/List;

    .line 1023
    return-void

    .line 1018
    :catch_0
    move-exception v1

    .line 1019
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private greylist-max-o initializeTabletModeListenerLocked()V
    .locals 3

    .line 940
    new-instance v0, Landroid/hardware/input/InputManager$TabletModeChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManager$TabletModeChangedListener;-><init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$TabletModeChangedListener-IA;)V

    .line 942
    .local v0, "listener":Landroid/hardware/input/InputManager$TabletModeChangedListener;
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    nop

    .line 946
    iput-object v0, p0, Landroid/hardware/input/InputManager;->mTabletModeChangedListener:Landroid/hardware/input/InputManager$TabletModeChangedListener;

    .line 947
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    .line 948
    return-void

    .line 943
    :catch_0
    move-exception v1

    .line 944
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist initializeWirelessKeyboardShareListenerLocked()V
    .locals 3

    .line 2634
    new-instance v0, Landroid/hardware/input/InputManager$WirelessKeyboardShareChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManager$WirelessKeyboardShareChangedListener;-><init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$WirelessKeyboardShareChangedListener-IA;)V

    .line 2637
    .local v0, "listener":Landroid/hardware/input/InputManager$WirelessKeyboardShareChangedListener;
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerWirelessKeyboardShareChangedListener(Landroid/hardware/input/IWirelessKeyboardShareChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2640
    nop

    .line 2641
    iput-object v0, p0, Landroid/hardware/input/InputManager;->mWirelessKeyboardShareChangedListener:Landroid/hardware/input/InputManager$WirelessKeyboardShareChangedListener;

    .line 2642
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManager;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    .line 2643
    return-void

    .line 2638
    :catch_0
    move-exception v1

    .line 2639
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist mappingToMousePointer(I)I
    .locals 1
    .param p1, "iconId"    # I

    .line 2853
    packed-switch p1, :pswitch_data_0

    .line 2866
    :pswitch_0
    const/16 v0, 0x4e20

    if-le p1, v0, :cond_0

    .line 2867
    add-int/lit16 v0, p1, -0x4e20

    add-int/lit16 v0, v0, 0x2774

    return v0

    .line 2864
    :pswitch_1
    const/16 v0, 0x278d

    return v0

    .line 2862
    :pswitch_2
    const/16 v0, 0x278c

    return v0

    .line 2860
    :pswitch_3
    const/16 v0, 0x278b

    return v0

    .line 2858
    :pswitch_4
    const/16 v0, 0x278a

    return v0

    .line 2856
    :pswitch_5
    const/16 v0, 0x2789

    return v0

    .line 2869
    :cond_0
    return p1

    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private greylist-max-o onInputDevicesChanged([I)V
    .locals 8
    .param p1, "deviceIdAndGeneration"    # [I

    .line 2126
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2127
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_1

    .line 2128
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2129
    .local v2, "deviceId":I
    invoke-static {p1, v2}, Landroid/hardware/input/InputManager;->containsDeviceId([II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2133
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2134
    const/4 v3, 0x2

    invoke-direct {p0, v3, v2}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V

    .line 2136
    .end local v2    # "deviceId":I
    :cond_0
    goto :goto_0

    .line 2138
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 2139
    aget v2, p1, v1

    .line 2140
    .restart local v2    # "deviceId":I
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 2141
    .local v3, "index":I
    const/4 v4, 0x0

    if-ltz v3, :cond_3

    .line 2142
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InputDevice;

    .line 2143
    .local v5, "device":Landroid/view/InputDevice;
    if-eqz v5, :cond_2

    .line 2144
    add-int/lit8 v6, v1, 0x1

    aget v6, p1, v6

    .line 2145
    .local v6, "generation":I
    invoke-virtual {v5}, Landroid/view/InputDevice;->getGeneration()I

    move-result v7

    if-eq v7, v6, :cond_2

    .line 2149
    iget-object v7, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v7, v3, v4}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 2150
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V

    .line 2153
    .end local v5    # "device":Landroid/view/InputDevice;
    .end local v6    # "generation":I
    :cond_2
    goto :goto_2

    .line 2157
    :cond_3
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2158
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V

    .line 2138
    .end local v2    # "deviceId":I
    .end local v3    # "index":I
    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 2161
    .end local v1    # "i":I
    :cond_4
    monitor-exit v0

    .line 2162
    return-void

    .line 2161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onLidStateChanged(JZ)V
    .locals 4
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .line 2188
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2189
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mSemOnLidStateChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2190
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2191
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mSemOnLidStateChangedListeners:Ljava/util/List;

    .line 2192
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager$SemOnLidStateChangedListenerDelegate;

    .line 2193
    .local v3, "listener":Landroid/hardware/input/InputManager$SemOnLidStateChangedListenerDelegate;
    invoke-virtual {v3, p1, p2, p3}, Landroid/hardware/input/InputManager$SemOnLidStateChangedListenerDelegate;->sendLidStateChanged(JZ)V

    .line 2190
    .end local v3    # "listener":Landroid/hardware/input/InputManager$SemOnLidStateChangedListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2195
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 2197
    return-void

    .line 2195
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onMultiFingerGesture(II)V
    .locals 5
    .param p1, "behavior"    # I
    .param p2, "reserved"    # I

    .line 2351
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2352
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mOnMultiFingerGestureListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2353
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2354
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mOnMultiFingerGestureListeners:Ljava/util/List;

    .line 2355
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager$OnMultiFingerGestureListenerDelegate;

    .line 2356
    .local v3, "listener":Landroid/hardware/input/InputManager$OnMultiFingerGestureListenerDelegate;
    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, p2}, Landroid/hardware/input/InputManager$OnMultiFingerGestureListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManager$OnMultiFingerGestureListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 2353
    nop

    .end local v3    # "listener":Landroid/hardware/input/InputManager$OnMultiFingerGestureListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2359
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 2360
    return-void

    .line 2359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onPointerIconChanged(ILandroid/view/PointerIcon;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "icon"    # Landroid/view/PointerIcon;

    .line 2332
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2333
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2334
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2335
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager$OnPointerIconChangedListenerDelegate;

    .line 2336
    .local v3, "listener":Landroid/hardware/input/InputManager$OnPointerIconChangedListenerDelegate;
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v5, p1, v4, p2}, Landroid/hardware/input/InputManager$OnPointerIconChangedListenerDelegate;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManager$OnPointerIconChangedListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 2334
    nop

    .end local v3    # "listener":Landroid/hardware/input/InputManager$OnPointerIconChangedListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2338
    .end local v2    # "i":I
    :cond_0
    iput p1, p0, Landroid/hardware/input/InputManager;->mPointerIconType:I

    .line 2339
    iput-object p2, p0, Landroid/hardware/input/InputManager;->mPointerIcon:Landroid/view/PointerIcon;

    .line 2340
    .end local v1    # "numListeners":I
    monitor-exit v0

    .line 2341
    return-void

    .line 2340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o onTabletModeChanged(JZ)V
    .locals 4
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .line 2205
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2206
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2207
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2208
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    .line 2209
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;

    .line 2210
    .local v3, "listener":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    invoke-virtual {v3, p1, p2, p3}, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->sendTabletModeChanged(JZ)V

    .line 2207
    .end local v3    # "listener":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2212
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 2213
    return-void

    .line 2212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onWirelessKeyboardShareChanged(JILjava/lang/String;)V
    .locals 4
    .param p1, "whenNanos"    # J
    .param p3, "index"    # I
    .param p4, "contents"    # Ljava/lang/String;

    .line 2662
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2663
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2664
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2665
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    .line 2666
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListenerDelegate;

    .line 2667
    .local v3, "listener":Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListenerDelegate;
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListenerDelegate;->sendWirelessKeyboardShareChanged(JILjava/lang/String;)V

    .line 2664
    .end local v3    # "listener":Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2669
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 2670
    return-void

    .line 2669
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o populateInputDevicesLocked()V
    .locals 5

    .line 2093
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2094
    new-instance v0, Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManager$InputDevicesChangedListener;-><init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$InputDevicesChangedListener-IA;)V

    .line 2096
    .local v0, "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v2, v0}, Landroid/hardware/input/IInputManager;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2099
    nop

    .line 2100
    iput-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    goto :goto_0

    .line 2097
    :catch_0
    move-exception v1

    .line 2098
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2103
    .end local v0    # "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 2106
    :try_start_1
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getInputDeviceIds()[I

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2109
    .local v0, "ids":[I
    nop

    .line 2111
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    .line 2113
    if-eqz v0, :cond_1

    .line 2114
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2115
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    aget v4, v0, v2

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2114
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2107
    .end local v0    # "ids":[I
    .end local v2    # "i":I
    :catch_1
    move-exception v0

    .line 2108
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2119
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method public static blacklist resetInstance(Landroid/hardware/input/IInputManager;)Landroid/hardware/input/InputManager;
    .locals 2
    .param p0, "inputManagerService"    # Landroid/hardware/input/IInputManager;

    .line 442
    const-class v0, Landroid/hardware/input/InputManager;

    monitor-enter v0

    .line 443
    :try_start_0
    new-instance v1, Landroid/hardware/input/InputManager;

    invoke-direct {v1, p0}, Landroid/hardware/input/InputManager;-><init>(Landroid/hardware/input/IInputManager;)V

    sput-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;

    .line 444
    monitor-exit v0

    return-object v1

    .line 445
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o sendMessageToInputDeviceListenersLocked(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "deviceId"    # I

    .line 2165
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2166
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2167
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    .line 2168
    .local v2, "listener":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 2166
    .end local v2    # "listener":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2170
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addDeviceWirelessKeyboardShare(I)Z
    .locals 3
    .param p1, "index"    # I

    .line 3213
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->addDeviceWirelessKeyboardShare(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3214
    :catch_0
    move-exception v0

    .line 3215
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not call addDeviceWirelessKeyboardShare()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1226
    if-eqz p1, :cond_1

    .line 1229
    if-eqz p2, :cond_0

    .line 1234
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    nop

    .line 1238
    return-void

    .line 1235
    :catch_0
    move-exception v0

    .line 1236
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1230
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addPortAssociation(Ljava/lang/String;I)V
    .locals 2
    .param p1, "inputPort"    # Ljava/lang/String;
    .param p2, "displayPort"    # I

    .line 2035
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->addPortAssociation(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2038
    nop

    .line 2039
    return-void

    .line 2036
    :catch_0
    move-exception v0

    .line 2037
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist addUniqueIdAssociation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "inputPort"    # Ljava/lang/String;
    .param p2, "displayUniqueId"    # Ljava/lang/String;

    .line 2070
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->addUniqueIdAssociation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2073
    nop

    .line 2074
    return-void

    .line 2071
    :catch_0
    move-exception v0

    .line 2072
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist cancelCurrentTouch()V
    .locals 2

    .line 2457
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->cancelCurrentTouch()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2460
    nop

    .line 2461
    return-void

    .line 2458
    :catch_0
    move-exception v0

    .line 2459
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist cancelVibrate(ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 2274
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2277
    nop

    .line 2278
    return-void

    .line 2275
    :catch_0
    move-exception v0

    .line 2276
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist changeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 3197
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->changeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3200
    goto :goto_0

    .line 3198
    :catch_0
    move-exception v0

    .line 3199
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not call changeDeviceWirelessKeyboardShare()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist closeLightSession(ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 2445
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->closeLightSession(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2448
    nop

    .line 2449
    return-void

    .line 2446
    :catch_0
    move-exception v0

    .line 2447
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist connectByBtDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "addr"    # Landroid/bluetooth/BluetoothDevice;

    .line 3259
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->connectByBtDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3262
    goto :goto_0

    .line 3260
    :catch_0
    move-exception v0

    .line 3261
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not call connectByBtDevice()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3264
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public greylist-max-o deviceHasKeys(I[I)[Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "keyCodes"    # [I

    .line 1554
    array-length v0, p2

    new-array v0, v0, [Z

    .line 1556
    .local v0, "ret":[Z
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/16 v2, -0x100

    invoke-interface {v1, p1, v2, p2, v0}, Landroid/hardware/input/IInputManager;->hasKeys(II[I[Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1559
    nop

    .line 1560
    return-object v0

    .line 1557
    :catch_0
    move-exception v1

    .line 1558
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o deviceHasKeys([I)[Z
    .locals 1
    .param p1, "keyCodes"    # [I

    .line 1538
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManager;->deviceHasKeys(I[I)[Z

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o disableInputDevice(I)V
    .locals 3
    .param p1, "id"    # I

    .line 614
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->disableInputDevice(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    nop

    .line 619
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not disable input device with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist disableSensor(II)V
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I

    .line 1952
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->disableSensor(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1955
    nop

    .line 1956
    return-void

    .line 1953
    :catch_0
    move-exception v0

    .line 1954
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o enableInputDevice(I)V
    .locals 3
    .param p1, "id"    # I

    .line 595
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->enableInputDevice(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    nop

    .line 600
    return-void

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not enable input device with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist enableSensor(IIII)Z
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .param p3, "samplingPeriodUs"    # I
    .param p4, "maxBatchReportLatencyUs"    # I

    .line 1938
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/input/IInputManager;->enableSensor(IIII)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1940
    :catch_0
    move-exception v0

    .line 1941
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist flushSensor(II)Z
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I

    .line 1965
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->flushSensor(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1966
    :catch_0
    move-exception v0

    .line 1967
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist forceFadeIcon(I)V
    .locals 3
    .param p1, "type"    # I

    .line 3155
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->forceFadeIcon(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3158
    goto :goto_0

    .line 3156
    :catch_0
    move-exception v0

    .line 3157
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not call forceFadeIcon()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist getBatteryCapacity(I)I
    .locals 2
    .param p1, "deviceId"    # I

    .line 2017
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getBatteryCapacity(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2018
    :catch_0
    move-exception v0

    .line 2019
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getBatteryStatus(I)I
    .locals 2
    .param p1, "deviceId"    # I

    .line 2004
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getBatteryStatus(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2005
    :catch_0
    move-exception v0

    .line 2006
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getBlockUntrustedTouchesMode(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1495
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "block_untrusted_touches"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1497
    .local v0, "mode":I
    sget-object v1, Landroid/hardware/input/InputManager;->BLOCK_UNTRUSTED_TOUCHES_MODES:[I

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown block untrusted touches feature mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", using default "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "InputManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    return v2

    .line 1502
    :cond_0
    return v0
.end method

.method public greylist-max-o getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1154
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1200
    if-eqz p1, :cond_0

    .line 1205
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1201
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getGlobalMetaState(I)I
    .locals 3
    .param p1, "type"    # I

    .line 3140
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getGlobalMetaState(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3141
    :catch_0
    move-exception v0

    .line 3142
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not call getGlobalMetaState()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getInboundQueueLength()I
    .locals 2

    .line 3004
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getInboundQueueLength()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3005
    :catch_0
    move-exception v0

    .line 3006
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist getInputDevice(I)Landroid/view/InputDevice;
    .locals 5
    .param p1, "id"    # I

    .line 488
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    .line 491
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 492
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 493
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 496
    :cond_0
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-nez v2, :cond_1

    .line 499
    :try_start_1
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v3, p1}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 502
    nop

    .line 503
    if-eqz v2, :cond_1

    .line 504
    :try_start_2
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_0

    .line 500
    :catch_0
    move-exception v3

    .line 501
    .local v3, "ex":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/hardware/input/InputManager;
    .end local p1    # "id":I
    throw v4

    .line 507
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManager;
    .restart local p1    # "id":I
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v2

    .line 508
    .end local v1    # "index":I
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist getInputDeviceBatteryState(IZ)Landroid/hardware/input/InputDeviceBatteryState;
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "hasBattery"    # Z

    .line 2368
    new-instance v0, Landroid/hardware/input/InputDeviceBatteryState;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/input/InputDeviceBatteryState;-><init>(Landroid/hardware/input/InputManager;IZ)V

    return-object v0
.end method

.method public greylist-max-o getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;
    .locals 7
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 518
    if-eqz p1, :cond_4

    .line 522
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    .line 525
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 526
    .local v1, "numDevices":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 527
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice;

    .line 528
    .local v3, "inputDevice":Landroid/view/InputDevice;
    if-nez v3, :cond_1

    .line 529
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    .local v4, "id":I
    :try_start_1
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v5, v4}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v5

    .line 534
    nop

    .line 535
    if-nez v3, :cond_0

    .line 536
    goto :goto_2

    .line 538
    :cond_0
    :try_start_2
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_1

    .line 532
    :catch_0
    move-exception v5

    .line 533
    .local v5, "ex":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    .end local p0    # "this":Landroid/hardware/input/InputManager;
    .end local p1    # "descriptor":Ljava/lang/String;
    throw v6

    .line 540
    .end local v4    # "id":I
    .end local v5    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManager;
    .restart local p1    # "descriptor":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 541
    monitor-exit v0

    return-object v3

    .line 526
    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 544
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 545
    .end local v1    # "numDevices":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 519
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "descriptor must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getInputDeviceIds()[I
    .locals 5

    .line 553
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    .line 556
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 557
    .local v1, "count":I
    new-array v2, v1, [I

    .line 558
    .local v2, "ids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 559
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 558
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 561
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0

    return-object v2

    .line 562
    .end local v1    # "count":I
    .end local v2    # "ids":[I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getInputDeviceLightsManager(I)Landroid/hardware/lights/LightsManager;
    .locals 1
    .param p1, "deviceId"    # I

    .line 2378
    new-instance v0, Landroid/hardware/input/InputDeviceLightsManager;

    invoke-direct {v0, p0, p1}, Landroid/hardware/input/InputDeviceLightsManager;-><init>(Landroid/hardware/input/InputManager;I)V

    return-object v0
.end method

.method public blacklist getInputDeviceSensorManager(I)Landroid/hardware/SensorManager;
    .locals 1
    .param p1, "deviceId"    # I

    .line 2320
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    if-nez v0, :cond_0

    .line 2321
    new-instance v0, Landroid/hardware/input/InputDeviceSensorManager;

    invoke-direct {v0, p0}, Landroid/hardware/input/InputDeviceSensorManager;-><init>(Landroid/hardware/input/InputManager;)V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    .line 2323
    :cond_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->getSensorManager(I)Landroid/hardware/SensorManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInputDeviceVibrator(II)Landroid/os/Vibrator;
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "vibratorId"    # I

    .line 2221
    new-instance v0, Landroid/hardware/input/InputDeviceVibrator;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/input/InputDeviceVibrator;-><init>(Landroid/hardware/input/InputManager;II)V

    return-object v0
.end method

.method public blacklist getInputDeviceVibratorManager(I)Landroid/os/VibratorManager;
    .locals 1
    .param p1, "deviceId"    # I

    .line 2232
    new-instance v0, Landroid/hardware/input/InputDeviceVibratorManager;

    invoke-direct {v0, p0, p1}, Landroid/hardware/input/InputDeviceVibratorManager;-><init>(Landroid/hardware/input/InputManager;I)V

    return-object v0
.end method

.method public blacklist getKeyCodeForKeyLocation(II)I
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "locationKeyCode"    # I

    .line 1586
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->getKeyCodeForKeyLocation(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1587
    :catch_0
    move-exception v0

    .line 1588
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 2
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1130
    if-eqz p1, :cond_0

    .line 1135
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1136
    :catch_0
    move-exception v0

    .line 1137
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1131
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getKeyboardLayoutDescriptorsForInputDevice(Landroid/view/InputDevice;)Ljava/util/List;
    .locals 6
    .param p1, "device"    # Landroid/view/InputDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InputDevice;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1088
    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/input/InputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v0

    .line 1089
    .local v0, "layouts":[Landroid/hardware/input/KeyboardLayout;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 1091
    .local v4, "kl":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    .end local v4    # "kl":Landroid/hardware/input/KeyboardLayout;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1093
    :cond_0
    return-object v1
.end method

.method public blacklist getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "inputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "inputMethodSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 1287
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1289
    :catch_0
    move-exception v0

    .line 1290
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 2

    .line 1066
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1114
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLastLidEventTimeNanos()J
    .locals 3

    .line 2948
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getLastLidEventTimeNanos()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 2949
    :catch_0
    move-exception v0

    .line 2950
    .local v0, "ex":Landroid/os/RemoteException;
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method blacklist getLightState(ILandroid/hardware/lights/Light;)Landroid/hardware/lights/LightState;
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "light"    # Landroid/hardware/lights/Light;

    .line 2399
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/input/IInputManager;->getLightState(II)Landroid/hardware/lights/LightState;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2400
    :catch_0
    move-exception v0

    .line 2401
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getLights(I)Ljava/util/List;
    .locals 2
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    .line 2387
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getLights(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2388
    :catch_0
    move-exception v0

    .line 2389
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMaximumObscuringOpacityForTouch()F
    .locals 4

    .line 1440
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1441
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "maximum_obscuring_opacity_for_touch"

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public greylist-max-o getPointerSpeed(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1373
    const/4 v0, 0x0

    .line 1375
    .local v0, "speed":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_speed"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1378
    goto :goto_0

    .line 1377
    :catch_0
    move-exception v1

    .line 1379
    :goto_0
    return v0
.end method

.method public blacklist getSensorList(I)[Landroid/hardware/input/InputSensorInfo;
    .locals 2
    .param p1, "deviceId"    # I

    .line 1924
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1925
    :catch_0
    move-exception v0

    .line 1926
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .locals 2
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    .line 1332
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1333
    :catch_0
    move-exception v0

    .line 1334
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getVibratorIds(I)[I
    .locals 2
    .param p1, "deviceId"    # I

    .line 2241
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getVibratorIds(I)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2242
    :catch_0
    move-exception v0

    .line 2243
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .line 1661
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;II)Z
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .param p3, "targetUid"    # I

    .line 1622
    if-eqz p1, :cond_2

    .line 1625
    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 1628
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1632
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1633
    :catch_0
    move-exception v0

    .line 1634
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1623
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o isInTabletMode()I
    .locals 2

    .line 770
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->isInTabletMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isInputDeviceEnabled(I)Z
    .locals 3
    .param p1, "id"    # I

    .line 576
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->isInputDeviceEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not check enabled status of input device with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isMicMuted()I
    .locals 2

    .line 1046
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->isMicMuted()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isUidTouched(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 2965
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->isUidTouched(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2966
    :catch_0
    move-exception v0

    .line 2967
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method blacklist isVibrating(I)Z
    .locals 2
    .param p1, "deviceId"    # I

    .line 2285
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->isVibrating(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2286
    :catch_0
    move-exception v0

    .line 2287
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 1864
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    const v2, 0xffff

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/hardware/input/IInputManager;->monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;II)Landroid/view/InputMonitor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1866
    :catch_0
    move-exception v0

    .line 1867
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist monitorGestureInput(Ljava/lang/String;II)Landroid/view/InputMonitor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "filter"    # I

    .line 1880
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/input/IInputManager;->monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;II)Landroid/view/InputMonitor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1881
    :catch_0
    move-exception v0

    .line 1882
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;
    .locals 2
    .param p1, "inputChannelName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 1894
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const v1, 0xffff

    invoke-interface {v0, p1, p2, v1}, Landroid/hardware/input/IInputManager;->monitorInputForBinder(Ljava/lang/String;II)Landroid/view/InputChannel;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1895
    :catch_0
    move-exception v0

    .line 1896
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;
    .locals 2
    .param p1, "inputChannelName"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "filter"    # I

    .line 1908
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->monitorInputForBinder(Ljava/lang/String;II)Landroid/view/InputChannel;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1909
    :catch_0
    move-exception v0

    .line 1910
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method blacklist openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 2433
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2436
    nop

    .line 2437
    return-void

    .line 2434
    :catch_0
    move-exception v0

    .line 2435
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 632
    if-eqz p1, :cond_1

    .line 636
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    .line 638
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v1

    .line 639
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 640
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;-><init>(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    .end local v1    # "index":I
    :cond_0
    monitor-exit v0

    .line 643
    return-void

    .line 642
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 633
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 904
    if-eqz p1, :cond_2

    .line 907
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 908
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 909
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->initializeTabletModeListenerLocked()V

    .line 911
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I

    move-result v1

    .line 912
    .local v1, "idx":I
    if-gez v1, :cond_1

    .line 913
    new-instance v2, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;

    invoke-direct {v2, p1, p2}, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V

    .line 915
    .local v2, "d":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    :cond_1
    monitor-exit v0

    .line 918
    return-void

    .line 917
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 905
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerOnWirelessKeyboardShareChangedListener(Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2596
    if-eqz p1, :cond_2

    .line 2599
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2600
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 2601
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->initializeWirelessKeyboardShareListenerLocked()V

    .line 2603
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findOnWirelessKeyboardShareChangedListenerLocked(Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;)I

    move-result v1

    .line 2604
    .local v1, "idx":I
    if-gez v1, :cond_1

    .line 2605
    new-instance v2, Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListenerDelegate;

    invoke-direct {v2, p1, p2}, Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;Landroid/os/Handler;)V

    .line 2607
    .local v2, "d":Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListenerDelegate;
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2609
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListenerDelegate;
    :cond_1
    monitor-exit v0

    .line 2610
    return-void

    .line 2609
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2597
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z
    .locals 2
    .param p1, "listener"    # Landroid/hardware/input/IInputSensorEventListener;

    .line 1978
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1979
    :catch_0
    move-exception v0

    .line 1980
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;

    .line 2296
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2297
    :catch_0
    move-exception v0

    .line 2298
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 3183
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->removeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3186
    goto :goto_0

    .line 3184
    :catch_0
    move-exception v0

    .line 3185
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not call removeDeviceWirelessKeyboardShare()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public greylist-max-o removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1256
    if-eqz p1, :cond_1

    .line 1259
    if-eqz p2, :cond_0

    .line 1264
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    nop

    .line 1268
    return-void

    .line 1265
    :catch_0
    move-exception v0

    .line 1266
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1260
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1257
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removePortAssociation(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputPort"    # Ljava/lang/String;

    .line 2052
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->removePortAssociation(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2055
    nop

    .line 2056
    return-void

    .line 2053
    :catch_0
    move-exception v0

    .line 2054
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeUniqueIdAssociation(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputPort"    # Ljava/lang/String;

    .line 2086
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->removeUniqueIdAssociation(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2089
    nop

    .line 2090
    return-void

    .line 2087
    :catch_0
    move-exception v0

    .line 2088
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist requestLights(ILandroid/hardware/lights/LightsRequest;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "request"    # Landroid/hardware/lights/LightsRequest;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 2412
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/lights/LightsRequest;->getLights()Ljava/util/List;

    move-result-object v0

    .line 2413
    .local v0, "lightIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 2414
    .local v1, "lightIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 2415
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 2414
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2417
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/lights/LightsRequest;->getLightStates()Ljava/util/List;

    move-result-object v2

    .line 2418
    .local v2, "lightStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/LightState;>;"
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    .line 2419
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/hardware/lights/LightState;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/lights/LightState;

    .line 2418
    invoke-interface {v3, p1, v1, v4, p3}, Landroid/hardware/input/IInputManager;->setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2423
    .end local v0    # "lightIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "lightIds":[I
    .end local v2    # "lightStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/LightState;>;"
    nop

    .line 2424
    return-void

    .line 2421
    :catch_0
    move-exception v0

    .line 2422
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o requestPointerCapture(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    .line 1849
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->requestPointerCapture(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1852
    nop

    .line 1853
    return-void

    .line 1850
    :catch_0
    move-exception v0

    .line 1851
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist semCheckInputFeature()I
    .locals 2

    .line 886
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->checkInputFeature()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist semGetLidState()I
    .locals 2

    .line 788
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getLidState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist semGetMotionIdleTimeMillis()J
    .locals 2

    .line 3030
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/hardware/input/IInputManager;->semGetMotionIdleTimeMillis(Z)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 3031
    :catch_0
    move-exception v0

    .line 3032
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist semGetScanCodeState(III)I
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "scanCode"    # I

    .line 2989
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->getScanCodeState(III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2990
    :catch_0
    move-exception v0

    .line 2991
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist semInjectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .line 1689
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method public blacklist semInjectInputEvent(Landroid/view/InputEvent;II)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .param p3, "targetUid"    # I

    .line 1715
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method public whitelist semRegisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 806
    if-eqz p1, :cond_2

    .line 810
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 811
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mSemOnLidStateChangedListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 812
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->initializeLidStateListenerLocked()V

    .line 814
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findSemOnLidStateChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;)I

    move-result v1

    .line 815
    .local v1, "idx":I
    if-gez v1, :cond_1

    .line 816
    new-instance v2, Landroid/hardware/input/InputManager$SemOnLidStateChangedListenerDelegate;

    invoke-direct {v2, p1, p2}, Landroid/hardware/input/InputManager$SemOnLidStateChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V

    .line 818
    .local v2, "d":Landroid/hardware/input/InputManager$SemOnLidStateChangedListenerDelegate;
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mSemOnLidStateChangedListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/hardware/input/InputManager$SemOnLidStateChangedListenerDelegate;
    :cond_1
    monitor-exit v0

    .line 822
    return-void

    .line 820
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 807
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist semRegisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 682
    if-eqz p1, :cond_2

    .line 686
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$MultiFingerGestureListener;

    if-nez v1, :cond_0

    .line 688
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->initializeMultiFingerGestureListenerLocked()V

    .line 690
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findOnMultiFingerGestureListenerLocked(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)I

    move-result v1

    .line 691
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 692
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnMultiFingerGestureListeners:Ljava/util/List;

    new-instance v3, Landroid/hardware/input/InputManager$OnMultiFingerGestureListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/input/InputManager$OnMultiFingerGestureListenerDelegate;-><init>(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    .end local v1    # "index":I
    :cond_1
    monitor-exit v0

    .line 697
    return-void

    .line 695
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 683
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semRegisterOnPointerIconChangedListener(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 974
    if-eqz p1, :cond_2

    .line 978
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    .line 979
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mPointerIconChangedListener:Landroid/hardware/input/InputManager$PointerIconChangedListener;

    if-nez v1, :cond_0

    .line 980
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->initializePointerIconChangedListenerLocked()V

    .line 982
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findOnPointerIconChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)I

    move-result v1

    .line 983
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 984
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnPointerIconChangedListeners:Ljava/util/List;

    new-instance v3, Landroid/hardware/input/InputManager$OnPointerIconChangedListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/input/InputManager$OnPointerIconChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;Landroid/os/Handler;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    .end local v1    # "index":I
    :cond_1
    monitor-exit v0

    .line 987
    return-void

    .line 986
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 975
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semSetTspEnabled(Landroid/hardware/input/InputManager$SemTspCommandType;Z)Z
    .locals 4
    .param p1, "cmdtype"    # Landroid/hardware/input/InputManager$SemTspCommandType;
    .param p2, "enabled"    # Z

    .line 3049
    const-string v0, "InputManager"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {p1}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    move-result v3

    invoke-interface {v2, v3, p2}, Landroid/hardware/input/IInputManager;->setEnableTSP(IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3053
    :catch_0
    move-exception v2

    .line 3054
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v3, "SemTspCommandType should not be null"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    return v1

    .line 3050
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 3051
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "Could not call setEnableTSPforSpayGesture()"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    return v1
.end method

.method public whitelist semSetWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "isPut"    # Z
    .param p3, "keycodes"    # Ljava/lang/String;

    .line 3072
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3074
    goto :goto_0

    .line 3073
    :catch_0
    move-exception v0

    .line 3076
    :goto_0
    return-void
.end method

.method public whitelist semUnregisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    .line 833
    if-eqz p1, :cond_1

    .line 837
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 838
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findSemOnLidStateChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;)I

    move-result v1

    .line 839
    .local v1, "idx":I
    if-ltz v1, :cond_0

    .line 840
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mSemOnLidStateChangedListeners:Ljava/util/List;

    .line 841
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$SemOnLidStateChangedListenerDelegate;

    .line 842
    .local v2, "d":Landroid/hardware/input/InputManager$SemOnLidStateChangedListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManager$SemOnLidStateChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 844
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/hardware/input/InputManager$SemOnLidStateChangedListenerDelegate;
    :cond_0
    monitor-exit v0

    .line 846
    return-void

    .line 844
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 834
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist semUnregisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    .line 710
    if-eqz p1, :cond_1

    .line 714
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 715
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findOnMultiFingerGestureListenerLocked(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)I

    move-result v1

    .line 716
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 717
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnMultiFingerGestureListeners:Ljava/util/List;

    .line 718
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$OnMultiFingerGestureListenerDelegate;

    .line 719
    .local v2, "d":Landroid/hardware/input/InputManager$OnMultiFingerGestureListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManager$OnMultiFingerGestureListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 720
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mOnMultiFingerGestureListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 722
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/input/InputManager$OnMultiFingerGestureListenerDelegate;
    :cond_0
    monitor-exit v0

    .line 724
    return-void

    .line 722
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 711
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semUnregisterOnPointerIconChangedListener(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    .line 1000
    if-eqz p1, :cond_1

    .line 1004
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1005
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findOnPointerIconChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)I

    move-result v1

    .line 1006
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 1007
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$OnPointerIconChangedListenerDelegate;

    .line 1008
    .local v2, "d":Landroid/hardware/input/InputManager$OnPointerIconChangedListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManager$OnPointerIconChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1009
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1011
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/input/InputManager$OnPointerIconChangedListenerDelegate;
    :cond_0
    monitor-exit v0

    .line 1012
    return-void

    .line 1011
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1001
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setBlockUntrustedTouchesMode(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 1519
    sget-object v0, Landroid/hardware/input/InputManager;->BLOCK_UNTRUSTED_TOUCHES_MODES:[I

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1522
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "block_untrusted_touches"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1524
    return-void

    .line 1520
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid feature mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCoverVerify(I)V
    .locals 3
    .param p1, "verify"    # I

    .line 3125
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setCoverVerify(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3128
    goto :goto_0

    .line 3126
    :catch_0
    move-exception v0

    .line 3127
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not call setCoverVerify()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public greylist-max-o setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1176
    if-eqz p1, :cond_1

    .line 1179
    if-eqz p2, :cond_0

    .line 1184
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    nop

    .line 1189
    return-void

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1180
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1177
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "identifier must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .locals 3
    .param p1, "icon"    # Landroid/view/PointerIcon;

    .line 1816
    :try_start_0
    invoke-virtual {p1}, Landroid/view/PointerIcon;->getType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "InputManager"

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1825
    :sswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomPointerIcon SPEN CUSTOM, callingPid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1826
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1825
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setCustomHoverIcon(Landroid/view/PointerIcon;)V

    goto :goto_0

    .line 1819
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomPointerIcon MOUSE CUSTOM, callingPid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1820
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1819
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setCustomPointerIcon(Landroid/view/PointerIcon;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1822
    nop

    .line 1833
    :goto_0
    nop

    .line 1834
    return-void

    .line 1831
    :catch_0
    move-exception v0

    .line 1832
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x2774 -> :sswitch_1
        0x4e20 -> :sswitch_0
        0x4e36 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist setDisplayIdForPointerIcon(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 2835
    :try_start_0
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayIdForPointerIcon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setDisplayIdForPointerIcon(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2838
    goto :goto_0

    .line 2837
    :catch_0
    move-exception v0

    .line 2839
    :goto_0
    return-void
.end method

.method public blacklist setHostRoleWirelessKeyboardShare()V
    .locals 3

    .line 3245
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->setHostRoleWirelessKeyboardShare()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3248
    goto :goto_0

    .line 3246
    :catch_0
    move-exception v0

    .line 3247
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not call setHostRoleWirelessKeyboardShare()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setIsStylusFromTouchpad(Z)V
    .locals 1
    .param p1, "isStylusFromTouchpad"    # Z

    .line 2847
    iget-boolean v0, p0, Landroid/hardware/input/InputManager;->mIsStylusFromTouchpad:Z

    if-eq v0, p1, :cond_0

    .line 2848
    iput-boolean p1, p0, Landroid/hardware/input/InputManager;->mIsStylusFromTouchpad:Z

    .line 2850
    :cond_0
    return-void
.end method

.method public blacklist setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "inputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "inputMethodSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p4, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1312
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/input/IInputManager;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    nop

    .line 1318
    return-void

    .line 1314
    :catch_0
    move-exception v0

    .line 1315
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setMaximumObscuringOpacityForTouch(F)V
    .locals 3
    .param p1, "opacity"    # F

    .line 1473
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 1477
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1478
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "maximum_obscuring_opacity_for_touch"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 1480
    return-void

    .line 1474
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum obscuring opacity for touch should be >= 0 and <= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setPointerIconType(I)V
    .locals 10
    .param p1, "iconId"    # I

    .line 1751
    iget-boolean v0, p0, Landroid/hardware/input/InputManager;->mIsStylusFromTouchpad:Z

    const/16 v1, 0x4e20

    const-string v2, "InputManager"

    if-eqz v0, :cond_0

    if-le p1, v1, :cond_0

    .line 1752
    move v0, p1

    .line 1753
    .local v0, "before":I
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->mappingToMousePointer(I)I

    move-result p1

    .line 1754
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mapping pointerIcon because of mIsStylusFromTouchpad ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    .end local v0    # "before":I
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->isDefaultPointerIconChanged()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "setPointerIconType iconId = "

    const-string v4, ", callingPid = "

    if-eqz v0, :cond_8

    .line 1760
    :try_start_1
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getDefaultPointerIcon()Landroid/view/PointerIcon;

    move-result-object v0

    .line 1761
    .local v0, "defaultIcon":Landroid/view/PointerIcon;
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v5}, Landroid/hardware/input/IInputManager;->getToolTypeForDefaultPointerIcon()I

    move-result v5

    .line 1762
    .local v5, "toolTypeForDefaultPointerIcon":I
    const/4 v6, 0x1

    .line 1764
    .local v6, "defaultIconType":I
    if-eqz v0, :cond_7

    const/16 v7, 0x3e8

    const/4 v8, 0x3

    const/16 v9, 0x4e21

    if-ne p1, v7, :cond_1

    if-eq v5, v8, :cond_3

    :cond_1
    if-ne p1, v9, :cond_2

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    :cond_2
    const/16 v7, 0x2789

    if-ne p1, v7, :cond_7

    if-ne v5, v8, :cond_7

    .line 1767
    :cond_3
    invoke-virtual {v0}, Landroid/view/PointerIcon;->getType()I

    move-result v7

    move v6, v7

    .line 1768
    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    if-ne v6, v1, :cond_4

    goto :goto_0

    .line 1781
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPointerIconType defaultIconType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1782
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1781
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v6}, Landroid/hardware/input/IInputManager;->setPointerIconType(I)V

    goto :goto_1

    .line 1770
    :cond_5
    :goto_0
    if-ne v6, v1, :cond_6

    if-eq p1, v9, :cond_6

    .line 1771
    const-string v1, "defaultIcon is HOVERING_SPENICON_CUSTOM but other default icon is requested"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1773
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1772
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->setPointerIconType(I)V

    goto :goto_1

    .line 1776
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPointerIconType Call setCustomPointerIcon, callingPid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1777
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1776
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    invoke-virtual {p0, v0}, Landroid/hardware/input/InputManager;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    goto :goto_1

    .line 1786
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPointerIconType[isDefaultPointerIconChanged2] iconId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1787
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1786
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->setPointerIconType(I)V

    .line 1790
    .end local v0    # "defaultIcon":Landroid/view/PointerIcon;
    .end local v5    # "toolTypeForDefaultPointerIcon":I
    .end local v6    # "defaultIconType":I
    :goto_1
    goto :goto_2

    .line 1791
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1792
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1791
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setPointerIconType(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1799
    :goto_2
    nop

    .line 1800
    return-void

    .line 1797
    :catch_0
    move-exception v0

    .line 1798
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setPointerSpeed(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "speed"    # I

    .line 1395
    const/4 v0, -0x7

    if-lt p2, v0, :cond_0

    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

    .line 1399
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1401
    return-void

    .line 1396
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setShowAllTouches(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 3273
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setShowAllTouches(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3276
    goto :goto_0

    .line 3274
    :catch_0
    move-exception v0

    .line 3275
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not call setShowAllTouches(boolean)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setStartedShutdown(Z)V
    .locals 1
    .param p1, "isStarted"    # Z

    .line 2932
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setStartedShutdown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2935
    goto :goto_0

    .line 2933
    :catch_0
    move-exception v0

    .line 2937
    :goto_0
    return-void
.end method

.method public greylist-max-o setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .locals 2
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    .line 1353
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    nop

    .line 1357
    return-void

    .line 1354
    :catch_0
    move-exception v0

    .line 1355
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist switchDeviceWirelessKeyboardShare(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 3230
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->switchDeviceWirelessKeyboardShare(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3231
    :catch_0
    move-exception v0

    .line 3232
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not call switchDeviceWirelessKeyboardShare()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o tryPointerSpeed(I)V
    .locals 2
    .param p1, "speed"    # I

    .line 1415
    const/4 v0, -0x7

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 1420
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->tryPointerSpeed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1423
    nop

    .line 1424
    return-void

    .line 1421
    :catch_0
    move-exception v0

    .line 1422
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1416
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 653
    if-eqz p1, :cond_1

    .line 657
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v1

    .line 659
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 660
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    .line 661
    .local v2, "d":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 662
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 664
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    :cond_0
    monitor-exit v0

    .line 665
    return-void

    .line 664
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 654
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o unregisterOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    .line 927
    if-eqz p1, :cond_1

    .line 930
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 931
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I

    move-result v1

    .line 932
    .local v1, "idx":I
    if-ltz v1, :cond_0

    .line 933
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;

    .line 934
    .local v2, "d":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 936
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    :cond_0
    monitor-exit v0

    .line 937
    return-void

    .line 936
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 928
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterOnWirelessKeyboardShareChangedListener(Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;

    .line 2620
    if-eqz p1, :cond_1

    .line 2623
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2624
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findOnWirelessKeyboardShareChangedListenerLocked(Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;)I

    move-result v1

    .line 2625
    .local v1, "idx":I
    if-ltz v1, :cond_0

    .line 2626
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    .line 2627
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListenerDelegate;

    .line 2628
    .local v2, "d":Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2630
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListenerDelegate;
    :cond_0
    monitor-exit v0

    .line 2631
    return-void

    .line 2630
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2621
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/input/IInputSensorEventListener;

    .line 1991
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1994
    nop

    .line 1995
    return-void

    .line 1992
    :catch_0
    move-exception v0

    .line 1993
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;

    .line 2307
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2308
    :catch_0
    move-exception v0

    .line 2309
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist updateWirelessKeyboardShareStatus()V
    .locals 3

    .line 3169
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->updateWirelessKeyboardShareStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3172
    goto :goto_0

    .line 3170
    :catch_0
    move-exception v0

    .line 3171
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not call updateWirelessKeyboardShareStatus()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 1734
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1735
    :catch_0
    move-exception v0

    .line 1736
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist vibrate(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "effect"    # Landroid/os/CombinedVibration;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 2263
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2266
    nop

    .line 2267
    return-void

    .line 2264
    :catch_0
    move-exception v0

    .line 2265
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "effect"    # Landroid/os/VibrationEffect;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 2252
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2255
    nop

    .line 2256
    return-void

    .line 2253
    :catch_0
    move-exception v0

    .line 2254
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

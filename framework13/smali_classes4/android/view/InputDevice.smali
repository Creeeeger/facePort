.class public final Landroid/view/InputDevice;
.super Ljava/lang/Object;
.source "InputDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputDevice$MotionRange;,
        Landroid/view/InputDevice$InputSourceClass;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist KEYBOARD_TYPE_ALPHABETIC:I = 0x2

.field public static final whitelist KEYBOARD_TYPE_NONE:I = 0x0

.field public static final whitelist KEYBOARD_TYPE_NON_ALPHABETIC:I = 0x1

.field private static final greylist-max-o MAX_RANGES:I = 0x3e8

.field public static final whitelist MOTION_RANGE_ORIENTATION:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MOTION_RANGE_PRESSURE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MOTION_RANGE_SIZE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MOTION_RANGE_TOOL_MAJOR:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MOTION_RANGE_TOOL_MINOR:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MOTION_RANGE_TOUCH_MAJOR:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MOTION_RANGE_TOUCH_MINOR:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MOTION_RANGE_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MOTION_RANGE_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEM_SOURCE_CAR_KNOB:I = 0x40000000
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation
.end field

.field public static final whitelist SOURCE_ANY:I = -0x100

.field public static final whitelist SOURCE_BLUETOOTH_STYLUS:I = 0xc002

.field public static final whitelist SOURCE_CLASS_BUTTON:I = 0x1

.field public static final whitelist SOURCE_CLASS_JOYSTICK:I = 0x10

.field public static final whitelist SOURCE_CLASS_MASK:I = 0xff

.field public static final whitelist SOURCE_CLASS_NONE:I = 0x0

.field public static final whitelist SOURCE_CLASS_POINTER:I = 0x2

.field public static final whitelist SOURCE_CLASS_POSITION:I = 0x8

.field public static final whitelist SOURCE_CLASS_TRACKBALL:I = 0x4

.field public static final whitelist SOURCE_DPAD:I = 0x201

.field public static final whitelist SOURCE_GAMEPAD:I = 0x401

.field public static final whitelist SOURCE_HDMI:I = 0x2000001

.field public static final whitelist SOURCE_JOYSTICK:I = 0x1000010

.field public static final whitelist SOURCE_KEYBOARD:I = 0x101

.field public static final whitelist SOURCE_MOUSE:I = 0x2002

.field public static final whitelist SOURCE_MOUSE_RELATIVE:I = 0x20004

.field public static final whitelist SOURCE_ROTARY_ENCODER:I = 0x400000

.field public static final whitelist SOURCE_SENSOR:I = 0x4000000

.field public static final whitelist SOURCE_STYLUS:I = 0x4002

.field public static final whitelist SOURCE_TOUCHPAD:I = 0x100008

.field public static final whitelist SOURCE_TOUCHSCREEN:I = 0x1002

.field public static final whitelist SOURCE_TOUCH_NAVIGATION:I = 0x200000

.field public static final whitelist SOURCE_TRACKBALL:I = 0x10004

.field public static final whitelist SOURCE_UNKNOWN:I = 0x0

.field private static final blacklist VIBRATOR_ID_ALL:I = -0x1


# instance fields
.field private blacklist mBatteryState:Landroid/hardware/BatteryState;

.field private final greylist-max-o mControllerNumber:I

.field private final greylist-max-o mDescriptor:Ljava/lang/String;

.field private final greylist-max-o mGeneration:I

.field private final blacklist mHasBattery:Z

.field private final greylist-max-o mHasButtonUnderPad:Z

.field private final greylist-max-o mHasMicrophone:Z

.field private final blacklist mHasSensor:Z

.field private final greylist-max-o mHasVibrator:Z

.field private final greylist-max-o mId:I

.field private final greylist-max-o mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field private final greylist-max-p mIsExternal:Z

.field private final greylist-max-o mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final greylist-max-o mKeyboardType:I

.field private blacklist mLightsManager:Landroid/hardware/lights/LightsManager;

.field private final greylist-max-o mMotionRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mName:Ljava/lang/String;

.field private final greylist-max-o mProductId:I

.field private blacklist mSensorManager:Landroid/hardware/SensorManager;

.field private final greylist-max-o mSources:I

.field private final greylist-max-o mVendorId:I

.field private greylist-max-o mVibrator:Landroid/os/Vibrator;

.field private blacklist mVibratorManager:Landroid/os/VibratorManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 461
    new-instance v0, Landroid/view/InputDevice$1;

    invoke-direct {v0}, Landroid/view/InputDevice$1;-><init>()V

    sput-object v0, Landroid/view/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIILjava/lang/String;IILjava/lang/String;ZIILandroid/view/KeyCharacterMap;ZZZZZ)V
    .locals 16
    .param p1, "id"    # I
    .param p2, "generation"    # I
    .param p3, "controllerNumber"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "vendorId"    # I
    .param p6, "productId"    # I
    .param p7, "descriptor"    # Ljava/lang/String;
    .param p8, "isExternal"    # Z
    .param p9, "sources"    # I
    .param p10, "keyboardType"    # I
    .param p11, "keyCharacterMap"    # Landroid/view/KeyCharacterMap;
    .param p12, "hasVibrator"    # Z
    .param p13, "hasMicrophone"    # Z
    .param p14, "hasButtonUnderPad"    # Z
    .param p15, "hasSensor"    # Z
    .param p16, "hasBattery"    # Z

    .line 479
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    .line 480
    move/from16 v4, p1

    iput v4, v0, Landroid/view/InputDevice;->mId:I

    .line 481
    move/from16 v5, p2

    iput v5, v0, Landroid/view/InputDevice;->mGeneration:I

    .line 482
    move/from16 v6, p3

    iput v6, v0, Landroid/view/InputDevice;->mControllerNumber:I

    .line 483
    move-object/from16 v7, p4

    iput-object v7, v0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    .line 484
    iput v1, v0, Landroid/view/InputDevice;->mVendorId:I

    .line 485
    iput v2, v0, Landroid/view/InputDevice;->mProductId:I

    .line 486
    iput-object v3, v0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    .line 487
    move/from16 v8, p8

    iput-boolean v8, v0, Landroid/view/InputDevice;->mIsExternal:Z

    .line 488
    move/from16 v9, p9

    iput v9, v0, Landroid/view/InputDevice;->mSources:I

    .line 489
    move/from16 v10, p10

    iput v10, v0, Landroid/view/InputDevice;->mKeyboardType:I

    .line 490
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 491
    move/from16 v12, p12

    iput-boolean v12, v0, Landroid/view/InputDevice;->mHasVibrator:Z

    .line 492
    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/view/InputDevice;->mHasMicrophone:Z

    .line 493
    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    .line 494
    move/from16 v15, p15

    iput-boolean v15, v0, Landroid/view/InputDevice;->mHasSensor:Z

    .line 495
    move/from16 v4, p16

    iput-boolean v4, v0, Landroid/view/InputDevice;->mHasBattery:Z

    .line 496
    new-instance v4, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {v4, v3, v1, v2}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    iput-object v4, v0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 497
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    .line 500
    sget-object v0, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyCharacterMap;

    iput-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mId:I

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mGeneration:I

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mVendorId:I

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/InputDevice;->mProductId:I

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Landroid/view/InputDevice;->mIsExternal:Z

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/InputDevice;->mSources:I

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/InputDevice;->mKeyboardType:I

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    iput-boolean v3, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    iput-boolean v3, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    iput-boolean v3, p0, Landroid/view/InputDevice;->mHasSensor:Z

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    move v4, v5

    :cond_5
    iput-boolean v4, p0, Landroid/view/InputDevice;->mHasBattery:Z

    .line 516
    new-instance v3, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {v3, v2, v0, v1}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    iput-object v3, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 519
    .local v0, "numRanges":I
    const/16 v1, 0x3e8

    if-le v0, v1, :cond_6

    .line 520
    const/16 v0, 0x3e8

    .line 523
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_7

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 524
    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/view/InputDevice;->addMotionRange(IIFFFFF)V

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 527
    .end local v1    # "i":I
    :cond_7
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/InputDevice-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InputDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-r addMotionRange(IIFFFFF)V
    .locals 12
    .param p1, "axis"    # I
    .param p2, "source"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "flat"    # F
    .param p6, "fuzz"    # F
    .param p7, "resolution"    # F

    .line 864
    move-object v0, p0

    iget-object v1, v0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    new-instance v11, Landroid/view/InputDevice$MotionRange;

    const/4 v10, 0x0

    move-object v2, v11

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Landroid/view/InputDevice$MotionRange;-><init>(IIFFFFFLandroid/view/InputDevice$MotionRange-IA;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    return-void
.end method

.method private greylist-max-o appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/StringBuilder;
    .param p2, "source"    # I
    .param p3, "sourceName"    # Ljava/lang/String;

    .line 1265
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    .line 1266
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    :cond_0
    return-void
.end method

.method public static whitelist getDevice(I)Landroid/view/InputDevice;
    .locals 1
    .param p0, "id"    # I

    .line 535
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDeviceIds()[I
    .locals 1

    .line 543
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method private greylist hidden_setPointerType(I)V
    .locals 0
    .param p1, "pointerType"    # I

    .line 1034
    invoke-virtual {p0, p1}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 1035
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1202
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disable()V
    .locals 2

    .line 991
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->disableInputDevice(I)V

    .line 992
    return-void
.end method

.method public blacklist enable()V
    .locals 2

    .line 980
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->enableInputDevice(I)V

    .line 981
    return-void
.end method

.method public whitelist getBatteryState()Landroid/hardware/BatteryState;
    .locals 3

    .line 923
    iget-object v0, p0, Landroid/view/InputDevice;->mBatteryState:Landroid/hardware/BatteryState;

    if-nez v0, :cond_0

    .line 924
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    iget-boolean v2, p0, Landroid/view/InputDevice;->mHasBattery:Z

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->getInputDeviceBatteryState(IZ)Landroid/hardware/input/InputDeviceBatteryState;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mBatteryState:Landroid/hardware/BatteryState;

    .line 926
    :cond_0
    iget-object v0, p0, Landroid/view/InputDevice;->mBatteryState:Landroid/hardware/BatteryState;

    return-object v0
.end method

.method public whitelist getControllerNumber()I
    .locals 1

    .line 578
    iget v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    return v0
.end method

.method public whitelist getDescriptor()Ljava/lang/String;
    .locals 1

    .line 658
    iget-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getGeneration()I
    .locals 1

    .line 605
    iget v0, p0, Landroid/view/InputDevice;->mGeneration:I

    return v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 559
    iget v0, p0, Landroid/view/InputDevice;->mId:I

    return v0
.end method

.method public greylist-max-o getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;
    .locals 1

    .line 592
    iget-object v0, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    return-object v0
.end method

.method public whitelist getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .locals 1

    .line 740
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    return-object v0
.end method

.method public whitelist getKeyCodeForKeyLocation(I)I
    .locals 2
    .param p1, "locationKeyCode"    # I

    .line 797
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->getKeyCodeForKeyLocation(II)I

    move-result v0

    return v0
.end method

.method public whitelist getKeyboardType()I
    .locals 1

    .line 732
    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    return v0
.end method

.method public whitelist getLightsManager()Landroid/hardware/lights/LightsManager;
    .locals 2

    .line 938
    iget-object v0, p0, Landroid/view/InputDevice;->mLightsManager:Landroid/hardware/lights/LightsManager;

    if-nez v0, :cond_0

    .line 939
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDeviceLightsManager(I)Landroid/hardware/lights/LightsManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mLightsManager:Landroid/hardware/lights/LightsManager;

    .line 941
    :cond_0
    iget-object v0, p0, Landroid/view/InputDevice;->mLightsManager:Landroid/hardware/lights/LightsManager;

    return-object v0
.end method

.method public whitelist getMotionRange(I)Landroid/view/InputDevice$MotionRange;
    .locals 4
    .param p1, "axis"    # I

    .line 815
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 816
    .local v0, "numRanges":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 817
    iget-object v2, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 818
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 819
    return-object v2

    .line 816
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 822
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getMotionRange(II)Landroid/view/InputDevice$MotionRange;
    .locals 4
    .param p1, "axis"    # I
    .param p2, "source"    # I

    .line 840
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 841
    .local v0, "numRanges":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 842
    iget-object v2, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 843
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmSource(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 844
    return-object v2

    .line 841
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getMotionRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation

    .line 857
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 704
    iget-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProductId()I
    .locals 1

    .line 632
    iget v0, p0, Landroid/view/InputDevice;->mProductId:I

    return v0
.end method

.method public whitelist getSensorManager()Landroid/hardware/SensorManager;
    .locals 3

    .line 956
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v0

    .line 957
    :try_start_0
    iget-object v1, p0, Landroid/view/InputDevice;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    .line 958
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getInputDeviceSensorManager(I)Landroid/hardware/SensorManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mSensorManager:Landroid/hardware/SensorManager;

    .line 960
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    iget-object v0, p0, Landroid/view/InputDevice;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0

    .line 960
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getSources()I
    .locals 1

    .line 712
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    return v0
.end method

.method public whitelist getVendorId()I
    .locals 1

    .line 618
    iget v0, p0, Landroid/view/InputDevice;->mVendorId:I

    return v0
.end method

.method public whitelist getVibrator()Landroid/os/Vibrator;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 882
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v0

    .line 883
    :try_start_0
    iget-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_1

    .line 884
    iget-boolean v1, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    if-eqz v1, :cond_0

    .line 885
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->getInputDeviceVibrator(II)Landroid/os/Vibrator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0

    .line 888
    :cond_0
    invoke-static {}, Landroid/os/NullVibrator;->getInstance()Landroid/os/NullVibrator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    .line 891
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    monitor-exit v0

    return-object v1

    .line 892
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getVibratorManager()Landroid/os/VibratorManager;
    .locals 3

    .line 905
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v0

    .line 906
    :try_start_0
    iget-object v1, p0, Landroid/view/InputDevice;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v1, :cond_0

    .line 907
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getInputDeviceVibratorManager(I)Landroid/os/VibratorManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mVibratorManager:Landroid/os/VibratorManager;

    .line 909
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    iget-object v0, p0, Landroid/view/InputDevice;->mVibratorManager:Landroid/os/VibratorManager;

    return-object v0

    .line 909
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public greylist-max-o hasButtonUnderPad()Z
    .locals 1

    .line 1008
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    return v0
.end method

.method public varargs whitelist hasKeys([I)[Z
    .locals 2
    .param p1, "keys"    # [I

    .line 750
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->deviceHasKeys(I[I)[Z

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasMicrophone()Z
    .locals 1

    .line 999
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    return v0
.end method

.method public blacklist hasSensor()Z
    .locals 1

    .line 1017
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasSensor:Z

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 2

    .line 969
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->isInputDeviceEnabled(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isExternal()Z
    .locals 1

    .line 684
    iget-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    return v0
.end method

.method public greylist-max-o isFullKeyboard()Z
    .locals 2

    .line 695
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    const/16 v1, 0x101

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isVirtual()Z
    .locals 1

    .line 674
    iget v0, p0, Landroid/view/InputDevice;->mId:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist semSetPointerType(I)V
    .locals 0
    .param p1, "pointerType"    # I

    .line 1044
    invoke-virtual {p0, p1}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 1045
    return-void
.end method

.method public greylist-max-o setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .locals 1
    .param p1, "icon"    # Landroid/view/PointerIcon;

    .line 1053
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 1054
    return-void
.end method

.method public greylist-max-o setPointerType(I)V
    .locals 1
    .param p1, "pointerType"    # I

    .line 1026
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 1027
    return-void
.end method

.method public whitelist supportsSource(I)Z
    .locals 1
    .param p1, "source"    # I

    .line 724
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1208
    .local v0, "description":Ljava/lang/StringBuilder;
    const-string v1, "Input Device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    const-string v1, "  Descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    const-string v1, "  Generation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/InputDevice;->mGeneration:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    const-string v1, "  Location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mIsExternal:Z

    if-eqz v3, :cond_0

    const-string v3, "external"

    goto :goto_0

    :cond_0
    const-string v3, "built-in"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    const-string v1, "  Keyboard Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    iget v1, p0, Landroid/view/InputDevice;->mKeyboardType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1222
    :pswitch_0
    const-string v1, "alphabetic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1219
    :pswitch_1
    const-string/jumbo v1, "non-alphabetic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    goto :goto_1

    .line 1216
    :pswitch_2
    const-string/jumbo v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    nop

    .line 1225
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    const-string v1, "  Has Vibrator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    const-string v1, "  Has Sensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasSensor:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    const-string v1, "  Has battery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasBattery:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    const-string v1, "  Has mic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    const-string v1, "  Sources: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/InputDevice;->mSources:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    const/16 v1, 0x101

    const-string v3, "keyboard"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1237
    const/16 v1, 0x201

    const-string v3, "dpad"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1238
    const/16 v1, 0x1002

    const-string/jumbo v3, "touchscreen"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1239
    const/16 v1, 0x2002

    const-string/jumbo v3, "mouse"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1240
    const/16 v1, 0x4002

    const-string/jumbo v3, "stylus"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1241
    const v1, 0x10004

    const-string/jumbo v3, "trackball"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1242
    const v1, 0x20004

    const-string/jumbo v3, "mouse_relative"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1243
    const v1, 0x100008

    const-string/jumbo v3, "touchpad"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1244
    const v1, 0x1000010

    const-string v3, "joystick"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1245
    const/16 v1, 0x401

    const-string v3, "gamepad"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1246
    const-string v1, " )\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    iget-object v1, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1249
    .local v1, "numAxes":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_1

    .line 1250
    iget-object v4, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice$MotionRange;

    .line 1251
    .local v4, "range":Landroid/view/InputDevice$MotionRange;
    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I

    move-result v6

    invoke-static {v6}, Landroid/view/MotionEvent;->axisToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    const-string v5, ": source=0x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmSource(Landroid/view/InputDevice$MotionRange;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    const-string v5, " min="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmMin(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1254
    const-string v5, " max="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmMax(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1255
    const-string v5, " flat="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmFlat(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1256
    const-string v5, " fuzz="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmFuzz(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1257
    const-string v5, " resolution="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmResolution(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1258
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    .end local v4    # "range":Landroid/view/InputDevice$MotionRange;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1260
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1169
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v0, p1, p2}, Landroid/view/KeyCharacterMap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1170
    iget v0, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    iget v0, p0, Landroid/view/InputDevice;->mGeneration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    iget v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    iget-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1174
    iget v0, p0, Landroid/view/InputDevice;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    iget v0, p0, Landroid/view/InputDevice;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1176
    iget-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1177
    iget-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasSensor:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasBattery:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1187
    .local v0, "numRanges":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1189
    iget-object v2, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 1190
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1191
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmSource(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1192
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmMin(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1193
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmMax(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1194
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmFlat(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1195
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmFuzz(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1196
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmResolution(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1188
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1198
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

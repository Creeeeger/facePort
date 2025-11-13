.class public final Landroid/view/InputDevice;
.super Ljava/lang/Object;
.source "InputDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputDevice$ViewBehavior;,
        Landroid/view/InputDevice$MotionRange;,
        Landroid/view/InputDevice$Builder;,
        Landroid/view/InputDevice$Source;,
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
.field private final blacklist mAssociatedDisplayId:I

.field private final greylist-max-o mControllerNumber:I

.field private final greylist-max-o mDescriptor:Ljava/lang/String;

.field private final blacklist mDeviceBus:I

.field private final blacklist mEnabled:Z

.field private final greylist-max-o mGeneration:I

.field private final blacklist mHasBattery:Z

.field private final greylist-max-o mHasButtonUnderPad:Z

.field private final greylist-max-o mHasMicrophone:Z

.field private final blacklist mHasSensor:Z

.field private final greylist-max-o mHasVibrator:Z

.field private final blacklist mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

.field private final greylist-max-o mId:I

.field private final greylist-max-o mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field private final greylist-max-p mIsExternal:Z

.field private final greylist-max-o mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final blacklist mKeyboardLanguageTag:Ljava/lang/String;

.field private final blacklist mKeyboardLayoutType:Ljava/lang/String;

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

.field private final blacklist mViewBehavior:Landroid/view/InputDevice$ViewBehavior;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddMotionRange(Landroid/view/InputDevice;IIFFFFF)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/view/InputDevice;->addMotionRange(IIFFFFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetShouldSmoothScroll(Landroid/view/InputDevice;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InputDevice;->setShouldSmoothScroll(Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/InputDevice$1;

    invoke-direct {v0}, Landroid/view/InputDevice$1;-><init>()V

    sput-object v0, Landroid/view/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIILjava/lang/String;IIILjava/lang/String;ZIILandroid/view/KeyCharacterMap;Ljava/lang/String;Ljava/lang/String;ZZZZZIIIZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    new-instance v4, Landroid/view/InputDevice$ViewBehavior;

    invoke-direct {v4, v0}, Landroid/view/InputDevice$ViewBehavior;-><init>(Landroid/view/InputDevice;)V

    iput-object v4, v0, Landroid/view/InputDevice;->mViewBehavior:Landroid/view/InputDevice$ViewBehavior;

    move/from16 v4, p1

    iput v4, v0, Landroid/view/InputDevice;->mId:I

    move/from16 v5, p2

    iput v5, v0, Landroid/view/InputDevice;->mGeneration:I

    move/from16 v6, p3

    iput v6, v0, Landroid/view/InputDevice;->mControllerNumber:I

    move-object/from16 v7, p4

    iput-object v7, v0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    iput v1, v0, Landroid/view/InputDevice;->mVendorId:I

    iput v2, v0, Landroid/view/InputDevice;->mProductId:I

    move/from16 v8, p7

    iput v8, v0, Landroid/view/InputDevice;->mDeviceBus:I

    iput-object v3, v0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    move/from16 v9, p9

    iput-boolean v9, v0, Landroid/view/InputDevice;->mIsExternal:Z

    move/from16 v10, p10

    iput v10, v0, Landroid/view/InputDevice;->mSources:I

    move/from16 v11, p11

    iput v11, v0, Landroid/view/InputDevice;->mKeyboardType:I

    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-static/range {p13 .. p13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const/4 v14, 0x0

    if-nez v13, :cond_1

    nop

    invoke-static/range {p13 .. p13}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v13

    invoke-static {v13}, Landroid/icu/util/ULocale;->createCanonical(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v13

    invoke-virtual {v13}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "und"

    invoke-static {v13, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    goto :goto_0

    :cond_0
    move-object v14, v13

    :goto_0
    iput-object v14, v0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object v14, v0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    :goto_1
    move-object/from16 v13, p14

    iput-object v13, v0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    move/from16 v14, p15

    iput-boolean v14, v0, Landroid/view/InputDevice;->mHasVibrator:Z

    move/from16 v15, p16

    iput-boolean v15, v0, Landroid/view/InputDevice;->mHasMicrophone:Z

    move/from16 v4, p17

    iput-boolean v4, v0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    move/from16 v4, p18

    iput-boolean v4, v0, Landroid/view/InputDevice;->mHasSensor:Z

    move/from16 v4, p19

    iput-boolean v4, v0, Landroid/view/InputDevice;->mHasBattery:Z

    new-instance v4, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {v4, v3, v1, v2}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    iput-object v4, v0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    new-instance v4, Landroid/hardware/input/HostUsiVersion;

    move/from16 v1, p20

    move/from16 v2, p21

    invoke-direct {v4, v1, v2}, Landroid/hardware/input/HostUsiVersion;-><init>(II)V

    iput-object v4, v0, Landroid/view/InputDevice;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    move/from16 v4, p22

    iput v4, v0, Landroid/view/InputDevice;->mAssociatedDisplayId:I

    move/from16 v1, p23

    iput-boolean v1, v0, Landroid/view/InputDevice;->mEnabled:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(IIILjava/lang/String;IIILjava/lang/String;ZIILandroid/view/KeyCharacterMap;Ljava/lang/String;Ljava/lang/String;ZZZZZIIIZLandroid/view/InputDevice-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p23}, Landroid/view/InputDevice;-><init>(IIILjava/lang/String;IIILjava/lang/String;ZIILandroid/view/KeyCharacterMap;Ljava/lang/String;Ljava/lang/String;ZZZZZIIIZ)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/InputDevice$ViewBehavior;

    invoke-direct {v0, p0}, Landroid/view/InputDevice$ViewBehavior;-><init>(Landroid/view/InputDevice;)V

    iput-object v0, p0, Landroid/view/InputDevice;->mViewBehavior:Landroid/view/InputDevice$ViewBehavior;

    sget-object v0, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyCharacterMap;

    iput-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mGeneration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mVendorId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mProductId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mDeviceBus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mSources:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/view/InputDevice;->mHasSensor:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Landroid/view/InputDevice;->mHasBattery:Z

    sget-object v0, Landroid/hardware/input/HostUsiVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/HostUsiVersion;

    iput-object v0, p0, Landroid/view/InputDevice;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mAssociatedDisplayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    iput-boolean v1, p0, Landroid/view/InputDevice;->mEnabled:Z

    new-instance v0, Landroid/hardware/input/InputDeviceIdentifier;

    iget-object v1, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    iget v2, p0, Landroid/view/InputDevice;->mVendorId:I

    iget v3, p0, Landroid/view/InputDevice;->mProductId:I

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_7

    const/16 v0, 0x3e8

    :cond_7
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/view/InputDevice;->addMotionRange(IIFFFFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    iget-object v1, p0, Landroid/view/InputDevice;->mViewBehavior:Landroid/view/InputDevice$ViewBehavior;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/view/InputDevice$ViewBehavior;->-$$Nest$fputmShouldSmoothScroll(Landroid/view/InputDevice$ViewBehavior;Z)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/InputDevice-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InputDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-r addMotionRange(IIFFFFF)V
    .locals 12

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

    return-void
.end method

.method private greylist-max-o appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static whitelist getDevice(I)Landroid/view/InputDevice;
    .locals 1

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDeviceIds()[I
    .locals 1

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method private blacklist setShouldSmoothScroll(Z)V
    .locals 1

    iget-object v0, p0, Landroid/view/InputDevice;->mViewBehavior:Landroid/view/InputDevice$ViewBehavior;

    invoke-static {v0, p1}, Landroid/view/InputDevice$ViewBehavior;->-$$Nest$fputmShouldSmoothScroll(Landroid/view/InputDevice$ViewBehavior;Z)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disable()V
    .locals 2

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerGlobal;->disableInputDevice(I)V

    return-void
.end method

.method public blacklist enable()V
    .locals 2

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerGlobal;->enableInputDevice(I)V

    return-void
.end method

.method public blacklist getAssociatedDisplayId()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mAssociatedDisplayId:I

    return v0
.end method

.method public whitelist getBatteryState()Landroid/hardware/BatteryState;
    .locals 3

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    iget-boolean v2, p0, Landroid/view/InputDevice;->mHasBattery:Z

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceBatteryState(IZ)Landroid/hardware/BatteryState;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBluetoothAddress()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceBluetoothAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getControllerNumber()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    return v0
.end method

.method public whitelist getDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceBus()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mDeviceBus:I

    return v0
.end method

.method public greylist-max-o getGeneration()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mGeneration:I

    return v0
.end method

.method public blacklist getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;
    .locals 1

    iget-object v0, p0, Landroid/view/InputDevice;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    invoke-virtual {v0}, Landroid/hardware/input/HostUsiVersion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/InputDevice;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getId()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mId:I

    return v0
.end method

.method public greylist-max-o getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;
    .locals 1

    iget-object v0, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    return-object v0
.end method

.method public whitelist getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .locals 1

    iget-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    return-object v0
.end method

.method public whitelist getKeyCodeForKeyLocation(I)I
    .locals 2

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManagerGlobal;->getKeyCodeForKeyLocation(II)I

    move-result v0

    return v0
.end method

.method public blacklist getKeyboardLanguageTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKeyboardLayoutType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getKeyboardType()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    return v0
.end method

.method public whitelist getLightsManager()Landroid/hardware/lights/LightsManager;
    .locals 3

    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/InputDevice;->mLightsManager:Landroid/hardware/lights/LightsManager;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceLightsManager(I)Landroid/hardware/lights/LightsManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mLightsManager:Landroid/hardware/lights/LightsManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/view/InputDevice;->mLightsManager:Landroid/hardware/lights/LightsManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getMotionRange(I)Landroid/view/InputDevice$MotionRange;
    .locals 4

    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getMotionRange(II)Landroid/view/InputDevice$MotionRange;
    .locals 4

    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmSource(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProductId()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mProductId:I

    return v0
.end method

.method public whitelist getSensorManager()Landroid/hardware/SensorManager;
    .locals 3

    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/InputDevice;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceSensorManager(I)Landroid/hardware/SensorManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/view/InputDevice;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0

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

    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    return v0
.end method

.method public whitelist getVendorId()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mVendorId:I

    return v0
.end method

.method public whitelist getVibrator()Landroid/os/Vibrator;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceVibrator(II)Landroid/os/Vibrator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/NullVibrator;->getInstance()Landroid/os/NullVibrator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getVibratorManager()Landroid/os/VibratorManager;
    .locals 3

    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/InputDevice;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceVibratorManager(I)Landroid/os/VibratorManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mVibratorManager:Landroid/os/VibratorManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/view/InputDevice;->mVibratorManager:Landroid/os/VibratorManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist getViewBehavior()Landroid/view/InputDevice$ViewBehavior;
    .locals 1

    iget-object v0, p0, Landroid/view/InputDevice;->mViewBehavior:Landroid/view/InputDevice$ViewBehavior;

    return-object v0
.end method

.method public blacklist hasBattery()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasBattery:Z

    return v0
.end method

.method public greylist-max-o hasButtonUnderPad()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    return v0
.end method

.method public varargs whitelist hasKeys([I)[Z
    .locals 2

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManagerGlobal;->deviceHasKeys(I[I)[Z

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasMicrophone()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    return v0
.end method

.method public blacklist hasSensor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasSensor:Z

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InputDevice;->mEnabled:Z

    return v0
.end method

.method public whitelist isExternal()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    return v0
.end method

.method public greylist-max-o isFullKeyboard()Z
    .locals 2

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

    return-void
.end method

.method public whitelist supportsSource(I)Z
    .locals 1

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

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

    const-string v1, "  Descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Generation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/InputDevice;->mGeneration:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v1, "  Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/InputDevice;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Keyboard Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/InputDevice;->mKeyboardType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v1, "alphabetic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string/jumbo v1, "non-alphabetic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string/jumbo v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Has Vibrator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Has Sensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasSensor:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Has battery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasBattery:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Has mic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  USI Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/InputDevice;->getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " Keyboard language tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " Keyboard layout type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
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

    const/16 v1, 0x101

    const-string v3, "keyboard"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/16 v1, 0x201

    const-string v3, "dpad"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/16 v1, 0x1002

    const-string/jumbo v3, "touchscreen"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/16 v1, 0x2002

    const-string/jumbo v3, "mouse"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/16 v1, 0x4002

    const-string/jumbo v3, "stylus"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const v1, 0x10004

    const-string/jumbo v3, "trackball"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const v1, 0x20004

    const-string/jumbo v3, "mouse_relative"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const v1, 0x100008

    const-string/jumbo v3, "touchpad"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const v1, 0x1000010

    const-string v3, "joystick"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/16 v1, 0x401

    const-string v3, "gamepad"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const-string v1, " )\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice$MotionRange;

    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I

    move-result v6

    invoke-static {v6}, Landroid/view/MotionEvent;->axisToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": source=0x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmSource(Landroid/view/InputDevice$MotionRange;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " min="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmMin(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " max="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmMax(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " flat="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmFlat(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " fuzz="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmFuzz(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " resolution="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmResolution(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
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

    iget-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v0, p1, p2}, Landroid/view/KeyCharacterMap;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/InputDevice;->mGeneration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/InputDevice;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/InputDevice;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/InputDevice;->mDeviceBus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasSensor:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasBattery:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/InputDevice;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/HostUsiVersion;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/InputDevice;->mAssociatedDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/InputDevice;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmSource(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmMin(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmMax(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmFlat(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmFuzz(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmResolution(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/view/InputDevice;->mViewBehavior:Landroid/view/InputDevice$ViewBehavior;

    invoke-static {v1}, Landroid/view/InputDevice$ViewBehavior;->-$$Nest$fgetmShouldSmoothScroll(Landroid/view/InputDevice$ViewBehavior;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

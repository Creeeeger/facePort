.class public Landroid/hardware/scontext/SContext;
.super Ljava/lang/Object;
.source "SContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContext;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist REPORTING_MODE_BATCH:I = 0x5

.field static final blacklist REPORTING_MODE_CONTINUOUS:I = 0x1

.field static final blacklist REPORTING_MODE_ONE_SHOT:I = 0x2

.field static final blacklist REPORTING_MODE_ON_CHANGE:I = 0x3

.field static final blacklist REPORTING_MODE_ON_CHANGE_AND_INITIAL_INFO:I = 0x4

.field public static final blacklist TYPE_ABNORMAL_PRESSURE:I = 0x29
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_ACTIVE_TIME_MONITOR:I = 0x22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_ACTIVITY_BATCH:I = 0x1a

.field public static final blacklist TYPE_ACTIVITY_CALIBRATION:I = 0x35
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_ACTIVITY_LOCATION_LOGGING:I = 0x18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_ACTIVITY_NOTIFICATION:I = 0x1b

.field public static final blacklist TYPE_ACTIVITY_NOTIFICATION_EX:I = 0x1e

.field public static final blacklist TYPE_ACTIVITY_TRACKER:I = 0x19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_AIRMOTION:I = 0x7

.field public static final blacklist TYPE_ANY_MOTION_DETECTOR:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_APPROACH:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_AUTO_BRIGHTNESS:I = 0x27
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_AUTO_ROTATION:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_BOTTOM_FLAT_DETECTOR:I = 0x26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_BOUNCE_LONG_MOTION:I = 0x12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_BOUNCE_SHORT_MOTION:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_CALL_MOTION:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_CALL_POSE:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_CAPTURE_MOTION:I = 0x1f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_CARRYING_STATUS_MONITOR:I = 0x25
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_CURRENT_STATUS_FOR_POSITIONING:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_DEVICE_PHYSICAL_CONTEXT_MONITOR:I = 0x33
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_DEVICE_POSITION:I = 0x16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_DUAL_DISPLAY_ANGLE:I = 0x2d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_ENVIRONMENT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_ENVIRONMENT_ADAPTIVE_DISPLAY:I = 0x2c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_EXERCISE:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_FLAT_MOTION:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_FLAT_MOTION_FOR_TABLE_MODE:I = 0x24
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_FLIP_COVER_ACTION:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_FLIP_MOTION:I = 0x31
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_GYRO_TEMPERATURE:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_HALL_SENSOR:I = 0x2b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_INACTIVE_TIMER:I = 0x23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_INTERRUPT_GYRO:I = 0x30
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_MAIN_SCREEN_DETECTION:I = 0x31
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_MOTION:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_MOVEMENT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_MOVEMENT_ALERT:I = 0x15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_MOVEMENT_FOR_POSITIONING:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_PEDOMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_PHONE_STATUS_MONITOR:I = 0x2a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_PUT_DOWN_MOTION:I = 0xf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_SENSOR_STATUS_CHECK:I = 0x34
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_SHAKE_MOTION:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_SLEEP_MONITOR:I = 0x1d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_SLOCATION_CORE:I = 0x2f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_SPECIFIC_POSE_ALERT:I = 0x1c

.field public static final blacklist TYPE_STEP_COUNT_ALERT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_STEP_LEVEL_MONITOR:I = 0x21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_TEMPERATURE_ALERT:I = 0x17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_TEST_FLAT_MOTION:I = 0x16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_WAKE_UP_VOICE:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_WIRELESS_CHARGING_DETECTION:I = 0x2e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_WRIST_UP_MOTION:I = 0x13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist sServiceList:[Ljava/lang/String;

.field private static final blacklist sServiceReportingModes:[I


# instance fields
.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 53

    .line 550
    const-string v0, "Approach"

    const-string v1, "Pedometer"

    const-string v2, "S Count Alert"

    const-string v3, "Motion"

    const-string v4, "Movement"

    const-string v5, "Auto Rotation"

    const-string v6, "Air Motion"

    const-string v7, "Environment"

    const-string v8, "Movemnt For Positioning"

    const-string v9, "Current Status For Positioning"

    const-string v10, "Call Pose"

    const-string v11, "Shake Motion"

    const-string v12, "Flip Cover Action"

    const-string v13, "Gyro Temperature"

    const-string v14, "Put Down Motion"

    const-string v15, "Wake Up Voice"

    const-string v16, "Bounce Short Motion"

    const-string v17, "Bounce Long Motion"

    const-string v18, "Wrist Up Motion"

    const-string v19, "Flat Motion"

    const-string v20, "Movement Alert"

    const-string v21, "Device Position"

    const-string v22, "Temperature Alert"

    const-string v23, "Activity Location Logging"

    const-string v24, "Activity Tracker"

    const-string v25, "Activity Batch"

    const-string v26, "Activity Notification"

    const-string v27, "Specific Pose Alert"

    const-string v28, "Sleep Monitor"

    const-string v29, "Activity Notification Ex"

    const-string v30, "Capture Motion"

    const-string v31, "Call Motion"

    const-string v32, "Step Level Monitor"

    const-string v33, "Acitve Time Monitor"

    const-string v34, "Inactive Timer"

    const-string v35, "Flat Motion For Table Mode"

    const-string v36, "Carrying Status Monitor"

    const-string v37, "Bottom Flat Detector"

    const-string v38, "Auto Brightness"

    const-string v39, "Exercise"

    const-string v40, "Abnormal Pressure"

    const-string v41, "Phone Status Monitor"

    const-string v42, "Hall Sensor"

    const-string v43, "Environment Adaptive Display"

    const-string v44, "Dual Display Angle"

    const-string v45, "Wireless Charging Detection"

    const-string v46, "Slocation Core"

    const-string v47, "Interrupt Gyro"

    const-string v48, "Flip Motion"

    const-string v49, "Any Motion Detector"

    const-string v50, "Device Physical Context Monitor"

    const-string v51, "Sensor Status Check"

    const-string v52, "Activity Calibration"

    filled-new-array/range {v0 .. v52}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/scontext/SContext;->sServiceList:[Ljava/lang/String;

    .line 568
    const/16 v0, 0x35

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/hardware/scontext/SContext;->sServiceReportingModes:[I

    .line 733
    new-instance v0, Landroid/hardware/scontext/SContext$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x3
        0x2
        0x3
        0x2
        0x4
        0x3
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x2
        0x4
        0x2
        0x3
        0x3
        0x5
        0x4
        0x3
        0x5
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x3
        0x4
        0x4
        0x3
        0x3
        0x4
        0x2
        0x3
        0x4
        0x3
    .end array-data
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    .line 597
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 604
    return-void
.end method

.method public static blacklist getReportingMode(I)I
    .locals 2
    .param p0, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 641
    sget-object v0, Landroid/hardware/scontext/SContext;->sServiceReportingModes:[I

    array-length v1, v0

    if-gt p0, v1, :cond_0

    .line 642
    add-int/lit8 v1, p0, -0x1

    aget v0, v0, v1

    return v0

    .line 644
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getServiceName(I)Ljava/lang/String;
    .locals 2
    .param p0, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 620
    sget-object v0, Landroid/hardware/scontext/SContext;->sServiceList:[Ljava/lang/String;

    array-length v1, v0

    if-gt p0, v1, :cond_0

    .line 621
    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 623
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 723
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    .line 724
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 687
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 657
    iget v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    return v0
.end method

.method blacklist setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 669
    iput p1, p0, Landroid/hardware/scontext/SContext;->mType:I

    .line 670
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 709
    iget v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    return-void
.end method

.class public Lcom/samsung/android/hardware/context/SemContext;
.super Ljava/lang/Object;
.source "SemContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContext;",
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

.field public static final whitelist TYPE_ACTIVE_TIME_MONITOR:I = 0x22

.field public static final whitelist TYPE_ACTIVITY_BATCH:I = 0x1a

.field public static final blacklist TYPE_ACTIVITY_CALIBRATION:I = 0x35

.field public static final blacklist TYPE_ACTIVITY_LOCATION_LOGGING:I = 0x18

.field public static final whitelist TYPE_ACTIVITY_NOTIFICATION:I = 0x1b

.field public static final blacklist TYPE_ACTIVITY_NOTIFICATION_EX:I = 0x1e

.field public static final blacklist TYPE_ACTIVITY_NOTIFICATION_FOR_LOCATION:I = 0x1e

.field public static final whitelist TYPE_ACTIVITY_TRACKER:I = 0x19

.field public static final blacklist TYPE_AIRMOTION:I = 0x7

.field public static final blacklist TYPE_ANY_MOTION_DETECTOR:I = 0x32

.field public static final whitelist TYPE_APPROACH:I = 0x1

.field public static final blacklist TYPE_AUTO_BRIGHTNESS:I = 0x27

.field public static final whitelist TYPE_AUTO_ROTATION:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation
.end field

.field public static final blacklist TYPE_BOUNCE_LONG_MOTION:I = 0x12

.field public static final blacklist TYPE_BOUNCE_SHORT_MOTION:I = 0x11

.field public static final blacklist TYPE_CALL_MOTION:I = 0x20

.field public static final blacklist TYPE_CALL_POSE:I = 0xb

.field public static final whitelist TYPE_CARRYING_DETECTION:I = 0x33

.field public static final blacklist TYPE_DEVICE_ACTIVITY_DETECTOR:I = 0x36

.field public static final whitelist TYPE_DEVICE_POSITION:I = 0x16

.field public static final blacklist TYPE_ENVIRONMENT_ADAPTIVE_DISPLAY:I = 0x2c

.field public static final whitelist TYPE_FLAT_MOTION:I = 0x14

.field public static final blacklist TYPE_FLAT_MOTION_FOR_TABLE_MODE:I = 0x24

.field public static final blacklist TYPE_FLIP_COVER_ACTION:I = 0xd

.field public static final blacklist TYPE_FLIP_MOTION:I = 0x31

.field public static final blacklist TYPE_FREE_FALL_DETECTION:I = 0x37

.field public static final blacklist TYPE_GYRO_TEMPERATURE:I = 0xe

.field public static final blacklist TYPE_HALL_SENSOR:I = 0x2b

.field public static final whitelist TYPE_INTERRUPTED_GYRO:I = 0x30

.field public static final blacklist TYPE_LOCATION_CHANGE_TRIGGER:I = 0x36

.field public static final whitelist TYPE_LOCATION_CORE:I = 0x2f

.field public static final whitelist TYPE_MOVEMENT:I = 0x5

.field public static final blacklist TYPE_MOVEMENT_ALERT:I = 0x15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_PEDOMETER:I = 0x2

.field public static final whitelist TYPE_PHONE_STATUS_MONITOR:I = 0x2a

.field public static final whitelist TYPE_PUT_DOWN_MOTION:I = 0xf

.field public static final whitelist TYPE_SEDENTARY_TIMER:I = 0x23

.field public static final whitelist TYPE_SENSOR_STATUS_CHECK:I = 0x34

.field public static final blacklist TYPE_SERVICE_ALL:I = -0x1

.field public static final blacklist TYPE_SHAKE_MOTION:I = 0xc

.field public static final blacklist TYPE_SLOCATION_AR_DISTANCE:I = 0x38

.field public static final blacklist TYPE_SLOCATION_CORE:I = 0x2f

.field public static final blacklist TYPE_SPECIFIC_POSE_ALERT:I = 0x1c

.field public static final whitelist TYPE_STEP_COUNT_ALERT:I = 0x3

.field public static final whitelist TYPE_STEP_LEVEL_MONITOR:I = 0x21

.field public static final blacklist TYPE_WAKE_UP_VOICE:I = 0x10

.field public static final blacklist TYPE_WIRELESS_CHARGING_DETECTION:I = 0x2e

.field public static final blacklist TYPE_WRIST_UP_MOTION:I = 0x13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 354
    new-instance v0, Lcom/samsung/android/hardware/context/SemContext$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContext$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContext;->mType:I

    .line 398
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 405
    return-void
.end method

.method public static blacklist getReportingMode(I)I
    .locals 1
    .param p0, "service"    # I

    .line 522
    packed-switch p0, :pswitch_data_0

    .line 582
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 579
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 576
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 572
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 563
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 556
    :pswitch_5
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist getServiceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "service"    # I

    .line 416
    packed-switch p0, :pswitch_data_0

    .line 510
    :pswitch_0
    const-string v0, ""

    return-object v0

    .line 508
    :pswitch_1
    const-string v0, "SLocation AR Distance"

    return-object v0

    .line 506
    :pswitch_2
    const-string v0, "Free Fall Detection"

    return-object v0

    .line 504
    :pswitch_3
    const-string v0, "Location Change Trigger"

    return-object v0

    .line 502
    :pswitch_4
    const-string v0, "Activity Calibration"

    return-object v0

    .line 500
    :pswitch_5
    const-string v0, "Sensor Status Check"

    return-object v0

    .line 498
    :pswitch_6
    const-string v0, "Carrying Detection"

    return-object v0

    .line 496
    :pswitch_7
    const-string v0, "Any Motion Detector"

    return-object v0

    .line 494
    :pswitch_8
    const-string v0, "Flip Motion"

    return-object v0

    .line 492
    :pswitch_9
    const-string v0, "Interrupted Gyro"

    return-object v0

    .line 490
    :pswitch_a
    const-string v0, "SLocation Core"

    return-object v0

    .line 488
    :pswitch_b
    const-string v0, "Wireless Charging Detection"

    return-object v0

    .line 486
    :pswitch_c
    const-string v0, "Environment Adaptive Display"

    return-object v0

    .line 484
    :pswitch_d
    const-string v0, "Hall Sensor"

    return-object v0

    .line 482
    :pswitch_e
    const-string v0, "Phone Status Monitor"

    return-object v0

    .line 480
    :pswitch_f
    const-string v0, "Abnormal Pressure"

    return-object v0

    .line 478
    :pswitch_10
    const-string v0, "Auto Brightness"

    return-object v0

    .line 476
    :pswitch_11
    const-string v0, "Flat Motion For Table Mode"

    return-object v0

    .line 474
    :pswitch_12
    const-string v0, "Sedentary Timer"

    return-object v0

    .line 472
    :pswitch_13
    const-string v0, "Active Time Monitor"

    return-object v0

    .line 470
    :pswitch_14
    const-string v0, "Step Level Monitor"

    return-object v0

    .line 468
    :pswitch_15
    const-string v0, "Call Motion"

    return-object v0

    .line 466
    :pswitch_16
    const-string v0, "Activity Notification Ex"

    return-object v0

    .line 464
    :pswitch_17
    const-string v0, "Specific Pose Alert"

    return-object v0

    .line 462
    :pswitch_18
    const-string v0, "Activity Notification"

    return-object v0

    .line 460
    :pswitch_19
    const-string v0, "Activity Batch"

    return-object v0

    .line 458
    :pswitch_1a
    const-string v0, "Activity Tracker"

    return-object v0

    .line 456
    :pswitch_1b
    const-string v0, "Activity Location Logging"

    return-object v0

    .line 454
    :pswitch_1c
    const-string v0, "Device Position"

    return-object v0

    .line 452
    :pswitch_1d
    const-string v0, "Movement Alert"

    return-object v0

    .line 450
    :pswitch_1e
    const-string v0, "Flat Motion"

    return-object v0

    .line 448
    :pswitch_1f
    const-string v0, "Wrist Up Motion"

    return-object v0

    .line 446
    :pswitch_20
    const-string v0, "Bounce Long Motion"

    return-object v0

    .line 444
    :pswitch_21
    const-string v0, "Bounce Short Motion"

    return-object v0

    .line 442
    :pswitch_22
    const-string v0, "Wake Up Voice"

    return-object v0

    .line 440
    :pswitch_23
    const-string v0, "Put Down Motion"

    return-object v0

    .line 438
    :pswitch_24
    const-string v0, "Gyro Temperature"

    return-object v0

    .line 436
    :pswitch_25
    const-string v0, "Flip Cover Action"

    return-object v0

    .line 434
    :pswitch_26
    const-string v0, "Shake Motion"

    return-object v0

    .line 432
    :pswitch_27
    const-string v0, "Call Pose"

    return-object v0

    .line 430
    :pswitch_28
    const-string v0, "Air Motion"

    return-object v0

    .line 428
    :pswitch_29
    const-string v0, "Auto Rotation"

    return-object v0

    .line 426
    :pswitch_2a
    const-string v0, "Movement"

    return-object v0

    .line 424
    :pswitch_2b
    const-string v0, "Step Count Alert"

    return-object v0

    .line 422
    :pswitch_2c
    const-string v0, "Pedometer"

    return-object v0

    .line 420
    :pswitch_2d
    const-string v0, "Approach"

    return-object v0

    .line 418
    :pswitch_2e
    const-string v0, "Service All"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2e
        :pswitch_0
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
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
    .end packed-switch
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContext;->mType:I

    .line 622
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 606
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 592
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContext;->mType:I

    return v0
.end method

.method blacklist setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 601
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContext;->mType:I

    .line 602
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 611
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContext;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    return-void
.end method

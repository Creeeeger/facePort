.class public Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
.super Ljava/lang/Object;
.source "SemMotionRecognitionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist BLOW:I = 0x42

.field public static final blacklist BOUNCE:I = 0x2e

.field public static final blacklist BT_SHARING_RECEIVE_NOT_READY:I = 0x29

.field public static final blacklist BT_SHARING_RECEIVE_READY:I = 0x28

.field public static final blacklist BT_SHARING_SEND_PAUSE:I = 0x2b

.field public static final blacklist BT_SHARING_SEND_START:I = 0x2a

.field public static final blacklist BT_SHARING_SEND_STOP:I = 0x2c

.field public static final blacklist CALLPOSE_L:I = 0x4c

.field public static final blacklist CALLPOSE_NONE:I = 0x64

.field public static final blacklist CALLPOSE_R:I = 0x4d

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/gesture/SemMotionRecognitionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DIRECT_CALL:I = 0x44

.field public static final whitelist DIRECT_CALL_LEFT:I = 0x65

.field public static final whitelist DIRECT_CALL_RIGHT:I = 0x66

.field public static final blacklist FLAT:I = 0x47

.field public static final whitelist FLIP_SCREEN_DOWN:I = 0xa

.field public static final whitelist FLIP_SCREEN_UP:I = 0x56

.field public static final blacklist LOCK_EXECUTE_APP:I = 0x45

.field public static final blacklist LOCK_EXECUTE_CAMERA_L:I = 0x49

.field public static final blacklist LOCK_EXECUTE_CAMERA_R:I = 0x4a

.field public static final blacklist MAX:I = 0x74

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist NOT_ELEVATOR:I = 0x72

.field public static final blacklist ONE_TAPPING_GYRO:I = 0x3e

.field public static final blacklist ONE_TIPPING_GYRO:I = 0x40

.field public static final blacklist OUT_OF_ELEVATOR:I = 0x73

.field public static final blacklist PANNING_GYRO:I = 0x3d

.field public static final blacklist ROTATE_0:I = 0x1c

.field public static final blacklist ROTATE_180:I = 0x1e

.field public static final blacklist ROTATE_270:I = 0x1f

.field public static final blacklist ROTATE_90:I = 0x1d

.field public static final blacklist ROTATE_HORIZONTAL:I = 0x2d

.field public static final blacklist ROTATE_START:I = 0x20

.field public static final blacklist ROTATE_STOP:I = 0x21

.field public static final blacklist ROTATION_AXIS_X:I = 0x5e

.field public static final blacklist ROTATION_AXIS_Y:I = 0x5f

.field public static final blacklist ROTATION_AXIS_Z:I = 0x60

.field public static final whitelist SCREEN_UP_STEADY:I = 0x63
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SHAKE:I = 0x22

.field public static final blacklist SHAKE_START:I = 0x23

.field public static final blacklist SHAKE_STOP:I = 0x24

.field public static final blacklist SHORT_SHAKE:I = 0x25

.field public static final blacklist SHORT_SHAKE_START:I = 0x26

.field public static final blacklist SHORT_SHAKE_STOP:I = 0x27

.field public static final blacklist SMART_ALERT:I = 0x43

.field public static final blacklist SMART_ALERT_SETTING:I = 0x62

.field public static final whitelist SMART_RELAY:I = 0x71
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SMART_SCROLL_CAMERA_OFF:I = 0x6f

.field public static final blacklist SMART_SCROLL_CAMERA_ON:I = 0x70

.field public static final blacklist SMART_SCROLL_TILT_DOWN_START:I = 0x68

.field public static final blacklist SMART_SCROLL_TILT_DOWN_START_LAND:I = 0x6c

.field public static final blacklist SMART_SCROLL_TILT_FACE_IN_STOP:I = 0x69

.field public static final blacklist SMART_SCROLL_TILT_FACE_IN_STOP_LAND:I = 0x6d

.field public static final blacklist SMART_SCROLL_TILT_FACE_OUT_STOP:I = 0x6a

.field public static final blacklist SMART_SCROLL_TILT_FACE_OUT_STOP_LAND:I = 0x6e

.field public static final blacklist SMART_SCROLL_TILT_UP_START:I = 0x67

.field public static final blacklist SMART_SCROLL_TILT_UP_START_LAND:I = 0x6b

.field public static final blacklist SNAP1_X_NEGATIVE:I = 0x30

.field public static final blacklist SNAP1_X_POSITIVE:I = 0x2f

.field public static final blacklist SNAP1_Y_NEGATIVE:I = 0x32

.field public static final blacklist SNAP1_Y_POSITIVE:I = 0x31

.field public static final blacklist SNAP1_Z_NEGATIVE:I = 0x34

.field public static final blacklist SNAP1_Z_POSITIVE:I = 0x33

.field public static final blacklist SNAP2_X_NEGATIVE:I = 0x36

.field public static final blacklist SNAP2_X_POSITIVE:I = 0x35

.field public static final blacklist SNAP2_Y_NEGATIVE:I = 0x38

.field public static final blacklist SNAP2_Y_POSITIVE:I = 0x37

.field public static final blacklist SNAP2_Z_NEGATIVE:I = 0x3a

.field public static final blacklist SNAP2_Z_POSITIVE:I = 0x39

.field public static final blacklist SNAP_LEFT:I = 0x3b

.field public static final blacklist SNAP_RIGHT:I = 0x3c

.field public static final blacklist SNAP_X_NEGATIVE:I = 0x3

.field public static final blacklist SNAP_X_POSITIVE:I = 0x2

.field public static final blacklist SNAP_Y_NEGATIVE:I = 0x5

.field public static final blacklist SNAP_Y_POSITIVE:I = 0x4

.field public static final blacklist SNAP_Z_NEGATIVE:I = 0x7

.field public static final blacklist SNAP_Z_POSITIVE:I = 0x6

.field public static final blacklist SPEAKER_PHONE_OFF:I = 0x9

.field public static final blacklist SPEAKER_PHONE_ON:I = 0x8

.field public static final blacklist TILT:I = 0x48

.field public static final blacklist TILT_BACK:I = 0x17

.field public static final blacklist TILT_DOWN_LEVEL_1:I = 0x51

.field public static final blacklist TILT_DOWN_LEVEL_1_LAND:I = 0x5a

.field public static final blacklist TILT_DOWN_LEVEL_2:I = 0x52

.field public static final blacklist TILT_DOWN_LEVEL_2_LAND:I = 0x5b

.field public static final blacklist TILT_DOWN_LEVEL_3:I = 0x53

.field public static final blacklist TILT_DOWN_LEVEL_3_LAND:I = 0x5c

.field public static final blacklist TILT_FRONT:I = 0x16

.field public static final blacklist TILT_FRONT_BACK_END:I = 0x18

.field public static final blacklist TILT_LANDSCAPE_LEFT_LEVEL_1:I = 0x11

.field public static final blacklist TILT_LANDSCAPE_LEFT_LEVEL_2:I = 0x12

.field public static final blacklist TILT_LANDSCAPE_LEFT_RIGHT_STOP:I = 0x15

.field public static final blacklist TILT_LANDSCAPE_RIGHT_LEVEL_1:I = 0x13

.field public static final blacklist TILT_LANDSCAPE_RIGHT_LEVEL_2:I = 0x14

.field public static final blacklist TILT_LEFT:I = 0x19

.field public static final blacklist TILT_LEFT_RIGHT_END:I = 0x1b

.field public static final blacklist TILT_LEVEL_FLAT:I = 0x55

.field public static final blacklist TILT_LEVEL_ZERO:I = 0x54

.field public static final blacklist TILT_LEVEL_ZERO_LAND:I = 0x5d

.field public static final blacklist TILT_PORTRAIT_BACK:I = 0xc

.field public static final blacklist TILT_PORTRAIT_FRONT:I = 0xb

.field public static final blacklist TILT_PORTRAIT_FRONT_BACK_STOP:I = 0xd

.field public static final blacklist TILT_PORTRAIT_LEFT:I = 0xe

.field public static final blacklist TILT_PORTRAIT_LEFT_RIGHT_STOP:I = 0x10

.field public static final blacklist TILT_PORTRAIT_RIGHT:I = 0xf

.field public static final blacklist TILT_RIGHT:I = 0x1a

.field public static final blacklist TILT_TO_UNLOCK:I = 0x4b

.field public static final blacklist TILT_TO_UNLOCK_LAND:I = 0x61

.field public static final blacklist TILT_UP_LEVEL_1:I = 0x4e

.field public static final blacklist TILT_UP_LEVEL_1_LAND:I = 0x57

.field public static final blacklist TILT_UP_LEVEL_2:I = 0x4f

.field public static final blacklist TILT_UP_LEVEL_2_LAND:I = 0x58

.field public static final blacklist TILT_UP_LEVEL_3:I = 0x50

.field public static final blacklist TILT_UP_LEVEL_3_LAND:I = 0x59

.field public static final blacklist TWO_TAPPING:I = 0x1

.field public static final blacklist TWO_TAPPING_GYRO:I = 0x3f

.field public static final blacklist TWO_TIPPING_GYRO:I = 0x41

.field public static final blacklist VOLUMEDOWN:I = 0x46


# instance fields
.field private blacklist motion:I

.field private blacklist panningDx:I

.field private blacklist panningDxImage:I

.field private blacklist panningDy:I

.field private blacklist panningDyImage:I

.field private blacklist panningDz:I

.field private blacklist panningDzImage:I

.field private blacklist tilt:I

.field private blacklist walkingStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent$1;

    invoke-direct {v0}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->motion:I

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDx:I

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDy:I

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDz:I

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDxImage:I

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDyImage:I

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDzImage:I

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->walkingStatus:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMotion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->motion:I

    return v0
.end method

.method public blacklist getPanningDx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDx:I

    return v0
.end method

.method public blacklist getPanningDxImage()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDxImage:I

    return v0
.end method

.method public blacklist getPanningDy()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDy:I

    return v0
.end method

.method public blacklist getPanningDyImage()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDyImage:I

    return v0
.end method

.method public blacklist getPanningDz()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDz:I

    return v0
.end method

.method public blacklist getPanningDzImage()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDzImage:I

    return v0
.end method

.method public blacklist getSmartMotion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDz:I

    return v0
.end method

.method public blacklist getTilt()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->tilt:I

    return v0
.end method

.method public blacklist getWalkingStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->walkingStatus:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->motion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDx:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDz:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDxImage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDyImage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDzImage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->tilt:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->walkingStatus:I

    return-void
.end method

.method public blacklist setMotion(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->motion:I

    if-ltz p1, :cond_0

    const/16 v0, 0x74

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->motion:I

    :cond_0
    return-void
.end method

.method public blacklist setPanningDx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDx:I

    return-void
.end method

.method public blacklist setPanningDxImage(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDxImage:I

    return-void
.end method

.method public blacklist setPanningDy(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDy:I

    return-void
.end method

.method public blacklist setPanningDyImage(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDyImage:I

    return-void
.end method

.method public blacklist setPanningDz(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDz:I

    return-void
.end method

.method public blacklist setPanningDzImage(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDzImage:I

    return-void
.end method

.method public blacklist setTilt(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->tilt:I

    return-void
.end method

.method public blacklist setWalkingStatus(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->walkingStatus:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->motion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->motion:I

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OUT_OF_ELEVATOR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_ELEVATOR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SMART_RELAY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DIRECT_CALL_RIGHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DIRECT_CALL_LEFT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SCREEN_UP_STEADY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FLIP_SCREEN_UP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FLAT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SMART_ALERT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FLIP_SCREEN_DOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0xa -> :sswitch_a
        0x43 -> :sswitch_9
        0x47 -> :sswitch_8
        0x56 -> :sswitch_7
        0x63 -> :sswitch_6
        0x65 -> :sswitch_5
        0x66 -> :sswitch_4
        0x71 -> :sswitch_3
        0x72 -> :sswitch_2
        0x73 -> :sswitch_1
        0x74 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->motion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDxImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDyImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDzImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->tilt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->walkingStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

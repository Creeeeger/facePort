.class public Landroid/hardware/hdmi/HdmiDeviceInfo;
.super Ljava/lang/Object;
.source "HdmiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist ADDR_INTERNAL:I = 0x0

.field public static final whitelist ADDR_INVALID:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVICE_AUDIO_SYSTEM:I = 0x5

.field public static final whitelist DEVICE_INACTIVE:I = -0x1

.field public static final whitelist DEVICE_PLAYBACK:I = 0x4

.field public static final greylist-max-o DEVICE_PURE_CEC_SWITCH:I = 0x6

.field public static final whitelist DEVICE_RECORDER:I = 0x1

.field public static final whitelist DEVICE_RESERVED:I = 0x2

.field public static final whitelist DEVICE_TUNER:I = 0x3

.field public static final whitelist DEVICE_TV:I = 0x0

.field public static final greylist-max-o DEVICE_VIDEO_PROCESSOR:I = 0x7

.field private static final greylist-max-o HDMI_DEVICE_TYPE_CEC:I = 0x0

.field private static final greylist-max-o HDMI_DEVICE_TYPE_HARDWARE:I = 0x2

.field private static final greylist-max-o HDMI_DEVICE_TYPE_INACTIVE:I = 0x64

.field private static final greylist-max-o HDMI_DEVICE_TYPE_MHL:I = 0x1

.field public static final whitelist ID_INVALID:I = 0xffff

.field private static final greylist-max-o ID_OFFSET_CEC:I = 0x0

.field private static final greylist-max-o ID_OFFSET_HARDWARE:I = 0xc0

.field private static final greylist-max-o ID_OFFSET_MHL:I = 0x80

.field public static final whitelist INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field public static final whitelist PATH_INTERNAL:I = 0x0

.field public static final whitelist PATH_INVALID:I = 0xffff

.field public static final whitelist PORT_INVALID:I = -0x1

.field public static final whitelist VENDOR_ID_UNKNOWN:I = 0xffffff


# instance fields
.field private final greylist-max-o mAdopterId:I

.field private final blacklist mCecVersion:I

.field private final blacklist mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

.field private final greylist-max-o mDeviceId:I

.field private final greylist-max-o mDevicePowerStatus:I

.field private final greylist-max-o mDeviceType:I

.field private final greylist-max-o mDisplayName:Ljava/lang/String;

.field private final greylist-max-o mHdmiDeviceType:I

.field private final greylist-max-o mId:I

.field private final greylist-max-o mLogicalAddress:I

.field private final greylist-max-o mPhysicalAddress:I

.field private final greylist-max-o mPortId:I

.field private final greylist-max-o mVendorId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdopterId(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCecVersion(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceFeatures(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/DeviceFeatures;
    .locals 0

    iget-object p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceId(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDevicePowerStatus(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceType(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayName(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHdmiDeviceType(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogicalAddress(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhysicalAddress(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPortId(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVendorId(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>()V

    sput-object v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo$1;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    const v0, 0xffff

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    const/4 v1, 0x5

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    const-string v1, "Inactive"

    iput-object v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    sget-object v1, Landroid/hardware/hdmi/DeviceFeatures;->ALL_FEATURES_SUPPORT_UNKNOWN:Landroid/hardware/hdmi/DeviceFeatures;

    iput-object v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmHdmiDeviceType(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmPhysicalAddress(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmPortId(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmLogicalAddress(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmDeviceType(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmCecVersion(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmVendorId(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmDisplayName(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmDevicePowerStatus(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmDeviceFeatures(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmDeviceId(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmAdopterId(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    packed-switch v0, :pswitch_data_0

    const v0, 0xffff

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    goto :goto_0

    :pswitch_0
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-static {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForHardware(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-static {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForMhlDevice(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    invoke-static {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;Landroid/hardware/hdmi/HdmiDeviceInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)V

    return-void
.end method

.method public static blacklist cecDeviceBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .locals 3

    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;-><init>(ILandroid/hardware/hdmi/HdmiDeviceInfo$Builder-IA;)V

    return-object v0
.end method

.method public static blacklist hardwarePort(II)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3

    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;-><init>(ILandroid/hardware/hdmi/HdmiDeviceInfo$Builder-IA;)V

    invoke-virtual {v0, p0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDMI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist idForCecDevice(I)I
    .locals 1

    add-int/lit8 v0, p0, 0x0

    return v0
.end method

.method public static whitelist idForHardware(I)I
    .locals 1

    add-int/lit16 v0, p0, 0xc0

    return v0
.end method

.method public static whitelist idForMhlDevice(I)I
    .locals 1

    add-int/lit16 v0, p0, 0x80

    return v0
.end method

.method public static blacklist mhlDevice(IIII)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3

    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;-><init>(ILandroid/hardware/hdmi/HdmiDeviceInfo$Builder-IA;)V

    invoke-virtual {v0, p0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    const-string v1, "Mobile"

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setAdopterId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    iget-object v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public whitelist getAdopterId()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    return v0
.end method

.method public blacklist getCecVersion()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    return v0
.end method

.method public blacklist getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    return-object v0
.end method

.method public whitelist getDeviceId()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    return v0
.end method

.method public whitelist getDevicePowerStatus()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    return v0
.end method

.method public whitelist getDeviceType()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    return v0
.end method

.method public whitelist getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    return v0
.end method

.method public whitelist getLogicalAddress()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    return v0
.end method

.method public whitelist getPhysicalAddress()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    return v0
.end method

.method public whitelist getPortId()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    return v0
.end method

.method public whitelist getVendorId()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 12

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isCecDevice()Z
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isInactivated()Z
    .locals 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isMhlDevice()Z
    .locals 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isSourceType()Z
    .locals 4

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isMhlDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public blacklist toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .locals 2

    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;-><init>(Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/HdmiDeviceInfo$Builder-IA;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    const-string v2, "0x%04X"

    const-string v3, " "

    sparse-switch v1, :sswitch_data_0

    const-string v1, ""

    return-object v1

    :sswitch_0
    const-string v1, "Inactivated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "Hardware: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "MHL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "device_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "adopter_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_3
    const-string v1, "CEC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "logical_address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "0x%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "device_type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cec_version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vendor_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "display_name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "power_status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_0
    const-string v1, "physical_address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "port_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    if-nez v1, :cond_0

    const-string v1, "\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    invoke-virtual {v2}, Landroid/hardware/hdmi/DeviceFeatures;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

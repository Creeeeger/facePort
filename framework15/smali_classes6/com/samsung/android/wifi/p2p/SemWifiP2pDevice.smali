.class public Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
.super Ljava/lang/Object;
.source "SemWifiP2pDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVICE_TYPE_AV:I = 0x7

.field public static final whitelist DEVICE_TYPE_MONITOR:I = 0x17

.field public static final whitelist DEVICE_TYPE_PC:I = 0x4

.field public static final whitelist DEVICE_TYPE_PHONE:I = 0x1

.field public static final whitelist DEVICE_TYPE_REFRIGERATOR:I = 0x9

.field public static final whitelist DEVICE_TYPE_SIGNAGE:I = 0x8

.field public static final whitelist DEVICE_TYPE_SMARTHOME:I = 0x13

.field public static final whitelist DEVICE_TYPE_SPEAKER:I = 0x16

.field public static final whitelist DEVICE_TYPE_TABLET:I = 0x2

.field public static final whitelist DEVICE_TYPE_TV:I = 0x6

.field public static final blacklist DEVICE_TYPE_VST:I = 0x32

.field private static final blacklist FILTER_DEVICE_TYPE:I = 0xff00

.field private static final blacklist FILTER_ICON_INDEX:I = 0xff

.field private static final blacklist TAG:Ljava/lang/String; = "SemWifiP2pDevice"


# instance fields
.field private blacklist mDeviceAddress:Ljava/lang/String;

.field private blacklist mDeviceIconAttr:I

.field private blacklist mDeviceName:Ljava/lang/String;

.field private blacklist mScreenSharingDi:Ljava/lang/String;

.field private blacklist mScreenSharingExtendedInfo:I

.field private blacklist mScreenSharingInfo:I

.field private blacklist mServiceData:Ljava/lang/String;

.field private blacklist mStatus:I

.field private blacklist mSupportFwInvite:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDeviceAddress(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceAddress:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeviceIconAttr(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeviceName(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScreenSharingDi(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScreenSharingExtendedInfo(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScreenSharingInfo(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceData(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStatus(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSupportFwInvite(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mStatus:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mStatus:I

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mStatus:I

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->updateAdditionalInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mStatus:I

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceName:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;

    invoke-direct {v0, p3}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->getSamsungDeviceType()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    invoke-virtual {v0}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->getScreenSharingInfo()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    invoke-virtual {v0}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->getScreenSharingExtendedInfo()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    invoke-virtual {v0}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->getServiceData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->isFwInviteSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    invoke-virtual {v0}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->getScreenSharingDi()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private blacklist parseHex(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    const-string v1, "0x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0X"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/16 v1, 0x10

    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse hex string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWifiP2pDevice"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private blacklist updateAdditionalInfo(Ljava/lang/String;)V
    .locals 6

    nop

    const-string v0, " ss_dev_info=0x([0-9a-fA-F]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    nop

    const-string v1, " icon=0x([0-9a-fA-F]*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    nop

    const-string v2, " service=0x([0-9a-fA-F]*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    nop

    const-string v3, " ss_hashed_di=0x([0-9a-fA-F]*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    :cond_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    :cond_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    :cond_3
    const-string v4, " fw_invite"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-boolean v5, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    :cond_4
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeviceAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceIcon()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public whitelist getDeviceType()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public blacklist getScreenSharingExtendedInfo()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    return v0
.end method

.method public blacklist getScreenSharingHashedDi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getScreenSharingInfo()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    return v0
.end method

.method public blacklist getServiceData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isFwInviteSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n deviceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n screenSharingInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n screenSharingExtendedInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n deviceIconAttr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n serviceData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n supportFwInvite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateStatus(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mStatus:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingExtendedInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mScreenSharingDi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mDeviceIconAttr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mServiceData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mSupportFwInvite:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

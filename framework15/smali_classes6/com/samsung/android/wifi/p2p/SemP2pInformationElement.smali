.class public Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;
.super Ljava/lang/Object;
.source "SemP2pInformationElement.java"


# static fields
.field private static final blacklist DISCOVERY_ATTR_ICON:I = 0x0

.field private static final blacklist DISCOVERY_ATTR_SERVICE_DATA:I = 0x3

.field private static final blacklist FW_INVITE_OUI:I = 0xf00d

.field private static final blacklist P2P_DEVICE_DISCOVERY_OUI:I = 0xf00f

.field private static final blacklist SCREEN_SHARING_ATTR_DEV_INFO:I = 0x0

.field private static final blacklist SCREEN_SHARING_ATTR_DI_HASH:I = 0x3

.field private static final blacklist SCREEN_SHARING_ATTR_EXTENDED_INFO:I = 0x8

.field private static final blacklist SCREEN_SHARING_OUI:I = 0xf00c

.field private static final blacklist TAG:Ljava/lang/String; = "SemP2pInformationElement"


# instance fields
.field private blacklist mFwInviteSupported:Z

.field private blacklist mSamsungDeviceType:I

.field private blacklist mScreenSharingDi:Ljava/lang/String;

.field private blacklist mScreenSharingExtendedInfo:I

.field private blacklist mScreenSharingInfo:I

.field private blacklist mServiceData:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mSamsungDeviceType:I

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingInfo:I

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingExtendedInfo:I

    iput-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mFwInviteSupported:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mServiceData:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingDi:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-virtual {v1}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->parseDiscoveryIe(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->parseFwInviteIe()V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v2}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->parseScreenSharingIe(Ljava/nio/ByteBuffer;)V

    nop

    :goto_1
    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf00c
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist byteArrayToHexString([B)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    and-int/lit16 v4, v3, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist parseDiscoveryIe(Ljava/nio/ByteBuffer;)V
    .locals 4

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_2

    :cond_0
    new-array v2, v1, [B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-direct {p0, v2}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mServiceData:Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, v2}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->parseHex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mSamsungDeviceType:I

    nop

    :goto_1
    goto :goto_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist parseFwInviteIe()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mFwInviteSupported:Z

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

    const-string v3, "SemP2pInformationElement"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private blacklist parseScreenSharingIe(Ljava/nio/ByteBuffer;)V
    .locals 4

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_2

    :cond_0
    new-array v2, v1, [B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-direct {p0, v2}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->parseHex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingExtendedInfo:I

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, v2}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingDi:Ljava/lang/String;

    goto :goto_1

    :sswitch_2
    invoke-direct {p0, v2}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->parseHex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingInfo:I

    nop

    :goto_1
    goto :goto_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public blacklist getSamsungDeviceType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mSamsungDeviceType:I

    return v0
.end method

.method public blacklist getScreenSharingDi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingDi:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getScreenSharingExtendedInfo()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingExtendedInfo:I

    return v0
.end method

.method public blacklist getScreenSharingInfo()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingInfo:I

    return v0
.end method

.method public blacklist getServiceData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mServiceData:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isFwInviteSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mFwInviteSupported:Z

    return v0
.end method

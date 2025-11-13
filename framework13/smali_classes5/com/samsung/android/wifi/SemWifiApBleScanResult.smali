.class public Lcom/samsung/android/wifi/SemWifiApBleScanResult;
.super Ljava/lang/Object;
.source "SemWifiApBleScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist MHS_WIFI_6E_NETWORK:I

.field public static blacklist MHS_WIFI_6_NETWORK:I


# instance fields
.field public blacklist isDataSaverEnabled:Z

.field public blacklist isMobileDataLimitReached:Z

.field public blacklist isWifiProfileShareEnabled:Z

.field public blacklist mBLERssi:I

.field public blacklist mBattery:I

.field public blacklist mDevice:Ljava/lang/String;

.field public blacklist mMHSdeviceType:I

.field public blacklist mNetworkSignalStrength:I

.field public blacklist mNetworkType:I

.field public blacklist mSSID:Ljava/lang/String;

.field public blacklist mSecurity:I

.field public blacklist mTimeStamp:J

.field public blacklist mUserName:Ljava/lang/String;

.field public blacklist mWifiMac:Ljava/lang/String;

.field public blacklist mhidden:I

.field public blacklist version:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 49
    const/16 v0, 0x10

    sput v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->MHS_WIFI_6_NETWORK:I

    .line 50
    const/16 v0, 0x20

    sput v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->MHS_WIFI_6E_NETWORK:I

    .line 178
    new-instance v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiApBleScanResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 117
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/wifi/SemWifiApBleScanResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/SemWifiApBleScanResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIZZZ)V
    .locals 16
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "tMHSdeviceType"    # I
    .param p3, "tBattery"    # I
    .param p4, "tNetworkType"    # I
    .param p5, "tNetworkSignalStrength"    # I
    .param p6, "tWifiMAC"    # Ljava/lang/String;
    .param p7, "tUserName"    # Ljava/lang/String;
    .param p8, "tSSID"    # Ljava/lang/String;
    .param p9, "thidden"    # I
    .param p10, "tSecurity"    # I
    .param p11, "tTimeStamp"    # J
    .param p13, "tBLERssi"    # I
    .param p14, "ver"    # I
    .param p15, "dataSaverEnabled"    # Z
    .param p16, "isWifiProfileShareEnabled"    # Z
    .param p17, "isMobileDataLimitReached"    # Z

    .line 53
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    .line 55
    move/from16 v2, p3

    iput v2, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    .line 56
    move/from16 v3, p2

    iput v3, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    .line 57
    move/from16 v4, p4

    iput v4, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    .line 58
    move/from16 v5, p5

    iput v5, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkSignalStrength:I

    .line 59
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 60
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    .line 61
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    .line 62
    move/from16 v9, p9

    iput v9, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    .line 63
    move/from16 v10, p10

    iput v10, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    .line 64
    move-wide/from16 v11, p11

    iput-wide v11, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mTimeStamp:J

    .line 65
    move/from16 v13, p13

    iput v13, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    .line 66
    move/from16 v14, p14

    iput v14, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    .line 67
    move/from16 v15, p15

    iput-boolean v15, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isDataSaverEnabled:Z

    .line 68
    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isWifiProfileShareEnabled:Z

    .line 69
    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isMobileDataLimitReached:Z

    .line 70
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkSignalStrength:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 127
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 130
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    .line 132
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 133
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    .line 135
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mTimeStamp:J

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isDataSaverEnabled:Z

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isWifiProfileShareEnabled:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isMobileDataLimitReached:Z

    .line 143
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 146
    if-ne p0, p1, :cond_0

    .line 147
    const/4 v0, 0x1

    return v0

    .line 149
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 153
    .local v0, "other":Lcom/samsung/android/wifi/SemWifiApBleScanResult;
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 150
    .end local v0    # "other":Lcom/samsung/android/wifi/SemWifiApBleScanResult;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApBleScanResult{mMHSdeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDevice=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mBattery="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mNetworkType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mNetworkSignalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkSignalStrength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mWifiMac=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mUserName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mSSID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mhidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSecurity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBLERssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDataSaverEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isDataSaverEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isWifiProfileShareEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isWifiProfileShareEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMobileDataLimitReached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isMobileDataLimitReached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    :goto_0
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_2

    .line 98
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_3

    .line 104
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    :goto_3
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isDataSaverEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 112
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isWifiProfileShareEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 113
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isMobileDataLimitReached:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 114
    return-void
.end method

.class public Lcom/samsung/android/wifi/SemWifiApClientDetails;
.super Ljava/lang/Object;
.source "SemWifiApClientDetails.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceType;,
        Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;,
        Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist DEFAULT_CONNECTED_IP:Ljava/lang/String; = null

.field private static final blacklist MAX_DEVICE_NAME_LOG:I = 0x20

.field public static final blacklist REGEX_MAC:Ljava/lang/String; = "^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$"


# instance fields
.field protected blacklist isCellularStream:Z

.field protected blacklist mClientActiveSessionMobileData:J

.field protected blacklist mClientCurrentDayActiveSessionMobileData:J

.field protected blacklist mClientCurrentDayIntermediateTimeStamp:J

.field protected blacklist mClientCurrentDayUsedTotalTime:J

.field protected blacklist mClientDataLimitInBytes:J

.field protected blacklist mClientDeviceType:I

.field protected blacklist mClientEditedName:Ljava/lang/String;

.field protected blacklist mClientIpAddress:Ljava/lang/String;

.field protected blacklist mClientIsAutoHotspotDevice:Z

.field protected blacklist mClientIsConnected:Z

.field protected blacklist mClientIsDataPauseByTimeLimit:Z

.field protected blacklist mClientIsDataPausedFromUi:Z

.field protected blacklist mClientIsGuestDevice:Z

.field protected blacklist mClientLastElapsedTime:J

.field private blacklist mClientMac:Ljava/lang/String;

.field protected blacklist mClientName:Ljava/lang/String;

.field protected blacklist mClientNsdName:Ljava/lang/String;

.field protected blacklist mClientRealTimeBytes:J

.field protected blacklist mClientRealTimePackets:J

.field protected blacklist mClientRecentConnectionTimeStamp:J

.field protected blacklist mClientTimeLimitInMilliSec:J

.field protected blacklist mClientUsedMobileData:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "x.x.x.x"

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->DEFAULT_CONNECTED_IP:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiApClientDetails$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/wifi/SemWifiApClientDetails-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientEditedName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientEditedName:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientNsdName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientNsdName:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDeviceType:I

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDeviceType:I

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimitInBytes:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimitInBytes:J

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTimeLimitInMilliSec:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTimeLimitInMilliSec:J

    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayActiveSessionMobileData:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayActiveSessionMobileData:J

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientActiveSessionMobileData:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientActiveSessionMobileData:J

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientUsedMobileData:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientUsedMobileData:J

    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsConnected:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsConnected:Z

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayUsedTotalTime:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayUsedTotalTime:J

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRecentConnectionTimeStamp:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRecentConnectionTimeStamp:J

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientLastElapsedTime:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientLastElapsedTime:J

    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isCellularStream:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isCellularStream:Z

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRealTimePackets:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRealTimePackets:J

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRealTimeBytes:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRealTimeBytes:J

    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsGuestDevice:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsGuestDevice:Z

    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsAutoHotspotDevice:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsAutoHotspotDevice:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJJZZZ)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientEditedName:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientNsdName:Ljava/lang/String;

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    move/from16 v6, p6

    iput v6, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDeviceType:I

    move-wide/from16 v7, p7

    iput-wide v7, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimitInBytes:J

    move-wide/from16 v9, p9

    iput-wide v9, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTimeLimitInMilliSec:J

    move-wide/from16 v11, p11

    iput-wide v11, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientUsedMobileData:J

    move-wide/from16 v13, p13

    iput-wide v13, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayUsedTotalTime:J

    move/from16 v15, p15

    iput-boolean v15, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsConnected:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    iput-boolean v1, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientActiveSessionMobileData:J

    iput-wide v1, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayActiveSessionMobileData:J

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRecentConnectionTimeStamp:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientLastElapsedTime:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRealTimePackets:J

    iput-wide v1, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRealTimeBytes:J

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsGuestDevice:Z

    move/from16 v2, p16

    iput-boolean v2, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsAutoHotspotDevice:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isCellularStream:Z

    return-void
.end method

.method private blacklist getClientTodayCounterTotalTime()J
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static blacklist getTruncatedIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object p0
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientEditedName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientNsdName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDeviceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimitInBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTimeLimitInMilliSec:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsConnected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientActiveSessionMobileData:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientUsedMobileData:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayActiveSessionMobileData:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayUsedTotalTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRecentConnectionTimeStamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientLastElapsedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isCellularStream:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRealTimePackets:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRealTimeBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsGuestDevice:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsAutoHotspotDevice:Z

    return-void
.end method


# virtual methods
.method public blacklist compareTo(Lcom/samsung/android/wifi/SemWifiApClientDetails;)I
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->compareTo(Lcom/samsung/android/wifi/SemWifiApClientDetails;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getClientActiveSessionDuration()J
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientLastElapsedTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientLastElapsedTime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getClientActiveSessionMobileDataConsumed()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientActiveSessionMobileData:J

    return-wide v0
.end method

.method public blacklist getClientDataLimit()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimitInBytes:J

    return-wide v0
.end method

.method public blacklist getClientDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientEditedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientEditedName:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientNsdName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientNsdName:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getClientDeviceNameType()Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientEditedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->EDITED:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientNsdName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->NSD:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isMacString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->DEFAULT:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    return-object v0

    :cond_2
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->DHCP:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    return-object v0
.end method

.method public blacklist getClientIpAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getClientMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getClientRecentConnectionTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRecentConnectionTimeStamp:J

    return-wide v0
.end method

.method public blacklist getClientTimeLimit()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTimeLimitInMilliSec:J

    return-wide v0
.end method

.method public blacklist getClientTodayTotalMobileDataUsage()J
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayActiveSessionMobileData:J

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientUsedMobileData:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getClientTodayTotalTime()J
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayCounterTotalTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayUsedTotalTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getDeviceType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDeviceType:I

    return v0
.end method

.method public blacklist getTruncatedEditedNameForLog()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientEditedName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientEditedName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientEditedName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isClientConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsConnected:Z

    return v0
.end method

.method public blacklist isClientDataPauseByTimeLimit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    return v0
.end method

.method public blacklist isClientDataPausedByDataLimit()Z
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isCellularStream:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimitInBytes:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimitInBytes:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public blacklist isClientDataPausedByUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    return v0
.end method

.method public blacklist isClientInternetPaused()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByDataLimit()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPauseByTimeLimit()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByUser()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isDeviceAutoHotspotClient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsAutoHotspotDevice:Z

    return v0
.end method

.method public blacklist isDeviceGuestClient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsGuestDevice:Z

    return v0
.end method

.method public blacklist isMacString(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", editedName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getTruncatedEditedNameForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nsdName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientNsdName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IP=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getTruncatedIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  Type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDeviceType:I

    invoke-static {v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceType;->getDeviceTypeAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", MAC="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", D.T.="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimitInBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", T.L.="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTimeLimitInMilliSec:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isConn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsConnected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", connDuration=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientActiveSessionDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pausedFromUi=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pausedByTimer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', activeSessionData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientActiveSessionMobileData:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', todayData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', todayTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', RtPackets=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRealTimePackets:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", RtBytes=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRealTimeBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", guestSta=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsGuestDevice:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", autoHotspotSta=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsAutoHotspotDevice:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientEditedName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientNsdName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimitInBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTimeLimitInMilliSec:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsConnected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientActiveSessionMobileData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientUsedMobileData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayActiveSessionMobileData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayUsedTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRecentConnectionTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientLastElapsedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isCellularStream:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRealTimePackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRealTimeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsGuestDevice:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsAutoHotspotDevice:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

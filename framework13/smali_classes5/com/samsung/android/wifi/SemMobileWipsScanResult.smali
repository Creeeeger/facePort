.class public final Lcom/samsung/android/wifi/SemMobileWipsScanResult;
.super Ljava/lang/Object;
.source "SemMobileWipsScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;,
        Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;,
        Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;
    }
.end annotation


# static fields
.field public static final blacklist CHANNEL_WIDTH_160MHZ:I = 0x3

.field public static final blacklist CHANNEL_WIDTH_20MHZ:I = 0x0

.field public static final blacklist CHANNEL_WIDTH_40MHZ:I = 0x1

.field public static final blacklist CHANNEL_WIDTH_80MHZ:I = 0x2

.field public static final blacklist CHANNEL_WIDTH_80MHZ_PLUS_MHZ:I = 0x4

.field public static final blacklist CIPHER_CCMP:I = 0x3

.field public static final blacklist CIPHER_GCMP_256:I = 0x4

.field public static final blacklist CIPHER_NONE:I = 0x0

.field public static final blacklist CIPHER_NO_GROUP_ADDRESSED:I = 0x1

.field public static final blacklist CIPHER_SMS4:I = 0x5

.field public static final blacklist CIPHER_TKIP:I = 0x2

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/SemMobileWipsScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_80211mc_RESPONDER:J = 0x2L

.field public static final blacklist FLAG_PASSPOINT_NETWORK:J = 0x1L

.field public static final blacklist KEY_MGMT_EAP:I = 0x2

.field public static final blacklist KEY_MGMT_EAP_SHA256:I = 0x6

.field public static final blacklist KEY_MGMT_EAP_SUITE_B_192:I = 0xa

.field public static final blacklist KEY_MGMT_FILS_SHA256:I = 0xf

.field public static final blacklist KEY_MGMT_FILS_SHA384:I = 0x10

.field public static final blacklist KEY_MGMT_FT_EAP:I = 0x4

.field public static final blacklist KEY_MGMT_FT_PSK:I = 0x3

.field public static final blacklist KEY_MGMT_FT_SAE:I = 0xb

.field public static final blacklist KEY_MGMT_NONE:I = 0x0

.field public static final blacklist KEY_MGMT_OSEN:I = 0x7

.field public static final blacklist KEY_MGMT_OWE:I = 0x9

.field public static final blacklist KEY_MGMT_OWE_TRANSITION:I = 0xc

.field public static final blacklist KEY_MGMT_PSK:I = 0x1

.field public static final blacklist KEY_MGMT_PSK_SHA256:I = 0x5

.field public static final blacklist KEY_MGMT_SAE:I = 0x8

.field public static final blacklist KEY_MGMT_WAPI_CERT:I = 0xe

.field public static final blacklist KEY_MGMT_WAPI_PSK:I = 0xd

.field public static final blacklist PROTOCOL_NONE:I = 0x0

.field public static final blacklist PROTOCOL_OSEN:I = 0x3

.field public static final blacklist PROTOCOL_RSN:I = 0x2

.field public static final blacklist PROTOCOL_WAPI:I = 0x4

.field public static final blacklist PROTOCOL_WPA:I = 0x1

.field public static final blacklist UNSPECIFIED:I = -0x1

.field public static final blacklist WIFI_STANDARD_11AC:I = 0x5

.field public static final blacklist WIFI_STANDARD_11AX:I = 0x6

.field public static final blacklist WIFI_STANDARD_11N:I = 0x4

.field public static final blacklist WIFI_STANDARD_LEGACY:I = 0x1

.field public static final blacklist WIFI_STANDARD_UNKNOWN:I


# instance fields
.field public blacklist BSSID:Ljava/lang/String;

.field public blacklist SSID:Ljava/lang/String;

.field public blacklist anqpDomainId:I

.field public blacklist anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

.field public blacklist anqpLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist capabilities:Ljava/lang/String;

.field public blacklist centerFreq0:I

.field public blacklist centerFreq1:I

.field public blacklist channelWidth:I

.field public blacklist distanceCm:I

.field public blacklist distanceSdCm:I

.field public blacklist flags:J

.field public blacklist frequency:I

.field public blacklist hessid:J

.field public blacklist ifaceName:Ljava/lang/String;

.field public blacklist informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

.field public blacklist is80211McRTTResponder:Z

.field public blacklist level:I

.field private blacklist mWifiStandard:I

.field public blacklist numUsage:I

.field public blacklist operatorFriendlyName:Ljava/lang/CharSequence;

.field public blacklist radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

.field public blacklist seen:J

.field public blacklist timestamp:J

.field public blacklist untrusted:Z

.field public blacklist venueName:Ljava/lang/CharSequence;

.field public blacklist wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmWifiStandard(Lcom/samsung/android/wifi/SemMobileWipsScanResult;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 213
    new-instance v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/wifi/SemMobileWipsScanResult;)V
    .locals 2
    .param p1, "source"    # Lcom/samsung/android/wifi/SemMobileWipsScanResult;

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    if-eqz p1, :cond_0

    .line 528
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    .line 529
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->SSID:Ljava/lang/String;

    .line 530
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->BSSID:Ljava/lang/String;

    .line 531
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->hessid:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->hessid:J

    .line 532
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpDomainId:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpDomainId:I

    .line 533
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    .line 534
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    .line 535
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->capabilities:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->capabilities:Ljava/lang/String;

    .line 536
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->level:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->level:I

    .line 537
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    .line 538
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->channelWidth:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->channelWidth:I

    .line 539
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq0:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq0:I

    .line 540
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq1:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq1:I

    .line 541
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->timestamp:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->timestamp:J

    .line 542
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceCm:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceCm:I

    .line 543
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceSdCm:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceSdCm:I

    .line 544
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->seen:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->seen:J

    .line 545
    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->untrusted:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->untrusted:Z

    .line 546
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->numUsage:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->numUsage:I

    .line 547
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->venueName:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->venueName:Ljava/lang/CharSequence;

    .line 548
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    .line 549
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    .line 550
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    .line 551
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    .line 552
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->ifaceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->ifaceName:Ljava/lang/String;

    .line 554
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJ)V
    .locals 15
    .param p1, "wifiSsid"    # Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "hessid"    # J
    .param p5, "anqpDomainId"    # I
    .param p6, "osuProviders"    # [B
    .param p7, "caps"    # Ljava/lang/String;
    .param p8, "level"    # I
    .param p9, "frequency"    # I
    .param p10, "tsf"    # J

    .line 443
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    .line 445
    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "<unknown ssid>"

    :goto_0
    iput-object v3, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->SSID:Ljava/lang/String;

    .line 446
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->BSSID:Ljava/lang/String;

    .line 447
    move-wide/from16 v4, p3

    iput-wide v4, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->hessid:J

    .line 448
    move/from16 v6, p5

    iput v6, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpDomainId:I

    .line 449
    const/4 v7, 0x0

    if-eqz v2, :cond_1

    .line 450
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    iput-object v8, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    .line 451
    new-instance v9, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    const v10, 0x506f9a

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v2}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;-><init>(II[B)V

    aput-object v9, v8, v7

    .line 455
    :cond_1
    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->capabilities:Ljava/lang/String;

    .line 456
    move/from16 v9, p8

    iput v9, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->level:I

    .line 457
    move/from16 v10, p9

    iput v10, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    .line 458
    move-wide/from16 v11, p10

    iput-wide v11, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->timestamp:J

    .line 459
    const/4 v13, -0x1

    iput v13, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceCm:I

    .line 460
    iput v13, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceSdCm:I

    .line 461
    iput v13, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->channelWidth:I

    .line 462
    iput v13, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq0:I

    .line 463
    iput v13, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq1:I

    .line 464
    const-wide/16 v13, 0x0

    iput-wide v13, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    .line 465
    const/4 v13, 0x0

    iput-object v13, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    .line 466
    iput v7, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    .line 467
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;Ljava/lang/String;Ljava/lang/String;IIJII)V
    .locals 2
    .param p1, "wifiSsid"    # Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "distCm"    # I
    .param p9, "distSdCm"    # I

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput-object p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    .line 472
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown ssid>"

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->SSID:Ljava/lang/String;

    .line 473
    iput-object p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->BSSID:Ljava/lang/String;

    .line 474
    iput-object p3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->capabilities:Ljava/lang/String;

    .line 475
    iput p4, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->level:I

    .line 476
    iput p5, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    .line 477
    iput-wide p6, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->timestamp:J

    .line 478
    iput p8, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceCm:I

    .line 479
    iput p9, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceSdCm:I

    .line 480
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->channelWidth:I

    .line 481
    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq0:I

    .line 482
    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq1:I

    .line 483
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    .line 485
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    .line 486
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .locals 17
    .param p1, "wifiSsid"    # Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;
    .param p2, "Ssid"    # Ljava/lang/String;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "hessid"    # J
    .param p6, "anqpDomainId"    # I
    .param p7, "caps"    # Ljava/lang/String;
    .param p8, "level"    # I
    .param p9, "frequency"    # I
    .param p10, "tsf"    # J
    .param p12, "distCm"    # I
    .param p13, "distSdCm"    # I
    .param p14, "channelWidth"    # I
    .param p15, "centerFreq0"    # I
    .param p16, "centerFreq1"    # I
    .param p17, "is80211McRTTResponder"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-wide/from16 v9, p10

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p16

    move/from16 v16, p17

    .line 518
    invoke-direct/range {v0 .. v16}, Lcom/samsung/android/wifi/SemMobileWipsScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V

    .line 520
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    .line 521
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .locals 16
    .param p1, "Ssid"    # Ljava/lang/String;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "hessid"    # J
    .param p5, "anqpDomainId"    # I
    .param p6, "caps"    # Ljava/lang/String;
    .param p7, "level"    # I
    .param p8, "frequency"    # I
    .param p9, "tsf"    # J
    .param p11, "distCm"    # I
    .param p12, "distSdCm"    # I
    .param p13, "channelWidth"    # I
    .param p14, "centerFreq0"    # I
    .param p15, "centerFreq1"    # I
    .param p16, "is80211McRTTResponder"    # Z

    .line 491
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 492
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->SSID:Ljava/lang/String;

    .line 493
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->BSSID:Ljava/lang/String;

    .line 494
    move-wide/from16 v3, p3

    iput-wide v3, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->hessid:J

    .line 495
    move/from16 v5, p5

    iput v5, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpDomainId:I

    .line 496
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->capabilities:Ljava/lang/String;

    .line 497
    move/from16 v7, p7

    iput v7, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->level:I

    .line 498
    move/from16 v8, p8

    iput v8, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    .line 499
    move-wide/from16 v9, p9

    iput-wide v9, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->timestamp:J

    .line 500
    move/from16 v11, p11

    iput v11, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceCm:I

    .line 501
    move/from16 v12, p12

    iput v12, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceSdCm:I

    .line 502
    move/from16 v13, p13

    iput v13, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->channelWidth:I

    .line 503
    move/from16 v14, p14

    iput v14, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq0:I

    .line 504
    move/from16 v15, p15

    iput v15, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq1:I

    .line 505
    if-eqz p16, :cond_0

    .line 506
    const-wide/16 v1, 0x2

    iput-wide v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    goto :goto_0

    .line 508
    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    .line 510
    :goto_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    .line 511
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    .line 512
    return-void
.end method

.method public static blacklist is24GHz(I)Z
    .locals 1
    .param p0, "freq"    # I

    .line 586
    const/16 v0, 0x960

    if-le p0, v0, :cond_0

    const/16 v0, 0x9c4

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist is5GHz(I)Z
    .locals 1
    .param p0, "freq"    # I

    .line 593
    const/16 v0, 0x1324

    if-le p0, v0, :cond_0

    const/16 v0, 0x170c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist is6GHz(I)Z
    .locals 1
    .param p0, "freq"    # I

    .line 600
    const/16 v0, 0x1725

    if-le p0, v0, :cond_0

    const/16 v0, 0x1bd5

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist wifiStandardToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "standard"    # I

    .line 567
    packed-switch p0, :pswitch_data_0

    .line 579
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 575
    :pswitch_1
    const-string v0, "11ax"

    return-object v0

    .line 573
    :pswitch_2
    const-string v0, "11ac"

    return-object v0

    .line 571
    :pswitch_3
    const-string v0, "11n"

    return-object v0

    .line 569
    :pswitch_4
    const-string v0, "legacy"

    return-object v0

    .line 577
    :pswitch_5
    const-string/jumbo v0, "unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blacklist clearFlag(J)V
    .locals 4
    .param p1, "flag"    # J

    .line 633
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    not-long v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    .line 634
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 706
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getInformationElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;",
            ">;"
        }
    .end annotation

    .line 664
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWifiStandard()I
    .locals 1

    .line 608
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    return v0
.end method

.method public blacklist is24GHz()Z
    .locals 1

    .line 646
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    invoke-static {v0}, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->is24GHz(I)Z

    move-result v0

    return v0
.end method

.method public blacklist is5GHz()Z
    .locals 1

    .line 651
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    invoke-static {v0}, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->is5GHz(I)Z

    move-result v0

    return v0
.end method

.method public blacklist is6GHz()Z
    .locals 1

    .line 656
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    invoke-static {v0}, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->is6GHz(I)Z

    move-result v0

    return v0
.end method

.method public blacklist is80211mcResponder()Z
    .locals 4

    .line 637
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isPasspointNetwork()Z
    .locals 4

    .line 641
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setFlag(J)V
    .locals 2
    .param p1, "flag"    # J

    .line 624
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    .line 625
    return-void
.end method

.method public blacklist setWifiStandard(I)V
    .locals 0
    .param p1, "standard"    # I

    .line 615
    iput p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    .line 616
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    .line 669
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 670
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "<none>"

    .line 672
    .local v1, "none":Ljava/lang/String;
    const-string v2, "SSID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 673
    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    if-nez v3, :cond_0

    const-string v3, "<unknown ssid>"

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 674
    const-string v3, ", BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 675
    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->BSSID:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v3, v1

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 676
    const-string v3, ", capabilities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 677
    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->capabilities:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v3, v1

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 678
    const-string v3, ", level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->level:I

    .line 679
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 680
    const-string v3, ", frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    .line 681
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 682
    const-string v3, ", timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->timestamp:J

    .line 683
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 684
    const-string v2, ", distance: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceCm:I

    const-string v4, "?"

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 685
    const-string v3, "(cm)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 686
    const-string v2, ", distanceSd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v6, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceSdCm:I

    if-eq v6, v5, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 687
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 689
    const-string v2, ", passpoint: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    iget-wide v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    const-string/jumbo v2, "yes"

    goto :goto_1

    :cond_5
    const-string v2, "no"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    const-string v2, ", ChannelBandwidth: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->channelWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 692
    const-string v2, ", centerFreq0: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 693
    const-string v2, ", centerFreq1: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 694
    const-string v2, ", standard: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    invoke-static {v3}, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiStandardToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 695
    const-string v2, ", 80211mcResponder: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 696
    iget-wide v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    const-wide/16 v6, 0x2

    and-long/2addr v2, v6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    const-string v2, "is supported"

    goto :goto_2

    :cond_6
    const-string v2, "is not supported"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 697
    const-string v2, ", Radio Chain Infos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 698
    const-string v2, ", interface name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->ifaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 699
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 713
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 714
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 717
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 721
    iget-wide v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->hessid:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 722
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpDomainId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 724
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    iget-wide v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->timestamp:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 727
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceCm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->distanceSdCm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->channelWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->centerFreq1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->mWifiStandard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    iget-wide v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->seen:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 734
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->untrusted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->numUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->venueName:Ljava/lang/CharSequence;

    const-string v2, ""

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 738
    iget-wide v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 739
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 741
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpLines:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 742
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 744
    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpLines:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    :cond_3
    goto :goto_4

    .line 747
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    if-eqz v0, :cond_5

    .line 750
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    array-length v3, v0

    move v4, v1

    :goto_5
    if-ge v4, v3, :cond_6

    aget-object v5, v0, v4

    .line 752
    .local v5, "element":Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;
    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;->getVendorId()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;->getElementId()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;->getPayload()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;->getPayload()[B

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 751
    .end local v5    # "element":Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 758
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    if-eqz v0, :cond_8

    .line 762
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    array-length v3, v1

    if-ge v0, v3, :cond_7

    .line 764
    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    iget-object v1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;->level:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .end local v0    # "i":I
    :cond_7
    goto :goto_7

    .line 768
    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    :goto_7
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->ifaceName:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 771
    return-void
.end method

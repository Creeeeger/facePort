.class public Landroid/telephony/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ServiceState$RoamingType;,
        Landroid/telephony/ServiceState$RilRadioTechnology;,
        Landroid/telephony/ServiceState$DuplexMode;,
        Landroid/telephony/ServiceState$FrequencyRange;,
        Landroid/telephony/ServiceState$RegState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o DBG:Z = false

.field public static final whitelist DUPLEX_MODE_FDD:I = 0x1

.field public static final whitelist DUPLEX_MODE_TDD:I = 0x2

.field public static final whitelist DUPLEX_MODE_UNKNOWN:I = 0x0

.field private static final blacklist EXTRA_SERVICE_STATE:Ljava/lang/String; = "android.intent.extra.SERVICE_STATE"

.field public static final blacklist FREQUENCY_RANGE_HIGH:I = 0x3

.field public static final blacklist FREQUENCY_RANGE_LOW:I = 0x1

.field public static final blacklist FREQUENCY_RANGE_MID:I = 0x2

.field public static final blacklist FREQUENCY_RANGE_MMWAVE:I = 0x4

.field private static final blacklist FREQUENCY_RANGE_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FREQUENCY_RANGE_UNKNOWN:I = 0x0

.field static final greylist-max-o LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final blacklist MSIM_SUB_MODE_DSDA:I = 0x1

.field public static final blacklist MSIM_SUB_MODE_DSDS:I = 0x0

.field private static final greylist-max-o NEXT_RIL_RADIO_TECHNOLOGY:I = 0x15

.field public static final blacklist NR_5G_BEARER_STATUS_ALLOCATED:I = 0x1

.field public static final blacklist NR_5G_BEARER_STATUS_MMW_ALLOCATED:I = 0x2

.field public static final blacklist NR_5G_BEARER_STATUS_NOT_ALLOCATED:I = 0x0

.field public static final blacklist OPTIONAL_RADIO_TECH_2G_DTM:I = 0x2

.field public static final blacklist OPTIONAL_RADIO_TECH_DC:I = 0x1

.field public static final blacklist OPTIONAL_RADIO_TECH_FIVE_G_EVO:I = 0x5

.field public static final blacklist OPTIONAL_RADIO_TECH_FOUR_POINT_FIVE_G:I = 0x3

.field public static final blacklist OPTIONAL_RADIO_TECH_FOUR_POINT_FIVE_G_PLUS:I = 0x4

.field public static final blacklist OPTIONAL_RADIO_TECH_NONE:I = 0x0

.field public static final blacklist REGISTRATION_TYPE_CELLULAR:I = 0x1

.field public static final blacklist REGISTRATION_TYPE_NOCELLULAR:I = 0x2

.field public static final blacklist REGISTRATION_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist RIL_FEMTOCELL_INDICATOR_LTE:I = 0x1

.field public static final blacklist RIL_FEMTOCELL_INDICATOR_NONE:I = 0x0

.field public static final greylist-max-o RIL_RADIO_CDMA_TECHNOLOGY_BITMASK:I = 0x18f8

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_1xRTT:I = 0x6

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_EDGE:I = 0x2

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_EHRPD:I = 0xd

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_EVDO_0:I = 0x7

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_EVDO_A:I = 0x8

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_EVDO_B:I = 0xc

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_GPRS:I = 0x1

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_GSM:I = 0x10

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_HSDPA:I = 0x9

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_HSPA:I = 0xb

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_HSPAP:I = 0xf

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_HSUPA:I = 0xa

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_IS95A:I = 0x4

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_IS95B:I = 0x5

.field public static final greylist-max-p RIL_RADIO_TECHNOLOGY_IWLAN:I = 0x12

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_LTE:I = 0xe

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_LTE_CA:I = 0x13

.field public static final blacklist RIL_RADIO_TECHNOLOGY_NR:I = 0x14

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_TD_SCDMA:I = 0x11

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_UMTS:I = 0x3

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_UNKNOWN:I = 0x0

.field public static final whitelist ROAMING_TYPE_DOMESTIC:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROAMING_TYPE_INTERNATIONAL:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROAMING_TYPE_NOT_ROAMING:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROAMING_TYPE_UNKNOWN:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SEM_ROAMING_TYPE_DOMESTIC:I = 0x2

.field public static final whitelist SEM_ROAMING_TYPE_INTERNATIONAL:I = 0x3

.field public static final whitelist SEM_ROAMING_TYPE_NOT_ROAMING:I = 0x0

.field public static final whitelist SEM_ROAMING_TYPE_UNKNOWN:I = 0x1

.field public static final blacklist SNAPSHOT_STATUS_ACTIVATED:I = 0x1

.field public static final blacklist SNAPSHOT_STATUS_DEACTIVATED:I = 0x0

.field public static final whitelist STATE_EMERGENCY_ONLY:I = 0x2

.field public static final whitelist STATE_IN_SERVICE:I = 0x0

.field public static final whitelist STATE_OUT_OF_SERVICE:I = 0x1

.field public static final whitelist STATE_POWER_OFF:I = 0x3

.field public static final whitelist UNKNOWN_ID:I = -0x1

.field static final greylist-max-o VDBG:Z = false


# instance fields
.field private blacklist mArfcnRsrpBoost:I

.field private greylist-max-p mCdmaDefaultRoamingIndicator:I

.field private greylist-max-p mCdmaEriIconIndex:I

.field private greylist-max-p mCdmaEriIconMode:I

.field private greylist-max-p mCdmaRoamingIndicator:I

.field private greylist-max-o mCellBandwidths:[I

.field private greylist-max-o mChannelNumber:I

.field private greylist-max-p mCssIndicator:Z

.field private greylist-max-o mDataRegState:I

.field private blacklist mFemtocellIndicator:I

.field private greylist-max-o mIsDataRoamingFromRegistration:Z

.field private greylist-max-o mIsEmergencyOnly:Z

.field private blacklist mIsIwlanPreferred:Z

.field private greylist-max-p mIsManualNetworkSelection:Z

.field private blacklist mIsPsOnlyReg:Z

.field private blacklist mIsSprDisplayRoam:Z

.field private blacklist mMobileDataRegState:I

.field private blacklist mMobileDataRoamingType:I

.field private blacklist mMsimSubmode:I

.field private greylist-max-p mNetworkId:I

.field private final blacklist mNetworkRegistrationInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/NetworkRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNrFrequencyRange:I

.field private blacklist mOperatorAlphaLong:Ljava/lang/String;

.field private blacklist mOperatorAlphaLongRaw:Ljava/lang/String;

.field private blacklist mOperatorAlphaShort:Ljava/lang/String;

.field private blacklist mOperatorAlphaShortRaw:Ljava/lang/String;

.field private blacklist mOperatorNumeric:Ljava/lang/String;

.field private blacklist mOptionalRadioTech:I

.field private blacklist mRilMobileDataRadioTechnology:I

.field private blacklist mSnapshotStatus:I

.field private greylist-max-p mSystemId:I

.field private greylist-max-o mVoiceRegState:I

.field private blacklist mVoiceRegType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 141
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    .line 142
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 143
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 144
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 145
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 146
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 141
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/telephony/ServiceState;->FREQUENCY_RANGE_ORDER:Ljava/util/List;

    .line 678
    new-instance v0, Landroid/telephony/ServiceState$1;

    invoke-direct {v0}, Landroid/telephony/ServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 279
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 430
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 443
    const/4 v1, 0x0

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 449
    iput v1, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 451
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 460
    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    .line 463
    iput v1, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    .line 466
    iput v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    .line 471
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    .line 474
    iput v1, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    .line 477
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsSprDisplayRoam:Z

    .line 480
    iput v1, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 483
    iput v1, p0, Landroid/telephony/ServiceState;->mMsimSubmode:I

    .line 532
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 279
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 430
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 443
    const/4 v1, 0x0

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 449
    iput v1, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 451
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 460
    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    .line 463
    iput v1, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    .line 466
    iput v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    .line 471
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    .line 474
    iput v1, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    .line 477
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsSprDisplayRoam:Z

    .line 480
    iput v1, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 483
    iput v1, p0, Landroid/telephony/ServiceState;->mMsimSubmode:I

    .line 595
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 596
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 597
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 600
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 602
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 610
    monitor-enter v2

    .line 611
    :try_start_0
    const-class v3, Landroid/telephony/NetworkRegistrationInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Landroid/telephony/NetworkRegistrationInfo;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 612
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    .line 628
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsSprDisplayRoam:Z

    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mMsimSubmode:I

    .line 632
    return-void

    .line 612
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 279
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 430
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 443
    const/4 v1, 0x0

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 449
    iput v1, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 451
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 460
    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    .line 463
    iput v1, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    .line 466
    iput v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    .line 471
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    .line 474
    iput v1, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    .line 477
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsSprDisplayRoam:Z

    .line 480
    iput v1, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 483
    iput v1, p0, Landroid/telephony/ServiceState;->mMsimSubmode:I

    .line 540
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 541
    return-void
.end method

.method public static greylist-max-p bearerBitmapHasCdma(I)Z
    .locals 1
    .param p0, "networkTypeBitmask"    # I

    .line 2246
    nop

    .line 2247
    invoke-static {p0}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x18f8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2246
    :goto_0
    return v0
.end method

.method public static greylist-max-r bitmaskHasTech(II)Z
    .locals 3
    .param p0, "bearerBitmask"    # I
    .param p1, "radioTech"    # I

    .line 2253
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 2254
    return v0

    .line 2255
    :cond_0
    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    .line 2256
    add-int/lit8 v2, p1, -0x1

    shl-int v2, v0, v2

    and-int/2addr v2, p0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 2258
    :cond_2
    return v1
.end method

.method public static greylist-max-o convertBearerBitmaskToNetworkTypeBitmask(I)I
    .locals 3
    .param p0, "bearerBitmask"    # I

    .line 2320
    if-nez p0, :cond_0

    .line 2321
    const/4 v0, 0x0

    return v0

    .line 2323
    :cond_0
    const/4 v0, 0x0

    .line 2324
    .local v0, "networkTypeBitmask":I
    const/4 v1, 0x0

    .local v1, "bearerInt":I
    :goto_0
    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    .line 2325
    invoke-static {p0, v1}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2326
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v2

    or-int/2addr v0, v2

    .line 2324
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2329
    .end local v1    # "bearerInt":I
    :cond_2
    return v0
.end method

.method public static greylist-max-o convertNetworkTypeBitmaskToBearerBitmask(I)I
    .locals 3
    .param p0, "networkTypeBitmask"    # I

    .line 2299
    if-nez p0, :cond_0

    .line 2300
    const/4 v0, 0x0

    return v0

    .line 2302
    :cond_0
    const/4 v0, 0x0

    .line 2303
    .local v0, "bearerBitmask":I
    const/4 v1, 0x0

    .local v1, "bearerInt":I
    :goto_0
    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    .line 2304
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    invoke-static {p0, v2}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2305
    invoke-static {v1}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v2

    or-int/2addr v0, v2

    .line 2303
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2308
    .end local v1    # "bearerInt":I
    :cond_2
    return v0
.end method

.method private static greylist-max-p equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 1772
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static blacklist frequencyRangeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "range"    # I

    .line 1348
    packed-switch p0, :pswitch_data_0

    .line 1355
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1353
    :pswitch_0
    const-string v0, "MMWAVE"

    return-object v0

    .line 1352
    :pswitch_1
    const-string v0, "HIGH"

    return-object v0

    .line 1351
    :pswitch_2
    const-string v0, "MID"

    return-object v0

    .line 1350
    :pswitch_3
    const-string v0, "LOW"

    return-object v0

    .line 1349
    :pswitch_4
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final blacklist getBetterNRFrequencyRange(II)I
    .locals 3
    .param p0, "range1"    # I
    .param p1, "range2"    # I

    .line 2467
    sget-object v0, Landroid/telephony/ServiceState;->FREQUENCY_RANGE_ORDER:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-le v1, v0, :cond_0

    .line 2468
    move v0, p0

    goto :goto_0

    .line 2469
    :cond_0
    move v0, p1

    .line 2467
    :goto_0
    return v0
.end method

.method public static greylist-max-o getBitmaskForTech(I)I
    .locals 2
    .param p0, "radioTech"    # I

    .line 2263
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    .line 2264
    add-int/lit8 v1, p0, -0x1

    shl-int/2addr v0, v1

    return v0

    .line 2266
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o getBitmaskFromString(Ljava/lang/String;)I
    .locals 8
    .param p0, "bearerList"    # Ljava/lang/String;

    .line 2271
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2272
    .local v0, "bearers":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2273
    .local v1, "bearerBitmask":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 2274
    .local v5, "bearer":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2276
    .local v6, "bearerInt":I
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 2279
    nop

    .line 2281
    if-nez v6, :cond_0

    .line 2282
    return v3

    .line 2285
    :cond_0
    invoke-static {v6}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v7

    or-int/2addr v1, v7

    .line 2273
    .end local v5    # "bearer":Ljava/lang/String;
    .end local v6    # "bearerInt":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2277
    .restart local v5    # "bearer":Ljava/lang/String;
    .restart local v6    # "bearerInt":I
    :catch_0
    move-exception v2

    .line 2278
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    return v3

    .line 2287
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "bearer":Ljava/lang/String;
    .end local v6    # "bearerInt":I
    :cond_1
    return v1
.end method

.method public static final greylist-max-o getRoamingLogString(I)Ljava/lang/String;
    .locals 1
    .param p0, "roamingType"    # I

    .line 491
    packed-switch p0, :pswitch_data_0

    .line 505
    const-string v0, "UNKNOWN"

    return-object v0

    .line 502
    :pswitch_0
    const-string v0, "International Roaming"

    return-object v0

    .line 499
    :pswitch_1
    const-string v0, "Domestic Roaming"

    return-object v0

    .line 496
    :pswitch_2
    const-string/jumbo v0, "roaming"

    return-object v0

    .line 493
    :pswitch_3
    const-string/jumbo v0, "home"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist init(Z)V
    .locals 7
    .param p1, "legacyMode"    # Z

    .line 1541
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1542
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1543
    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 1544
    const/4 v2, 0x0

    new-array v3, v2, [I

    iput-object v3, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 1545
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 1546
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 1547
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 1548
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 1549
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1550
    iput v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1551
    iput v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1552
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 1553
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1554
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 1555
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 1556
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1557
    iput v2, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 1558
    iput v2, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 1560
    iput v2, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    .line 1561
    iput v2, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    .line 1562
    iput v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    .line 1563
    iput v2, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    .line 1564
    iput v2, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    .line 1565
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    .line 1566
    iput v2, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    .line 1567
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsSprDisplayRoam:Z

    .line 1568
    iput v2, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 1569
    iput v2, p0, Landroid/telephony/ServiceState;->mMsimSubmode:I

    .line 1571
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v1

    .line 1572
    :try_start_0
    iget-object v4, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1573
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1574
    invoke-virtual {v4, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 1575
    invoke-virtual {v4, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 1576
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 1577
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    .line 1573
    invoke-virtual {p0, v4}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1578
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1579
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 1580
    invoke-virtual {v4, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1581
    invoke-virtual {v0, v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1582
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1578
    invoke-virtual {p0, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1583
    if-nez p1, :cond_0

    .line 1584
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1585
    invoke-virtual {v0, v6}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1586
    invoke-virtual {v0, v6}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1587
    invoke-virtual {v0, v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1588
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1584
    invoke-virtual {p0, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1590
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1591
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 1592
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 1593
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 1594
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 1595
    return-void

    .line 1590
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static greylist isCdma(I)Z
    .locals 1
    .param p0, "radioTechnology"    # I

    .line 2227
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

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

.method public static blacklist isFrequencyRangeValid(I)Z
    .locals 2
    .param p0, "frequencyRange"    # I

    .line 2610
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 2616
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2614
    :cond_1
    :goto_0
    return v0
.end method

.method public static greylist isGsm(I)Z
    .locals 2
    .param p0, "radioTechnology"    # I

    .line 2208
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1

    const/16 v1, 0xe

    if-eq p0, v1, :cond_1

    const/16 v1, 0xf

    if-eq p0, v1, :cond_1

    const/16 v1, 0x10

    if-eq p0, v1, :cond_1

    const/16 v1, 0x11

    if-eq p0, v1, :cond_1

    const/16 v1, 0x12

    if-eq p0, v1, :cond_1

    const/16 v1, 0x13

    if-eq p0, v1, :cond_1

    const/16 v1, 0x14

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static blacklist isPsOnlyTech(I)Z
    .locals 1
    .param p0, "radioTechnology"    # I

    .line 2238
    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

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

.method public static greylist-max-r mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 2
    .param p0, "baseSs"    # Landroid/telephony/ServiceState;
    .param p1, "voiceSs"    # Landroid/telephony/ServiceState;

    .line 2339
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-eqz v0, :cond_0

    .line 2340
    return-object p0

    .line 2343
    :cond_0
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 2346
    .local v0, "newSs":Landroid/telephony/ServiceState;
    iget v1, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v1, v0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 2347
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 2349
    return-object v0
.end method

.method public static greylist-max-o networkTypeToRilRadioTechnology(I)I
    .locals 1
    .param p0, "networkType"    # I

    .line 2072
    packed-switch p0, :pswitch_data_0

    .line 2112
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2110
    :pswitch_1
    const/16 v0, 0x14

    return v0

    .line 2108
    :pswitch_2
    const/16 v0, 0x13

    return v0

    .line 2106
    :pswitch_3
    const/16 v0, 0x12

    return v0

    .line 2104
    :pswitch_4
    const/16 v0, 0x11

    return v0

    .line 2102
    :pswitch_5
    const/16 v0, 0x10

    return v0

    .line 2100
    :pswitch_6
    const/16 v0, 0xf

    return v0

    .line 2096
    :pswitch_7
    const/16 v0, 0xd

    return v0

    .line 2098
    :pswitch_8
    const/16 v0, 0xe

    return v0

    .line 2094
    :pswitch_9
    const/16 v0, 0xc

    return v0

    .line 2084
    :pswitch_a
    const/16 v0, 0xb

    return v0

    .line 2082
    :pswitch_b
    const/16 v0, 0xa

    return v0

    .line 2080
    :pswitch_c
    const/16 v0, 0x9

    return v0

    .line 2088
    :pswitch_d
    const/4 v0, 0x6

    return v0

    .line 2092
    :pswitch_e
    const/16 v0, 0x8

    return v0

    .line 2090
    :pswitch_f
    const/4 v0, 0x7

    return v0

    .line 2086
    :pswitch_10
    const/4 v0, 0x4

    return v0

    .line 2078
    :pswitch_11
    const/4 v0, 0x3

    return v0

    .line 2076
    :pswitch_12
    const/4 v0, 0x2

    return v0

    .line 2074
    :pswitch_13
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
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

.method public static greylist newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .line 523
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 524
    .local v0, "ret":Landroid/telephony/ServiceState;
    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 525
    return-object v0
.end method

.method public static greylist-max-o rilRadioTechnologyToAccessNetworkType(I)I
    .locals 1
    .param p0, "rt"    # I

    .line 2029
    packed-switch p0, :pswitch_data_0

    .line 2058
    const/4 v0, 0x0

    return v0

    .line 2053
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 2055
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 2051
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2048
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 2040
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 2033
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o rilRadioTechnologyToNetworkType(I)I
    .locals 1
    .param p0, "rat"    # I

    .line 1982
    packed-switch p0, :pswitch_data_0

    .line 2023
    const/4 v0, 0x0

    return v0

    .line 2021
    :pswitch_0
    const/16 v0, 0x14

    return v0

    .line 2019
    :pswitch_1
    const/16 v0, 0x13

    return v0

    .line 2017
    :pswitch_2
    const/16 v0, 0x12

    return v0

    .line 2015
    :pswitch_3
    const/16 v0, 0x11

    return v0

    .line 2013
    :pswitch_4
    const/16 v0, 0x10

    return v0

    .line 2011
    :pswitch_5
    const/16 v0, 0xf

    return v0

    .line 2009
    :pswitch_6
    const/16 v0, 0xd

    return v0

    .line 2007
    :pswitch_7
    const/16 v0, 0xe

    return v0

    .line 2005
    :pswitch_8
    const/16 v0, 0xc

    return v0

    .line 1994
    :pswitch_9
    const/16 v0, 0xa

    return v0

    .line 1992
    :pswitch_a
    const/16 v0, 0x9

    return v0

    .line 1990
    :pswitch_b
    const/16 v0, 0x8

    return v0

    .line 2003
    :pswitch_c
    const/4 v0, 0x6

    return v0

    .line 2001
    :pswitch_d
    const/4 v0, 0x5

    return v0

    .line 1999
    :pswitch_e
    const/4 v0, 0x7

    return v0

    .line 1997
    :pswitch_f
    const/4 v0, 0x4

    return v0

    .line 1988
    :pswitch_10
    const/4 v0, 0x3

    return v0

    .line 1986
    :pswitch_11
    const/4 v0, 0x2

    return v0

    .line 1984
    :pswitch_12
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-r rilRadioTechnologyToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "rt"    # I

    .line 1267
    packed-switch p0, :pswitch_data_0

    .line 1332
    const-string v0, "Unexpected"

    .line 1333
    .local v0, "rtString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected radioTechnology="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PHONE"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1329
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "NR_SA"

    .line 1330
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1326
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "LTE_CA"

    .line 1327
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1320
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "IWLAN"

    .line 1321
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1323
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "TD-SCDMA"

    .line 1324
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1317
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_4
    const-string v0, "GSM"

    .line 1318
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1314
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_5
    const-string v0, "HSPAP"

    .line 1315
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1311
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_6
    const-string v0, "LTE"

    .line 1312
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1308
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_7
    const-string v0, "eHRPD"

    .line 1309
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1305
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_8
    const-string v0, "EvDo-rev.B"

    .line 1306
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1302
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_9
    const-string v0, "HSPA"

    .line 1303
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1299
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_a
    const-string v0, "HSUPA"

    .line 1300
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1296
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_b
    const-string v0, "HSDPA"

    .line 1297
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1293
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_c
    const-string v0, "EvDo-rev.A"

    .line 1294
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1290
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_d
    const-string v0, "EvDo-rev.0"

    .line 1291
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1287
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_e
    const-string v0, "1xRTT"

    .line 1288
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1284
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_f
    const-string v0, "CDMA-IS95B"

    .line 1285
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1281
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_10
    const-string v0, "CDMA-IS95A"

    .line 1282
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1278
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_11
    const-string v0, "UMTS"

    .line 1279
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1275
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_12
    const-string v0, "EDGE"

    .line 1276
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1272
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_13
    const-string v0, "GPRS"

    .line 1273
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 1269
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_14
    const-string v0, "Unknown"

    .line 1270
    .restart local v0    # "rtString":Ljava/lang/String;
    nop

    .line 1336
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o rilServiceStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "serviceState"    # I

    .line 1368
    packed-switch p0, :pswitch_data_0

    .line 1378
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1376
    :pswitch_0
    const-string v0, "POWER_OFF"

    return-object v0

    .line 1374
    :pswitch_1
    const-string v0, "EMERGENCY_ONLY"

    return-object v0

    .line 1372
    :pswitch_2
    const-string v0, "OUT_OF_SERVICE"

    return-object v0

    .line 1370
    :pswitch_3
    const-string v0, "IN_SERVICE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist roamingTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "roamingType"    # I

    .line 1246
    packed-switch p0, :pswitch_data_0

    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown roaming type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1250
    :pswitch_0
    const-string v0, "INTERNATIONAL"

    return-object v0

    .line 1249
    :pswitch_1
    const-string v0, "DOMESTIC"

    return-object v0

    .line 1248
    :pswitch_2
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1247
    :pswitch_3
    const-string v0, "NOT_ROAMING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .line 1783
    const-string v0, "android.intent.extra.SERVICE_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/ServiceState;

    .line 1784
    .local v0, "ssFromBundle":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 1785
    invoke-virtual {p0, v0}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 1787
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V
    .locals 5
    .param p1, "nri"    # Landroid/telephony/NetworkRegistrationInfo;

    .line 2447
    if-nez p1, :cond_0

    return-void

    .line 2449
    :cond_0
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 2450
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2451
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 2452
    .local v2, "curRegState":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 2453
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 2454
    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2455
    goto :goto_1

    .line 2450
    .end local v2    # "curRegState":Landroid/telephony/NetworkRegistrationInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2459
    .end local v1    # "i":I
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    new-instance v2, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v2, p1}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2460
    monitor-exit v0

    .line 2461
    return-void

    .line 2460
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist canCellularVoiceService()Z
    .locals 2

    .line 2633
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected whitelist copyFrom(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 544
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 545
    iget v0, p1, Landroid/telephony/ServiceState;->mDataRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 546
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 547
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 548
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 549
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 550
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mCssIndicator:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 551
    iget v0, p1, Landroid/telephony/ServiceState;->mNetworkId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 552
    iget v0, p1, Landroid/telephony/ServiceState;->mSystemId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 553
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 554
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 555
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 556
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 557
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 558
    iget v0, p1, Landroid/telephony/ServiceState;->mChannelNumber:I

    iput v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 559
    iget-object v0, p1, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 560
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 561
    iget v0, p1, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    iput v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 562
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 563
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 564
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 565
    .local v2, "nri":Landroid/telephony/NetworkRegistrationInfo;
    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    new-instance v4, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v4, v2}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    nop

    .end local v2    # "nri":Landroid/telephony/NetworkRegistrationInfo;
    goto :goto_1

    .line 567
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    iget v0, p1, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 569
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 570
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 571
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 572
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 574
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    .line 575
    iget v0, p1, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    iput v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    .line 576
    iget v0, p1, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    .line 577
    iget v0, p1, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    .line 578
    iget v0, p1, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    .line 579
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    .line 580
    iget v0, p1, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    .line 581
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsSprDisplayRoam:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsSprDisplayRoam:Z

    .line 582
    iget v0, p1, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    iput v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 583
    iget v0, p1, Landroid/telephony/ServiceState;->mMsimSubmode:I

    iput v0, p0, Landroid/telephony/ServiceState;->mMsimSubmode:I

    .line 585
    return-void

    .line 567
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;
    .locals 4
    .param p1, "removeCoarseLocation"    # Z

    .line 2487
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 2488
    .local v0, "state":Landroid/telephony/ServiceState;
    iget-object v1, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v1

    .line 2489
    :try_start_0
    iget-object v2, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 2490
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/telephony/ServiceState$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/telephony/ServiceState$$ExternalSyntheticLambda0;-><init>()V

    .line 2491
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 2492
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2493
    .local v2, "networkRegistrationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    iget-object v3, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2494
    iget-object v3, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2495
    nop

    .end local v2    # "networkRegistrationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2496
    if-nez p1, :cond_0

    return-object v0

    .line 2498
    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 2499
    iput-object v1, v0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 2500
    iput-object v1, v0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 2501
    const/4 v1, -0x1

    iput v1, v0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 2502
    iput v1, v0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 2504
    return-object v0

    .line 2495
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 675
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1196
    instance-of v0, p1, Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1197
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/ServiceState;

    .line 1199
    .local v0, "s":Landroid/telephony/ServiceState;
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v2

    .line 1200
    :try_start_0
    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iget v4, v0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    iget v4, v0, Landroid/telephony/ServiceState;->mDataRegState:I

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iget-boolean v4, v0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    iget v4, v0, Landroid/telephony/ServiceState;->mChannelNumber:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    iget-object v4, v0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 1204
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 1205
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 1206
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 1207
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1208
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1209
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1210
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 1211
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1212
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1213
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1212
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    .line 1215
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    .line 1216
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    iget v4, v0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    iget v4, v0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    .line 1219
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    iget-boolean v4, v0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    .line 1221
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsSprDisplayRoam:Z

    iget-boolean v4, v0, Landroid/telephony/ServiceState;->mIsSprDisplayRoam:Z

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    iget v4, v0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/telephony/ServiceState;->mMsimSubmode:I

    iget v4, v0, Landroid/telephony/ServiceState;->mMsimSubmode:I

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iget-boolean v4, v0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 1227
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 1228
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 1229
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 1230
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    iget v4, v0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iget-boolean v4, v0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    iget-boolean v4, v0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    monitor-exit v2

    .line 1200
    return v1

    .line 1234
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .line 1801
    const-string v0, "android.intent.extra.SERVICE_STATE"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1804
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    const-string/jumbo v1, "voiceRegState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1805
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    const-string v1, "dataRegState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1806
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    const-string v1, "dataRoamingType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1807
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v0

    const-string/jumbo v1, "voiceRoamingType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1808
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    const-string/jumbo v1, "operator-alpha-long"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    const-string/jumbo v1, "operator-alpha-short"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    const-string/jumbo v1, "operator-numeric"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    const-string v1, "data-operator-alpha-long"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    const-string v1, "data-operator-alpha-short"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    const-string v1, "data-operator-numeric"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    const-string/jumbo v1, "manual"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1815
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const-string/jumbo v1, "radioTechnology"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1816
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const-string v1, "dataRadioTechnology"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1817
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    const-string v1, "cssIndicator"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1818
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    const-string/jumbo v1, "networkId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1819
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    const-string/jumbo v1, "systemId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1820
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    const-string v1, "cdmaRoamingIndicator"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1821
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    const-string v1, "cdmaDefaultRoamingIndicator"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1822
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    const-string v1, "emergencyOnly"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1823
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v0

    const-string/jumbo v1, "isDataRoamingFromRegistration"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1824
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v0

    const-string/jumbo v1, "isUsingCarrierAggregation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1825
    iget v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    const-string v1, "ArfcnRsrpBoost"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1826
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    const-string v1, "ChannelNumber"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1827
    iget-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    const-string v1, "CellBandwidths"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1828
    iget v0, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    const-string/jumbo v1, "mNrFrequencyRange"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1829
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    const-string/jumbo v1, "operator-alpha-long-raw"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    const-string/jumbo v1, "operator-alpha-short-raw"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    const-string/jumbo v1, "voiceRegType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1833
    iget v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    const-string/jumbo v1, "snapshotstatus"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1834
    iget v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    const-string/jumbo v1, "mobileDataRegState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1835
    iget v0, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    const-string/jumbo v1, "mobileDataRoamingType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1836
    iget v0, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    const-string/jumbo v1, "mobileDataRadioTechnology"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1837
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    const-string/jumbo v1, "isPsOnlyReg"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1838
    iget v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    const-string v1, "femtocellIndicator"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1839
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsSprDisplayRoam:Z

    const-string/jumbo v1, "isSprDisplayRoam"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1840
    iget v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    const-string/jumbo v1, "optionalRadioTech"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1841
    iget v0, p0, Landroid/telephony/ServiceState;->mMsimSubmode:I

    const-string/jumbo v1, "msimSubmode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1843
    return-void
.end method

.method public blacklist getArfcnRsrpBoost()I
    .locals 1

    .line 1935
    iget v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    return v0
.end method

.method public greylist getCdmaDefaultRoamingIndicator()I
    .locals 1

    .line 927
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    return v0
.end method

.method public greylist getCdmaEriIconIndex()I
    .locals 1

    .line 935
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    return v0
.end method

.method public greylist getCdmaEriIconMode()I
    .locals 1

    .line 943
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    return v0
.end method

.method public whitelist getCdmaNetworkId()I
    .locals 1

    .line 2184
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    return v0
.end method

.method public greylist getCdmaRoamingIndicator()I
    .locals 1

    .line 919
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    return v0
.end method

.method public whitelist getCdmaSystemId()I
    .locals 1

    .line 2202
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    return v0
.end method

.method public whitelist getCellBandwidths()[I
    .locals 1

    .line 782
    iget-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    :cond_0
    return-object v0
.end method

.method public whitelist getChannelNumber()I
    .locals 1

    .line 773
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    return v0
.end method

.method public greylist-max-p getCssIndicator()I
    .locals 1

    .line 2166
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    return v0
.end method

.method public blacklist getDataNetworkType()I
    .locals 3

    .line 2128
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 2130
    .local v1, "iwlanRegInfo":Landroid/telephony/NetworkRegistrationInfo;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 2135
    .local v0, "wwanRegInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2143
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2149
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    return v2

    .line 2144
    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    return v2

    .line 2136
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    goto :goto_2

    .line 2137
    :cond_4
    const/4 v2, 0x0

    .line 2136
    :goto_2
    return v2
.end method

.method public greylist-max-q getDataOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .line 1047
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-q getDataOperatorNumeric()Ljava/lang/String;
    .locals 1

    .line 1140
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getDataRegState()I
    .locals 1

    .line 726
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    return v0
.end method

.method public blacklist getDataRegistrationState()I
    .locals 1

    .line 742
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method public greylist-max-p getDataRoaming()Z
    .locals 1

    .line 841
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o getDataRoamingFromRegistration()Z
    .locals 1

    .line 864
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    return v0
.end method

.method public greylist-max-p getDataRoamingType()I
    .locals 2

    .line 874
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 876
    .local v0, "regState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result v1

    return v1

    .line 879
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getDuplexMode()I
    .locals 2

    .line 757
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    const/4 v0, 0x0

    return v0

    .line 761
    :cond_0
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getOperatingBandForEarfcn(I)I

    move-result v0

    .line 762
    .local v0, "band":I
    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getDuplexModeForEutranBand(I)I

    move-result v1

    return v1
.end method

.method public greylist getEndcStatus()I
    .locals 3

    .line 2753
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 2755
    .local v0, "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2757
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v2

    .line 2758
    .local v2, "dataSpecificStates":Landroid/telephony/DataSpecificRegistrationInfo;
    if-nez v2, :cond_1

    return v1

    .line 2760
    :cond_1
    iget-boolean v1, v2, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    return v1
.end method

.method public blacklist getFemtocellIndicator()I
    .locals 1

    .line 2698
    iget v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    return v0
.end method

.method public whitelist getIsManualSelection()Z
    .locals 1

    .line 1149
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    return v0
.end method

.method public blacklist getMobileDataRegState()I
    .locals 1

    .line 2648
    iget v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    return v0
.end method

.method public blacklist getMobileDataRoaming()Z
    .locals 1

    .line 2668
    iget v0, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getMobileDataRoamingType()I
    .locals 1

    .line 2658
    iget v0, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    return v0
.end method

.method public blacklist getMsimSubmode()I
    .locals 1

    .line 2733
    iget v0, p0, Landroid/telephony/ServiceState;->mMsimSubmode:I

    return v0
.end method

.method public whitelist getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;
    .locals 4
    .param p1, "domain"    # I
    .param p2, "transportType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2430
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 2431
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 2432
    .local v2, "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 2433
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    .line 2434
    new-instance v1, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v1, v2}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    monitor-exit v0

    return-object v1

    .line 2436
    .end local v2    # "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    :cond_0
    goto :goto_0

    .line 2437
    :cond_1
    monitor-exit v0

    .line 2439
    const/4 v0, 0x0

    return-object v0

    .line 2437
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getNetworkRegistrationInfoList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/NetworkRegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 2359
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 2360
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2361
    .local v1, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NetworkRegistrationInfo;

    .line 2362
    .local v3, "nri":Landroid/telephony/NetworkRegistrationInfo;
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v4, v3}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2363
    nop

    .end local v3    # "nri":Landroid/telephony/NetworkRegistrationInfo;
    goto :goto_0

    .line 2364
    :cond_0
    monitor-exit v0

    return-object v1

    .line 2365
    .end local v1    # "newList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getNetworkRegistrationInfoListForDomain(I)Ljava/util/List;
    .locals 5
    .param p1, "domain"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/NetworkRegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 2403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2405
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v1

    .line 2406
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NetworkRegistrationInfo;

    .line 2407
    .local v3, "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    .line 2408
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v4, v3}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2410
    .end local v3    # "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    :cond_0
    goto :goto_0

    .line 2411
    :cond_1
    monitor-exit v1

    .line 2413
    return-object v0

    .line 2411
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist getNetworkRegistrationInfoListForTransportType(I)Ljava/util/List;
    .locals 5
    .param p1, "transportType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/NetworkRegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 2379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2381
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v1

    .line 2382
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NetworkRegistrationInfo;

    .line 2383
    .local v3, "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 2384
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v4, v3}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2386
    .end local v3    # "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    :cond_0
    goto :goto_0

    .line 2387
    :cond_1
    monitor-exit v1

    .line 2389
    return-object v0

    .line 2387
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist getNrFrequencyRange()I
    .locals 1

    .line 1910
    iget v0, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    return v0
.end method

.method public blacklist getNrState()I
    .locals 2

    .line 1919
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1921
    .local v0, "regInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1922
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result v1

    return v1
.end method

.method public greylist-max-o getOperatorAlpha()Ljava/lang/String;
    .locals 1

    .line 1070
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0

    .line 1074
    :cond_0
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .line 964
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOperatorAlphaLongRaw()Ljava/lang/String;
    .locals 1

    .line 2524
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .line 1005
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOperatorAlphaShortRaw()Ljava/lang/String;
    .locals 1

    .line 2544
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .line 1099
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOptionalRadioTech()I
    .locals 1

    .line 2718
    iget v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    return v0
.end method

.method public greylist getRestrictDcnrStatus()I
    .locals 3

    .line 2766
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 2768
    .local v0, "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2770
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v2

    .line 2771
    .local v2, "dataSpecificStates":Landroid/telephony/DataSpecificRegistrationInfo;
    if-nez v2, :cond_1

    return v1

    .line 2773
    :cond_1
    iget-boolean v1, v2, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    return v1
.end method

.method public greylist-max-r getRilDataRadioTechnology()I
    .locals 1

    .line 1969
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v0

    return v0
.end method

.method public blacklist getRilMobileDataRadioTechnology()I
    .locals 1

    .line 2678
    iget v0, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    return v0
.end method

.method public greylist-max-r getRilVoiceRadioTechnology()I
    .locals 2

    .line 1959
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1961
    .local v0, "wwanRegInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_0

    .line 1962
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v1

    return v1

    .line 1964
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getRoaming()Z
    .locals 1

    .line 793
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

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

.method public blacklist getSnapshotStatus()I
    .locals 1

    .line 2638
    iget v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    return v0
.end method

.method public blacklist getSprDisplayRoam()Z
    .locals 1

    .line 2708
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsSprDisplayRoam:Z

    return v0
.end method

.method public whitelist getState()I
    .locals 1

    .line 693
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    return v0
.end method

.method public greylist-max-p getVoiceNetworkType()I
    .locals 2

    .line 2155
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 2157
    .local v0, "regState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_0

    .line 2158
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    return v1

    .line 2160
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-q getVoiceOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .line 985
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-q getVoiceOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .line 1026
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-p getVoiceOperatorNumeric()Ljava/lang/String;
    .locals 1

    .line 1119
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-p getVoiceRegState()I
    .locals 1

    .line 708
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    return v0
.end method

.method public blacklist getVoiceRegType()I
    .locals 1

    .line 2623
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    return v0
.end method

.method public greylist-max-p getVoiceRoaming()Z
    .locals 1

    .line 803
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-p getVoiceRoamingType()I
    .locals 2

    .line 812
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 814
    .local v0, "regState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result v1

    return v1

    .line 817
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    .line 1154
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 1155
    const/16 v1, 0x21

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget v5, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 1158
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v5, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 1159
    invoke-static {v5}, Ljava/util/Arrays;->hashCode([I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x4

    iget-object v5, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x5

    iget-object v5, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x6

    iget-object v5, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x7

    iget-boolean v5, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 1163
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x8

    iget-boolean v5, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1164
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x9

    iget v5, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1165
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0xa

    iget v5, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1166
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0xb

    iget v5, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 1167
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0xc

    iget v5, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1168
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0xd

    iget v5, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 1169
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0xe

    iget v5, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 1170
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0xf

    iget v5, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    .line 1172
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x10

    iget v5, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    .line 1173
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x11

    iget v5, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    .line 1174
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x12

    iget v5, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    .line 1175
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x13

    iget v5, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    .line 1176
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x14

    .line 1177
    iget-boolean v5, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x15

    iget v5, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    .line 1178
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x16

    .line 1179
    iget-boolean v5, p0, Landroid/telephony/ServiceState;->mIsSprDisplayRoam:Z

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x17

    iget v3, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 1180
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x18

    iget v3, p0, Landroid/telephony/ServiceState;->mMsimSubmode:I

    .line 1181
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x19

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1183
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    iget v3, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 1184
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    iget v3, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 1186
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 1189
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x20

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 1190
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1155
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist isEmergencyOnly()Z
    .locals 1

    .line 899
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    return v0
.end method

.method public blacklist isIwlanPreferred()Z
    .locals 1

    .line 2568
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    return v0
.end method

.method public blacklist isPsOnlyReg()Z
    .locals 1

    .line 2688
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    return v0
.end method

.method public whitelist isSearching()Z
    .locals 5

    .line 2583
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 2586
    .local v2, "psRegState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 2588
    return v1

    .line 2591
    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    .line 2594
    .local v3, "csRegState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 2596
    return v1

    .line 2598
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isUsingCarrierAggregation()Z
    .locals 7

    .line 1891
    iget v0, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xe

    if-eq v0, v3, :cond_1

    const/16 v3, 0x13

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1892
    .local v0, "isLte":Z
    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object v3

    array-length v3, v3

    if-le v3, v2, :cond_2

    return v2

    .line 1895
    :cond_2
    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v3

    .line 1896
    :try_start_0
    iget-object v4, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/NetworkRegistrationInfo;

    .line 1897
    .local v5, "nri":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->isUsingCarrierAggregation()Z

    move-result v6

    if-eqz v6, :cond_3

    monitor-exit v3

    return v2

    .line 1898
    .end local v5    # "nri":Landroid/telephony/NetworkRegistrationInfo;
    :cond_3
    goto :goto_2

    .line 1899
    :cond_4
    monitor-exit v3

    .line 1900
    return v1

    .line 1899
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist semGetCurrentDataRoamingType()I
    .locals 1

    .line 890
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    return v0
.end method

.method public whitelist semGetVoiceRoamingType()I
    .locals 1

    .line 828
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v0

    return v0
.end method

.method public whitelist semIsEmergencyOnly()Z
    .locals 1

    .line 910
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    return v0
.end method

.method public whitelist semIsOnlyPsRegistered()Z
    .locals 1

    .line 2745
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isPsOnlyReg()Z

    move-result v0

    return v0
.end method

.method public blacklist setArfcnRsrpBoost(I)V
    .locals 0
    .param p1, "arfcnRsrpBoost"    # I

    .line 1940
    iput p1, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 1941
    return-void
.end method

.method public greylist-max-p setCdmaDefaultRoamingIndicator(I)V
    .locals 0
    .param p1, "roaming"    # I

    .line 1723
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1724
    return-void
.end method

.method public greylist-max-p setCdmaEriIconIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 1731
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 1732
    return-void
.end method

.method public greylist-max-p setCdmaEriIconMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 1739
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 1740
    return-void
.end method

.method public greylist-max-p setCdmaRoamingIndicator(I)V
    .locals 0
    .param p1, "roaming"    # I

    .line 1715
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 1716
    return-void
.end method

.method public blacklist setCdmaSystemAndNetworkId(II)V
    .locals 0
    .param p1, "systemId"    # I
    .param p2, "networkId"    # I

    .line 1952
    iput p1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1953
    iput p2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1954
    return-void
.end method

.method public blacklist setCellBandwidths([I)V
    .locals 0
    .param p1, "bandwidths"    # [I

    .line 1646
    iput-object p1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 1647
    return-void
.end method

.method public blacklist setChannelNumber(I)V
    .locals 0
    .param p1, "channelNumber"    # I

    .line 1652
    iput p1, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 1653
    return-void
.end method

.method public greylist-max-p setCssIndicator(I)V
    .locals 1
    .param p1, "css"    # I

    .line 1946
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1947
    return-void
.end method

.method public greylist-max-p setDataRegState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 1639
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1641
    return-void
.end method

.method public greylist-max-r setDataRoaming(Z)V
    .locals 0
    .param p1, "dataRoaming"    # Z

    .line 1684
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    .line 1685
    return-void
.end method

.method public blacklist setDataRoamingFromRegistration(Z)V
    .locals 0
    .param p1, "dataRoaming"    # Z

    .line 851
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 852
    return-void
.end method

.method public blacklist setDataRoamingType(I)V
    .locals 4
    .param p1, "type"    # I

    .line 1690
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 1692
    .local v2, "regInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v2, :cond_0

    .line 1693
    new-instance v3, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1694
    invoke-virtual {v3, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1695
    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1696
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 1698
    :cond_0
    invoke-virtual {v2, p1}, Landroid/telephony/NetworkRegistrationInfo;->setRoamingType(I)V

    .line 1699
    invoke-virtual {p0, v2}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1700
    return-void
.end method

.method public greylist-max-p setEmergencyOnly(Z)V
    .locals 0
    .param p1, "emergencyOnly"    # Z

    .line 1707
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1708
    return-void
.end method

.method public blacklist setFemtocellIndicator(I)V
    .locals 0
    .param p1, "femtocellIndicator"    # I

    .line 2703
    iput p1, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    .line 2704
    return-void
.end method

.method public whitelist setIsManualSelection(Z)V
    .locals 0
    .param p1, "isManual"    # Z

    .line 1760
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 1761
    return-void
.end method

.method public blacklist setIwlanPreferred(Z)V
    .locals 0
    .param p1, "isIwlanPreferred"    # Z

    .line 2554
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 2555
    return-void
.end method

.method public blacklist setMobileDataRegState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 2653
    iput p1, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    .line 2654
    return-void
.end method

.method public blacklist setMobileDataRoaming(Z)V
    .locals 0
    .param p1, "mobileDataRoaming"    # Z

    .line 2673
    iput p1, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    .line 2674
    return-void
.end method

.method public blacklist setMobileDataRoamingType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 2663
    iput p1, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    .line 2664
    return-void
.end method

.method public blacklist setMsimSubmode(I)V
    .locals 0
    .param p1, "submode"    # I

    .line 2728
    iput p1, p0, Landroid/telephony/ServiceState;->mMsimSubmode:I

    .line 2729
    return-void
.end method

.method public blacklist setNrFrequencyRange(I)V
    .locals 0
    .param p1, "nrFrequencyRange"    # I

    .line 1930
    iput p1, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 1931
    return-void
.end method

.method public greylist-max-r setOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    .line 1756
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 1757
    return-void
.end method

.method public blacklist setOperatorAlphaLongRaw(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;

    .line 2511
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 2512
    return-void
.end method

.method public blacklist setOperatorAlphaShortRaw(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorAlphaShort"    # Ljava/lang/String;

    .line 2531
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 2532
    return-void
.end method

.method public whitelist setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .line 1743
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 1744
    iput-object p2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 1745
    iput-object p3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 1746
    return-void
.end method

.method public blacklist setOptionalRadioTech(I)V
    .locals 0
    .param p1, "optTech"    # I

    .line 2723
    iput p1, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 2724
    return-void
.end method

.method public blacklist setOutOfService(ZZ)V
    .locals 1
    .param p1, "legacyMode"    # Z
    .param p2, "powerOff"    # Z

    .line 1617
    invoke-direct {p0, p1}, Landroid/telephony/ServiceState;->init(Z)V

    .line 1618
    if-eqz p2, :cond_0

    .line 1619
    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1620
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1622
    :cond_0
    return-void
.end method

.method public blacklist setPsOnlyReg(Z)V
    .locals 0
    .param p1, "psOnlyReg"    # Z

    .line 2693
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    .line 2694
    return-void
.end method

.method public blacklist setRilDataRadioTechnology(I)V
    .locals 4
    .param p1, "rt"    # I

    .line 1867
    const-string v0, "PHONE"

    const-string v1, "ServiceState.setRilDataRadioTechnology() called. It\'s encouraged to use addNetworkRegistrationInfo() instead *******"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 1875
    .local v2, "regInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v2, :cond_0

    .line 1876
    new-instance v3, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1877
    invoke-virtual {v3, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1878
    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1879
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 1881
    :cond_0
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 1882
    invoke-virtual {p0, v2}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1883
    return-void
.end method

.method public blacklist setRilMobileDataRadioTechnology(I)V
    .locals 0
    .param p1, "rt"    # I

    .line 2683
    iput p1, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    .line 2684
    return-void
.end method

.method public blacklist setRilVoiceRadioTechnology(I)V
    .locals 3
    .param p1, "rt"    # I

    .line 1848
    const-string v0, "PHONE"

    const-string v1, "ServiceState.setRilVoiceRadioTechnology() called. It\'s encouraged to use addNetworkRegistrationInfo() instead *******"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1853
    .local v1, "regInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v1, :cond_0

    .line 1854
    new-instance v2, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1855
    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v2

    .line 1856
    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1857
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1859
    :cond_0
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 1860
    invoke-virtual {p0, v1}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1861
    return-void
.end method

.method public whitelist setRoaming(Z)V
    .locals 0
    .param p1, "roaming"    # Z

    .line 1656
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 1657
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1658
    return-void
.end method

.method public blacklist setSnapshotStatus(I)V
    .locals 0
    .param p1, "snapshotStatus"    # I

    .line 2643
    iput p1, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    .line 2644
    return-void
.end method

.method public blacklist setSprDisplayRoam(Z)V
    .locals 0
    .param p1, "sprDisplayRoam"    # Z

    .line 2713
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsSprDisplayRoam:Z

    .line 2714
    return-void
.end method

.method public whitelist setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 1625
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 1627
    return-void
.end method

.method public whitelist setStateOff()V
    .locals 1

    .line 1602
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->init(Z)V

    .line 1603
    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1604
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1605
    return-void
.end method

.method public whitelist setStateOutOfService()V
    .locals 1

    .line 1598
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->init(Z)V

    .line 1599
    return-void
.end method

.method public greylist-max-r setVoiceRegState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 1632
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1634
    return-void
.end method

.method public blacklist setVoiceRegType(I)V
    .locals 0
    .param p1, "voiceRegType"    # I

    .line 2628
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    .line 2629
    return-void
.end method

.method public greylist-max-r setVoiceRoaming(Z)V
    .locals 0
    .param p1, "roaming"    # Z

    .line 1663
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 1664
    return-void
.end method

.method public blacklist setVoiceRoamingType(I)V
    .locals 3
    .param p1, "type"    # I

    .line 1669
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1671
    .local v1, "regInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v1, :cond_0

    .line 1672
    new-instance v2, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1673
    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v2

    .line 1674
    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1675
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1677
    :cond_0
    invoke-virtual {v1, p1}, Landroid/telephony/NetworkRegistrationInfo;->setRoamingType(I)V

    .line 1678
    invoke-virtual {p0, v1}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1679
    return-void
.end method

.method public blacklist toSimpleString()Ljava/lang/String;
    .locals 4

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1443
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Voice=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    const-string v2, ")] Data=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-static {v3}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    if-eqz v2, :cond_0

    .line 1451
    const-string v2, " PsOnly"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1454
    const-string v2, " CA"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    :cond_1
    iget v2, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1457
    const-string v2, " Snap"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    :cond_2
    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    if-eqz v2, :cond_3

    .line 1460
    const-string v2, " WlanPref"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    :cond_3
    const-string v2, " (Mobile:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    invoke-static {v3}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    invoke-static {v3}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    const-string v1, " Op=[L:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    const-string v1, ", S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    const-string v1, ", N:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    const-string v1, ", LR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    const-string v1, ", SR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    sget-boolean v1, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    const/4 v2, -0x1

    if-nez v1, :cond_5

    .line 1474
    iget v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    if-eq v1, v2, :cond_4

    .line 1475
    const-string v1, " NID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1477
    :cond_4
    iget v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    if-eq v1, v2, :cond_5

    .line 1478
    const-string v1, " SID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1482
    :cond_5
    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    if-eq v1, v2, :cond_6

    .line 1483
    const-string v1, " RoamInd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1485
    :cond_6
    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    if-eq v1, v2, :cond_7

    .line 1486
    const-string v1, " DefRoamInd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1488
    :cond_7
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v1, :cond_8

    .line 1489
    const-string v1, " CSS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    :cond_8
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v1, :cond_9

    .line 1493
    const-string v1, " Manual"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    :cond_9
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-eqz v1, :cond_a

    .line 1496
    const-string v1, " EmergOnly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    :cond_a
    iget v1, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    if-eqz v1, :cond_b

    .line 1500
    const-string v1, " OptRadioTech"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1502
    :cond_b
    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    if-eqz v1, :cond_c

    .line 1503
    const-string v1, " VoiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1505
    :cond_c
    iget v1, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    if-eqz v1, :cond_d

    .line 1506
    const-string v1, " FemtoInd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1508
    :cond_d
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsSprDisplayRoam:Z

    if-eqz v1, :cond_e

    .line 1509
    const-string v1, " SprDisplayRoam"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    :cond_e
    iget v1, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    if-eqz v1, :cond_f

    .line 1512
    const-string v1, " RsrpBoost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1514
    :cond_f
    iget v1, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    if-eq v1, v2, :cond_10

    .line 1515
    const-string v1, " Channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1517
    :cond_10
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDuplexMode()I

    move-result v1

    if-eqz v1, :cond_11

    .line 1518
    const-string v1, " Duplex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDuplexMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1520
    :cond_11
    const-string v1, " CellBandwidths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    iget v1, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    if-eqz v1, :cond_12

    .line 1522
    const-string v1, " NrFreq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1525
    :cond_12
    const-string v1, " NetRegiInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1526
    const-string v1, " MsimSubmode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mMsimSubmode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1384
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 1385
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{mVoiceRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1386
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDataRegState="

    .line 1387
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1388
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChannelNumber="

    .line 1389
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duplexMode()="

    .line 1390
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDuplexMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCellBandwidths="

    .line 1391
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperatorAlphaLong="

    .line 1392
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperatorAlphaShort="

    .line 1393
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isManualNetworkSelection="

    .line 1394
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1395
    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v2, :cond_0

    const-string v2, "(manual)"

    goto :goto_0

    :cond_0
    const-string v2, "(automatic)"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getRilVoiceRadioTechnology="

    .line 1396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1397
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getRilDataRadioTechnology="

    .line 1398
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1399
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCssIndicator="

    .line 1400
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "supported"

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "unsupported"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNetworkId="

    .line 1406
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSystemId="

    .line 1407
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCdmaRoamingIndicator="

    .line 1409
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCdmaDefaultRoamingIndicator="

    .line 1410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", VoiceRegType="

    .line 1412
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Snap="

    .line 1413
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MobileData="

    .line 1414
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MobileDataRoamingType="

    .line 1415
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    invoke-static {v2}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MobileDataRat="

    .line 1416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PsOnly="

    .line 1417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FemtocellInd="

    .line 1418
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SprDisplayRoam="

    .line 1419
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsSprDisplayRoam:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", OptRadioTech="

    .line 1420
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MsimSubmode="

    .line 1421
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mMsimSubmode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsEmergencyOnly="

    .line 1423
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isUsingCarrierAggregation="

    .line 1424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mArfcnRsrpBoost="

    .line 1425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNetworkRegistrationInfos="

    .line 1426
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNrFrequencyRange="

    .line 1427
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_2

    .line 1428
    iget v2, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 1427
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperatorAlphaLongRaw="

    .line 1429
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperatorAlphaShortRaw="

    .line 1430
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsDataRoamingFromRegistration="

    .line 1431
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 1432
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsIwlanPreferred="

    .line 1433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    .line 1434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 1385
    return-object v1

    .line 1435
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 635
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 640
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    iget v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 651
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 652
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    iget-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 655
    iget v0, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 658
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 659
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 661
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    iget v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    iget v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    iget v0, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    iget v0, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    iget v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsSprDisplayRoam:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    iget v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    iget v0, p0, Landroid/telephony/ServiceState;->mMsimSubmode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    return-void

    .line 652
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

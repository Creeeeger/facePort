.class public Landroid/telephony/data/ApnSetting;
.super Ljava/lang/Object;
.source "ApnSetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/ApnSetting$Builder;,
        Landroid/telephony/data/ApnSetting$InfrastructureBitmask;,
        Landroid/telephony/data/ApnSetting$MvnoType;,
        Landroid/telephony/data/ApnSetting$ProtocolType;,
        Landroid/telephony/data/ApnSetting$AuthType;,
        Landroid/telephony/data/ApnSetting$ApnTypeString;,
        Landroid/telephony/data/ApnSetting$Skip464XlatStatus;,
        Landroid/telephony/data/ApnSetting$ApnType;
    }
.end annotation


# static fields
.field private static final greylist-max-o APN_TYPE_INT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o APN_TYPE_STRING_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist AUTH_TYPE_CHAP:I = 0x2

.field public static final whitelist AUTH_TYPE_NONE:I = 0x0

.field public static final whitelist AUTH_TYPE_PAP:I = 0x1

.field public static final whitelist AUTH_TYPE_PAP_OR_CHAP:I = 0x3

.field public static final blacklist AUTH_TYPE_UNKNOWN:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INFRASTRUCTURE_CELLULAR:I = 0x1

.field public static final blacklist INFRASTRUCTURE_SATELLITE:I = 0x2

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ApnSetting"

.field public static final whitelist MVNO_TYPE_GID:I = 0x2

.field public static final whitelist MVNO_TYPE_ICCID:I = 0x3

.field public static final whitelist MVNO_TYPE_IMSI:I = 0x1

.field private static final greylist-max-o MVNO_TYPE_INT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MVNO_TYPE_SPN:I = 0x0

.field private static final greylist-max-o MVNO_TYPE_STRING_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MVNO_TYPE_UNKNOWN:I = -0x1

.field private static final greylist-max-o PROTOCOL_INT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PROTOCOL_IP:I = 0x0

.field public static final whitelist PROTOCOL_IPV4V6:I = 0x2

.field public static final whitelist PROTOCOL_IPV6:I = 0x1

.field public static final whitelist PROTOCOL_NON_IP:I = 0x4

.field public static final whitelist PROTOCOL_PPP:I = 0x3

.field private static final greylist-max-o PROTOCOL_STRING_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PROTOCOL_UNKNOWN:I = -0x1

.field public static final whitelist PROTOCOL_UNSTRUCTURED:I = 0x5

.field public static final blacklist TYPE_ALL:I = 0xff

.field public static final whitelist TYPE_ALL_STRING:Ljava/lang/String; = "*"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist TYPE_BANDWIDTH:I = 0x40000

.field public static final whitelist TYPE_BIP:I = 0x2000

.field public static final whitelist TYPE_BIP_STRING:Ljava/lang/String; = "bip"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_CBS:I = 0x80

.field public static final whitelist TYPE_CBS_STRING:Ljava/lang/String; = "cbs"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_DEFAULT:I = 0x11

.field public static final whitelist TYPE_DEFAULT_STRING:Ljava/lang/String; = "default"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_DUN:I = 0x8

.field public static final whitelist TYPE_DUN_STRING:Ljava/lang/String; = "dun"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_EMERGENCY:I = 0x200

.field public static final whitelist TYPE_EMERGENCY_STRING:Ljava/lang/String; = "emergency"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist TYPE_ENT1:I = 0x10000

.field public static final blacklist TYPE_ENT1_STRING:Ljava/lang/String; = "ent1"

.field public static final whitelist TYPE_ENTERPRISE:I = 0x4000

.field public static final whitelist TYPE_ENTERPRISE_STRING:Ljava/lang/String; = "enterprise"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_FOTA:I = 0x20

.field public static final whitelist TYPE_FOTA_STRING:Ljava/lang/String; = "fota"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_HIPRI:I = 0x10

.field public static final whitelist TYPE_HIPRI_STRING:Ljava/lang/String; = "hipri"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_IA:I = 0x100

.field public static final whitelist TYPE_IA_STRING:Ljava/lang/String; = "ia"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_IMS:I = 0x40

.field public static final whitelist TYPE_IMS_STRING:Ljava/lang/String; = "ims"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist TYPE_LATENCY:I = 0x20000

.field public static final whitelist TYPE_MCX:I = 0x400

.field public static final whitelist TYPE_MCX_STRING:Ljava/lang/String; = "mcx"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_MMS:I = 0x2

.field public static final whitelist TYPE_MMS_STRING:Ljava/lang/String; = "mms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist TYPE_NONE:I = 0x0

.field public static final whitelist TYPE_RCS:I = 0x8000

.field public static final whitelist TYPE_RCS_STRING:Ljava/lang/String; = "rcs"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_SUPL:I = 0x4

.field public static final whitelist TYPE_SUPL_STRING:Ljava/lang/String; = "supl"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TYPE_VENDOR:I = 0x8000

.field public static final whitelist TYPE_VSIM:I = 0x1000

.field public static final whitelist TYPE_VSIM_STRING:Ljava/lang/String; = "vsim"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_XCAP:I = 0x800

.field public static final whitelist TYPE_XCAP_STRING:Ljava/lang/String; = "xcap"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist UNSET_MTU:I = 0x0

.field private static final blacklist UNSPECIFIED_INT:I = -0x1

.field private static final blacklist UNSPECIFIED_STRING:Ljava/lang/String; = ""

.field private static final blacklist V2_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV2\\]\\s*"

.field private static final blacklist V3_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV3\\]\\s*"

.field private static final blacklist V4_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV4\\]\\s*"

.field private static final blacklist V5_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV5\\]\\s*"

.field private static final blacklist V6_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV6\\]\\s*"

.field private static final blacklist V7_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV7\\]\\s*"

.field private static final greylist-max-o VDBG:Z


# instance fields
.field private final blacklist mAlwaysOn:Z

.field private final greylist-max-o mApnName:Ljava/lang/String;

.field private final blacklist mApnSetId:I

.field private final greylist-max-o mApnTypeBitmask:I

.field private final greylist-max-o mAuthType:I

.field private final greylist-max-o mCarrierEnabled:Z

.field private final blacklist mCarrierId:I

.field private final blacklist mEditedStatus:I

.field private final greylist-max-o mEntryName:Ljava/lang/String;

.field private final blacklist mEsimBootstrapProvisioning:Z

.field private final greylist-max-o mId:I

.field private final blacklist mInfrastructureBitmask:I

.field private final blacklist mLingeringNetworkTypeBitmask:J

.field private final greylist-max-o mMaxConns:I

.field private final greylist-max-o mMaxConnsTime:I

.field private final blacklist mMmsProxyAddress:Ljava/lang/String;

.field private final greylist-max-o mMmsProxyPort:I

.field private final greylist-max-o mMmsc:Landroid/net/Uri;

.field private final blacklist mMtuV4:I

.field private final blacklist mMtuV6:I

.field private final greylist-max-o mMvnoMatchData:Ljava/lang/String;

.field private final greylist-max-o mMvnoType:I

.field private final greylist-max-o mNetworkTypeBitmask:I

.field private final greylist-max-o mOperatorNumeric:Ljava/lang/String;

.field private final greylist-max-o mPassword:Ljava/lang/String;

.field private greylist-max-o mPermanentFailed:Z

.field private final blacklist mPersistent:Z

.field private final greylist-max-o mProfileId:I

.field private final greylist-max-o mProtocol:I

.field private final blacklist mProxyAddress:Ljava/lang/String;

.field private final greylist-max-o mProxyPort:I

.field private final greylist-max-o mRoamingProtocol:I

.field private final blacklist mSkip464Xlat:I

.field private final greylist-max-o mUser:Ljava/lang/String;

.field private final greylist-max-o mWaitTime:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/telephony/data/ApnSetting;
    .locals 0

    invoke-static {p0}, Landroid/telephony/data/ApnSetting;->readFromParcel(Landroid/os/Parcel;)Landroid/telephony/data/ApnSetting;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 22

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "*"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "default"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "mms"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "supl"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "dun"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "hipri"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/16 v11, 0x20

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "fota"

    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/16 v13, 0x40

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "ims"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/16 v15, 0x80

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v13

    const-string v13, "cbs"

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/16 v17, 0x100

    move-object/from16 v18, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v17, v15

    const-string v15, "ia"

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/16 v19, 0x200

    move-object/from16 v20, v13

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v19, v15

    const-string v15, "emergency"

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/16 v13, 0x400

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v21, v15

    const-string/jumbo v15, "mcx"

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/16 v13, 0x800

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string/jumbo v15, "xcap"

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/16 v13, 0x4000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v15, "enterprise"

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/16 v13, 0x1000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string/jumbo v15, "vsim"

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/16 v13, 0x2000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v15, "bip"

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const v13, 0x8000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string/jumbo v15, "rcs"

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/high16 v13, 0x10000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v15, "ent1"

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    move-object/from16 v2, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mcx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "xcap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    const/16 v1, 0x4000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "enterprise"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vsim"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "rcs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    const/high16 v1, 0x10000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ent1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_STRING_MAP:Ljava/util/Map;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_STRING_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_STRING_MAP:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "IPV6"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_STRING_MAP:Ljava/util/Map;

    const-string v4, "IPV4V6"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_STRING_MAP:Ljava/util/Map;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "PPP"

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_STRING_MAP:Ljava/util/Map;

    const-string v6, "NON-IP"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_STRING_MAP:Ljava/util/Map;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "UNSTRUCTURED"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    const-string v6, "IP"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    const-string v6, "IPV6"

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    const-string v6, "IPV4V6"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    const-string v6, "PPP"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    const-string v6, "NON-IP"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "UNSTRUCTURED"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_STRING_MAP:Ljava/util/Map;

    sget-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_STRING_MAP:Ljava/util/Map;

    const-string/jumbo v5, "spn"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_STRING_MAP:Ljava/util/Map;

    const-string v5, "imsi"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_STRING_MAP:Ljava/util/Map;

    const-string v5, "gid"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_STRING_MAP:Ljava/util/Map;

    const-string v5, "iccid"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_INT_MAP:Ljava/util/Map;

    sget-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_INT_MAP:Ljava/util/Map;

    const-string/jumbo v5, "spn"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_INT_MAP:Ljava/util/Map;

    const-string v1, "imsi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_INT_MAP:Ljava/util/Map;

    const-string v1, "gid"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_INT_MAP:Ljava/util/Map;

    const-string v1, "iccid"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/telephony/data/ApnSetting$1;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$1;-><init>()V

    sput-object v0, Landroid/telephony/data/ApnSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/telephony/data/ApnSetting$Builder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mPermanentFailed:Z

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmEntryName(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmApnName(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmProxyAddress(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmProxyPort(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v1

    iput v1, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmMmsc(Landroid/telephony/data/ApnSetting$Builder;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmMmsProxyAddress(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmMmsProxyPort(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v1

    iput v1, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmUser(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmPassword(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmAuthType(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmAuthType(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmUser(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmApnTypeBitmask(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmId(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mId:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmOperatorNumeric(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmProtocol(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmRoamingProtocol(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmMtuV4(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mMtuV4:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmMtuV6(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mMtuV6:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmCarrierEnabled(Landroid/telephony/data/ApnSetting$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmNetworkTypeBitmask(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmLingeringNetworkTypeBitmask(Landroid/telephony/data/ApnSetting$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/ApnSetting;->mLingeringNetworkTypeBitmask:J

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmProfileId(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmModemCognitive(Landroid/telephony/data/ApnSetting$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mPersistent:Z

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmMaxConns(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmWaitTime(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmMaxConnsTime(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmMvnoType(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmMvnoMatchData(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmApnSetId(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mApnSetId:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmCarrierId(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mCarrierId:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmSkip464Xlat(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mSkip464Xlat:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmAlwaysOn(Landroid/telephony/data/ApnSetting$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mAlwaysOn:Z

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmInfrastructureBitmask(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mInfrastructureBitmask:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmEsimBootstrapProvisioning(Landroid/telephony/data/ApnSetting$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mEsimBootstrapProvisioning:Z

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->-$$Nest$fgetmEditedStatus(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mEditedStatus:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/data/ApnSetting$Builder;Landroid/telephony/data/ApnSetting-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/ApnSetting;-><init>(Landroid/telephony/data/ApnSetting$Builder;)V

    return-void
.end method

.method private static greylist-max-o UriFromString(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static greylist-max-o UriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static whitelist getApnTypeInt(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static whitelist getApnTypeString(I)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/16 v0, 0xff

    if-ne p0, v0, :cond_0

    const-string v0, "*"

    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static blacklist getApnTypesBitmaskFromString(Ljava/lang/String;)I
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    sget-object v5, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int/2addr v0, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static blacklist getApnTypesFromBitmask(I)[I
    .locals 2

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/telephony/data/ApnSetting$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/telephony/data/ApnSetting$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getApnTypesStringFromBitmask(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v3, p0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    sget-object v3, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getMvnoTypeIntFromString(Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_STRING_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    return v2
.end method

.method public static blacklist getMvnoTypeStringFromInt(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static blacklist getProtocolIntFromString(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_STRING_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public static blacklist getProtocolStringFromInt(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private blacklist hasApnType(I)Z
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o inetAddressFromString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "ApnSetting"

    const-string v3, "Can\'t parse InetAddress from string: unknown host."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static greylist-max-o inetAddressToString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v0

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method static synthetic blacklist lambda$getApnTypesFromBitmask$0(ILjava/lang/Integer;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;
    .locals 9

    nop

    const-string/jumbo v0, "type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v0

    nop

    const-string/jumbo v1, "network_type_bitmask"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "bearer_bitmask"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    nop

    invoke-static {v2}, Landroid/telephony/ServiceState;->convertBearerBitmaskToNetworkTypeBitmask(I)I

    move-result v1

    :cond_0
    const-string/jumbo v2, "mtu_v4"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v3, "mtu"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :cond_1
    new-instance v3, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v3}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "numeric"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setOperatorNumeric(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "name"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string v4, "apn"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "proxy"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "port"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/data/ApnSetting;->portFromString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "mmsc"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/data/ApnSetting;->UriFromString(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "mmsproxy"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "mmsport"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/data/ApnSetting;->portFromString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "user"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string v4, "authtype"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "protocol"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/data/ApnSetting;->getProtocolIntFromString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "roaming_protocol"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/data/ApnSetting;->getProtocolIntFromString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string v4, "carrier_enabled"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string v4, "lingering_network_type_bitmask"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v7, v4

    invoke-virtual {v3, v7, v8}, Landroid/telephony/data/ApnSetting$Builder;->setLingeringNetworkTypeBitmask(J)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "profile_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "modem_cognitive"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v6, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "max_conns"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "wait_time"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "max_conns_time"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "mtu_v6"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "mvno_type"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/data/ApnSetting;->getMvnoTypeIntFromString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "mvno_match_data"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string v4, "apn_set_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string v4, "carrier_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string/jumbo v4, "skip_464xlat"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setSkip464Xlat(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string v4, "always_on"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v6, :cond_4

    move v4, v6

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setAlwaysOn(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string v4, "infrastructure_bitmask"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setInfrastructureBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string v4, "esim_bootstrap_provisioning"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v6, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {v3, v5}, Landroid/telephony/data/ApnSetting$Builder;->setEsimBootstrapProvisioning(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    const-string v4, "edited"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting$Builder;->setEditedStatus(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting$Builder;->buildWithoutCheck()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    return-object v3
.end method

.method public static greylist-max-o makeApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/ApnSetting;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/data/ApnSetting;->makeApnSetting(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist makeApnSetting(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/ApnSetting;
    .locals 3

    new-instance v0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mId:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setOperatorNumeric(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    if-eqz p1, :cond_0

    and-int/lit16 v1, v1, -0x201

    :cond_0
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/data/ApnSetting;->mLingeringNetworkTypeBitmask:J

    invoke-virtual {v0, v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setLingeringNetworkTypeBitmask(J)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/data/ApnSetting;->mPersistent:Z

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mMtuV4:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mMtuV6:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mApnSetId:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mCarrierId:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mSkip464Xlat:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setSkip464Xlat(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/data/ApnSetting;->mAlwaysOn:Z

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setAlwaysOn(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mInfrastructureBitmask:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setInfrastructureBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/data/ApnSetting;->mEsimBootstrapProvisioning:Z

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setEsimBootstrapProvisioning(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mEditedStatus:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setEditedStatus(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting$Builder;->buildWithoutCheck()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    return-object v0
.end method

.method private blacklist mtuUnsetOrEquals(II)Z
    .locals 1

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-ne p1, p2, :cond_0

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

.method private greylist-max-o nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private static greylist-max-o portFromString(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ApnSetting"

    const-string v3, "Can\'t parse port from String"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method private static greylist-max-o portToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static greylist-max-o readFromParcel(Landroid/os/Parcel;)Landroid/telephony/data/ApnSetting;
    .locals 3

    new-instance v0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setOperatorNumeric(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setLingeringNetworkTypeBitmask(J)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setSkip464Xlat(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setAlwaysOn(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setInfrastructureBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setEsimBootstrapProvisioning(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setEditedStatus(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting$Builder;->buildWithoutCheck()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o typeSameAny(Landroid/telephony/data/ApnSetting;Landroid/telephony/data/ApnSetting;)Z
    .locals 2

    iget v0, p1, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    iget v1, p2, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o xorEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method private blacklist xorEqualsInt(II)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eq p2, v0, :cond_1

    if-ne p1, p2, :cond_0

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

.method private blacklist xorEqualsString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public blacklist apnTypeBitmaskSame(I)Z
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o canHandleType(I)Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/data/ApnSetting;->hasApnType(I)Z

    move-result v0

    return v0
.end method

.method public blacklist canSupportLingeringNetworkType(I)Z
    .locals 6

    iget-wide v0, p0, Landroid/telephony/data/ApnSetting;->mLingeringNetworkTypeBitmask:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting;->canSupportNetworkType(I)Z

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Landroid/telephony/data/ApnSetting;->mLingeringNetworkTypeBitmask:J

    const-wide/16 v4, 0x3

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-wide v0, p0, Landroid/telephony/data/ApnSetting;->mLingeringNetworkTypeBitmask:J

    long-to-int v0, v0

    invoke-static {v0, p1}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v0

    return v0
.end method

.method public blacklist canSupportNetworkType(I)Z
    .locals 4

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    invoke-static {v0, p1}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v0

    return v0
.end method

.method public blacklist defaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Landroid/telephony/data/ApnSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/data/ApnSetting;

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mId:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mId:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    iget-boolean v3, v0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mPersistent:Z

    iget-boolean v3, v0, Landroid/telephony/data/ApnSetting;->mPersistent:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMtuV4:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMtuV4:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMtuV6:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMtuV6:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Landroid/telephony/data/ApnSetting;->mLingeringNetworkTypeBitmask:J

    iget-wide v4, v0, Landroid/telephony/data/ApnSetting;->mLingeringNetworkTypeBitmask:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mApnSetId:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mApnSetId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mCarrierId:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mCarrierId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mSkip464Xlat:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mSkip464Xlat:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mAlwaysOn:Z

    iget-boolean v3, v0, Landroid/telephony/data/ApnSetting;->mAlwaysOn:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mInfrastructureBitmask:I

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mInfrastructureBitmask:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mEsimBootstrapProvisioning:Z

    iget-boolean v3, v0, Landroid/telephony/data/ApnSetting;->mEsimBootstrapProvisioning:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public greylist-max-o equals(Ljava/lang/Object;Z)Z
    .locals 5

    instance-of v0, p1, Landroid/telephony/data/ApnSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/data/ApnSetting;

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Landroid/telephony/data/ApnSetting;->mLingeringNetworkTypeBitmask:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v0, Landroid/telephony/data/ApnSetting;->mLingeringNetworkTypeBitmask:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mPersistent:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v0, Landroid/telephony/data/ApnSetting;->mPersistent:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMtuV4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMtuV4:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMtuV6:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMtuV6:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mApnSetId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mApnSetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mCarrierId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mCarrierId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mSkip464Xlat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mSkip464Xlat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mAlwaysOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v0, Landroid/telephony/data/ApnSetting;->mAlwaysOn:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mInfrastructureBitmask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mInfrastructureBitmask:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mEsimBootstrapProvisioning:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v0, Landroid/telephony/data/ApnSetting;->mEsimBootstrapProvisioning:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    nop

    :goto_0
    return v1
.end method

.method public blacklist equalsExceptID(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Landroid/telephony/data/ApnSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/data/ApnSetting;

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->toStringExceptID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->toStringExceptID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/telephony/data/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/telephony/data/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/telephony/data/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/telephony/data/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist getApnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getApnSetId()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mApnSetId:I

    return v0
.end method

.method public whitelist getApnTypeBitmask()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    return v0
.end method

.method public blacklist getApnTypes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget v3, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public whitelist getAuthType()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    return v0
.end method

.method public whitelist getCarrierId()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mCarrierId:I

    return v0
.end method

.method public blacklist getEditedStatus()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mEditedStatus:I

    return v0
.end method

.method public whitelist getEntryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mId:I

    return v0
.end method

.method public blacklist getInfrastructureBitmask()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mInfrastructureBitmask:I

    return v0
.end method

.method public blacklist getLingeringNetworkTypeBitmask()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/data/ApnSetting;->mLingeringNetworkTypeBitmask:J

    return-wide v0
.end method

.method public greylist-max-o getMaxConns()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    return v0
.end method

.method public greylist-max-o getMaxConnsTime()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    return v0
.end method

.method public whitelist getMmsProxyAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->inetAddressFromString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMmsProxyAddressAsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMmsProxyPort()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    return v0
.end method

.method public whitelist getMmsc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getMtuV4()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMtuV4:I

    return v0
.end method

.method public whitelist getMtuV6()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMtuV6:I

    return v0
.end method

.method public greylist-max-o getMvnoMatchData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMvnoType()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    return v0
.end method

.method public whitelist getNetworkTypeBitmask()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    return v0
.end method

.method public whitelist getOperatorNumeric()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getPermanentFailed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mPermanentFailed:Z

    return v0
.end method

.method public whitelist getProfileId()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    return v0
.end method

.method public whitelist getProtocol()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    return v0
.end method

.method public whitelist getProxyAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->inetAddressFromString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProxyAddressAsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProxyPort()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    return v0
.end method

.method public whitelist getRoamingProtocol()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    return v0
.end method

.method public blacklist getSkip464Xlat()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mSkip464Xlat:I

    return v0
.end method

.method public whitelist getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getWaitTime()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    return v0
.end method

.method public blacklist hasApnTypeExt(I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/telephony/data/ApnSetting;->hasApnType(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasMvnoParams()Z
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->getMvnoTypeStringFromInt(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 35

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    iget-object v2, v0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/lang/String;

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    iget-object v5, v0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/lang/String;

    iget v6, v0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    iget-object v8, v0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    iget v9, v0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, v0, Landroid/telephony/data/ApnSetting;->mId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    iget v13, v0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v15, v0, Landroid/telephony/data/ApnSetting;->mMtuV4:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v33, v1

    iget v1, v0, Landroid/telephony/data/ApnSetting;->mMtuV6:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-boolean v1, v0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    iget v1, v0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v34, v2

    iget-wide v1, v0, Landroid/telephony/data/ApnSetting;->mLingeringNetworkTypeBitmask:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    iget v1, v0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-boolean v1, v0, Landroid/telephony/data/ApnSetting;->mPersistent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    iget v1, v0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget v1, v0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget v1, v0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget v1, v0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    iget-object v1, v0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    move-object/from16 v26, v1

    iget v1, v0, Landroid/telephony/data/ApnSetting;->mApnSetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    iget v1, v0, Landroid/telephony/data/ApnSetting;->mCarrierId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    iget v1, v0, Landroid/telephony/data/ApnSetting;->mSkip464Xlat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    iget-boolean v1, v0, Landroid/telephony/data/ApnSetting;->mAlwaysOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    iget v1, v0, Landroid/telephony/data/ApnSetting;->mInfrastructureBitmask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    iget-boolean v1, v0, Landroid/telephony/data/ApnSetting;->mEsimBootstrapProvisioning:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    filled-new-array/range {v1 .. v32}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist isAlwaysOn()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mAlwaysOn:Z

    return v0
.end method

.method public blacklist isEmergencyApn()Z
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/telephony/data/ApnSetting;->hasApnType(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    return v0
.end method

.method public blacklist isEsimBootstrapProvisioning()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mEsimBootstrapProvisioning:Z

    return v0
.end method

.method public blacklist isForInfrastructure(I)Z
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mInfrastructureBitmask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isPersistent()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mPersistent:Z

    return v0
.end method

.method public greylist-max-o setPermanentFailed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/data/ApnSetting;->mPermanentFailed:Z

    return-void
.end method

.method public greylist-max-o similar(Landroid/telephony/data/ApnSetting;)Z
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    iget-object v1, p1, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/telephony/data/ApnSetting;->xorEqualsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-direct {p0, v0, v1}, Landroid/telephony/data/ApnSetting;->xorEqualsInt(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    iget-object v1, p1, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Landroid/telephony/data/ApnSetting;->xorEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/telephony/data/ApnSetting;->xorEqualsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-direct {p0, v0, v1}, Landroid/telephony/data/ApnSetting;->xorEqualsInt(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    iget-object v1, p1, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/telephony/data/ApnSetting;->xorEqualsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    iget-object v1, p1, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/telephony/data/ApnSetting;->xorEqualsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    iget-object v1, p1, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMtuV4:I

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mMtuV4:I

    invoke-direct {p0, v0, v1}, Landroid/telephony/data/ApnSetting;->mtuUnsetOrEquals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMtuV6:I

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mMtuV6:I

    invoke-direct {p0, v0, v1}, Landroid/telephony/data/ApnSetting;->mtuUnsetOrEquals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p1, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/telephony/data/ApnSetting;->mLingeringNetworkTypeBitmask:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p1, Landroid/telephony/data/ApnSetting;->mLingeringNetworkTypeBitmask:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mPersistent:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p1, Landroid/telephony/data/ApnSetting;->mPersistent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mApnSetId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mApnSetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mCarrierId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mCarrierId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mSkip464Xlat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mSkip464Xlat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mAlwaysOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p1, Landroid/telephony/data/ApnSetting;->mAlwaysOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mInfrastructureBitmask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mInfrastructureBitmask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mEsimBootstrapProvisioning:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p1, Landroid/telephony/data/ApnSetting;->mEsimBootstrapProvisioning:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o toContentValues()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "numeric"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mcc"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mnc"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apn"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "proxy"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->portToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "port"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->UriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mmsc"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->portToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mmsport"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mmsproxy"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "authtype"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-direct {p0, v1}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-static {v2}, Landroid/telephony/data/ApnSetting;->getProtocolStringFromInt(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "protocol"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-static {v2}, Landroid/telephony/data/ApnSetting;->getProtocolStringFromInt(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "roaming_protocol"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "carrier_enabled"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-static {v2}, Landroid/telephony/data/ApnSetting;->getMvnoTypeStringFromInt(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mvno_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mvno_match_data"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "network_type_bitmask"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v2, p0, Landroid/telephony/data/ApnSetting;->mLingeringNetworkTypeBitmask:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "lingering_network_type_bitmask"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMtuV4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "mtu_v4"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMtuV6:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "mtu_v6"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mCarrierId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "carrier_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mSkip464Xlat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "skip_464xlat"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mAlwaysOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "always_on"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mInfrastructureBitmask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "infrastructure_bitmask"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mEsimBootstrapProvisioning:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "esim_bootstrap_provisioning"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ApnSetting] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/data/ApnSetting;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->UriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->portToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->portToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v3, " | "

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    iget v5, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    iget v5, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/data/ApnSetting;->mPersistent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mMtuV4:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mMtuV6:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_INT_MAP:Ljava/util/Map;

    iget v5, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/data/ApnSetting;->mPermanentFailed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/telephony/data/ApnSetting;->mLingeringNetworkTypeBitmask:J

    invoke-static {v4, v5}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mApnSetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mCarrierId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mSkip464Xlat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/data/ApnSetting;->mAlwaysOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mInfrastructureBitmask:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    iget-object v5, p0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/data/ApnSetting;->mEsimBootstrapProvisioning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/data/ApnSetting;->mEditedStatus:I

    invoke-static {v3}, Lcom/android/internal/telephony/util/TelephonyUtils;->apnEditedStatusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist toStringExceptID()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ApnSetting] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->UriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->portToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->portToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v3, " | "

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    iget v5, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    iget v5, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/data/ApnSetting;->mPersistent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mMtuV4:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mMtuV6:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_INT_MAP:Ljava/util/Map;

    iget v5, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/data/ApnSetting;->mPermanentFailed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/telephony/data/ApnSetting;->mLingeringNetworkTypeBitmask:J

    invoke-static {v4, v5}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mApnSetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mCarrierId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mSkip464Xlat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/data/ApnSetting;->mAlwaysOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mInfrastructureBitmask:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    iget-object v5, p0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/data/ApnSetting;->mEsimBootstrapProvisioning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/data/ApnSetting;->mEditedStatus:I

    invoke-static {v3}, Lcom/android/internal/telephony/util/TelephonyUtils;->apnEditedStatusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/data/ApnSetting;->mLingeringNetworkTypeBitmask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mPersistent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMtuV4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMtuV6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mApnSetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mCarrierId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mSkip464Xlat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mAlwaysOn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mInfrastructureBitmask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mEsimBootstrapProvisioning:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mEditedStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

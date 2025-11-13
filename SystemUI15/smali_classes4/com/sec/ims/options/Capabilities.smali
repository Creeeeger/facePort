.class public Lcom/sec/ims/options/Capabilities;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static FEATURE_ALL:J = 0x0L

.field public static FEATURE_BURN_MSG:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static FEATURE_CALL_SERVICE:J = 0x0L

.field public static FEATURE_CANCEL_MESSAGE:J = 0x0L

.field public static FEATURE_CARD_MSG:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static FEATURE_CHATBOT_CHAT_SESSION:J = 0x0L

.field public static FEATURE_CHATBOT_COMMUNICATION:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static FEATURE_CHATBOT_EXTENDED_MSG:J = 0x0L

.field public static FEATURE_CHATBOT_ROLE:J = 0x0L

.field public static FEATURE_CHATBOT_STANDALONE_MSG:J = 0x0L

.field public static FEATURE_CHAT_CPM:I = 0x0

.field public static FEATURE_CHAT_SIMPLE_IM:I = 0x0

.field public static FEATURE_CLOUD_FILE:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static FEATURE_ENRICHED_CALL_COMPOSER:J = 0x0L

.field public static FEATURE_ENRICHED_POST_CALL:J = 0x0L

.field public static FEATURE_ENRICHED_SHARED_MAP:J = 0x0L

.field public static FEATURE_ENRICHED_SHARED_SKETCH:J = 0x0L

.field public static FEATURE_EXTENDED_MESSAGING:J = 0x0L

.field public static FEATURE_FT:I = 0x0

.field public static FEATURE_FT_HTTP:I = 0x0

.field public static FEATURE_FT_HTTP_EXTRA:I = 0x0

.field public static FEATURE_FT_SERVICE:I = 0x0

.field public static FEATURE_FT_STORE:I = 0x0

.field public static FEATURE_FT_THUMBNAIL:I = 0x0

.field public static FEATURE_FT_THUMBNAIL_V1:I = 0x0

.field public static FEATURE_FT_VIA_SMS:I = 0x0

.field public static FEATURE_GEOLOCATION_PULL:I = 0x0

.field public static FEATURE_GEOLOCATION_PULL_FT:I = 0x0

.field public static FEATURE_GEOLOCATION_PUSH:I = 0x0

.field public static FEATURE_GEO_VIA_SMS:I = 0x0

.field public static FEATURE_IM_SERVICE:J = 0x0L

.field public static FEATURE_INTEGRATED_MSG:I = 0x0

.field public static FEATURE_IPCALL:I = 0x0

.field public static FEATURE_IPCALL_VIDEO:I = 0x0

.field public static FEATURE_IPCALL_VIDEO_ONLY:I = 0x0

.field public static FEATURE_ISH:I = 0x0

.field public static FEATURE_LAST_SEEN_ACTIVE:J = 0x0L

.field public static FEATURE_MMTEL:I = 0x0

.field public static FEATURE_MMTEL_CALL_COMPOSER:J = 0x0L

.field public static FEATURE_MMTEL_VIDEO:I = 0x0

.field public static FEATURE_NON_RCS_USER:I = 0x0

.field public static FEATURE_NOT_UPDATED:I = 0x0

.field public static FEATURE_OFFLINE_RCS_USER:I = 0x0

.field public static FEATURE_PLUG_IN:J = 0x0L

.field public static FEATURE_PRESENCE_DISCOVERY:I = 0x0

.field public static FEATURE_PUBLIC_MSG:J = 0x0L

.field public static FEATURE_SF_GROUP_CHAT:I = 0x0

.field public static FEATURE_SOCIAL_PRESENCE:I = 0x0

.field public static FEATURE_STANDALONE_MSG:I = 0x0

.field public static FEATURE_STANDALONE_MSG_V1:I = 0x0

.field public static FEATURE_STICKER:I = 0x0

.field public static FEATURE_TAG_CANCEL_MESSAGE:Ljava/lang/String; = null

.field public static FEATURE_TAG_CHAT:Ljava/lang/String; = null

.field public static final FEATURE_TAG_CHATBOT_CHAT_SESSION:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""

.field public static final FEATURE_TAG_CHATBOT_COMMUNICATION:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_TAG_CHATBOT_ROLE:Ljava/lang/String; = "+g.gsma.rcs.isbot"

.field public static final FEATURE_TAG_CHATBOT_STANDALONE_MSG:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

.field public static final FEATURE_TAG_ENRICHED_CALL_COMPOSER:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

.field public static final FEATURE_TAG_ENRICHED_POST_CALL:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

.field public static final FEATURE_TAG_ENRICHED_SHARED_MAP:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

.field public static final FEATURE_TAG_ENRICHED_SHARED_SKETCH:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

.field public static final FEATURE_TAG_EXTENDED_BOT_MSG:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.xbotmessage\""

.field public static FEATURE_TAG_EXTENDED_MESSAGING:Ljava/lang/String; = null

.field public static FEATURE_TAG_FT:Ljava/lang/String; = null

.field public static FEATURE_TAG_FT_HTTP:Ljava/lang/String; = null

.field public static FEATURE_TAG_FT_HTTP_EXTRA:Ljava/lang/String; = null

.field public static FEATURE_TAG_FT_STORE:Ljava/lang/String; = null

.field public static FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String; = null

.field public static final FEATURE_TAG_FT_VIA_SMS:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftsms\""

.field public static FEATURE_TAG_GEOLOCATION_PULL:Ljava/lang/String; = null

.field public static FEATURE_TAG_GEOLOCATION_PULL_FT:Ljava/lang/String; = null

.field public static FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String; = null

.field public static final FEATURE_TAG_GEO_VIA_SMS:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms\""

.field public static FEATURE_TAG_INTEGRATED_MSG:Ljava/lang/String; = null

.field public static FEATURE_TAG_IPCALL:Ljava/lang/String; = null

.field public static FEATURE_TAG_IPCALL_VIDEO:Ljava/lang/String; = null

.field public static FEATURE_TAG_IPCALL_VIDEO_ONLY:Ljava/lang/String; = null

.field public static FEATURE_TAG_ISH:Ljava/lang/String; = null

.field public static FEATURE_TAG_LAST_SEEN_ACTIVE:Ljava/lang/String; = null

.field public static FEATURE_TAG_MMTEL:Ljava/lang/String; = null

.field public static FEATURE_TAG_MMTEL_CALL_COMPOSER:Ljava/lang/String; = null

.field public static FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String; = null

.field public static FEATURE_TAG_NOT_UPDATED:Ljava/lang/String; = null

.field public static FEATURE_TAG_NULL:Ljava/lang/String; = null

.field public static final FEATURE_TAG_PLUG_IN:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.plugin\""

.field public static FEATURE_TAG_PRESENCE_DISCOVERY:Ljava/lang/String; = null

.field public static FEATURE_TAG_PUBLIC_MSG:Ljava/lang/String; = null

.field public static FEATURE_TAG_SF_GROUP_CHAT:Ljava/lang/String; = null

.field public static FEATURE_TAG_SOCIAL_PRESENCE:Ljava/lang/String; = null

.field public static FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String; = null

.field public static FEATURE_TAG_STICKER:Ljava/lang/String; = null

.field public static FEATURE_TAG_VSH:Ljava/lang/String; = null

.field public static FEATURE_TAG_VSH_OUTSIDE_CALL:Ljava/lang/String; = null

.field public static FEATURE_VEMOTICON:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static FEATURE_VSH:I = 0x0

.field public static FEATURE_VSH_OUTSIDE_CALL:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CapexInfo"

.field private static final SHIP_BUILD:Z

.field private static sFeatureTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sTagFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvailableFeatures:J

.field private mBotServiceId:Ljava/lang/String;

.field private mContactId:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private final mExtFeatureLock:Ljava/lang/Object;

.field private mExtFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtendedMessagingVersion:Ljava/lang/String;

.field private mFeatures:J

.field private mId:J

.field private mIsAvailable:Z

.field private mIsExpired:Z

.field private mIsLegacyLatching:Z

.field private mLastSeen:J

.field private mNumber:Ljava/lang/String;

.field private final mPAssertedIdLock:Ljava/lang/Object;

.field private mPAssertedIdSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mPidf:Ljava/lang/String;

.field private mSupportPresence:Z

.field private mTimestamp:Ljava/util/Date;

.field private mUri:Lcom/sec/ims/util/ImsUri;

.field private mXbotVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/ims/options/Capabilities;->SHIP_BUILD:Z

    const/high16 v0, 0x1000000

    sput v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    const/high16 v0, 0x2000000

    sput v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    const/4 v0, 0x0

    sput v0, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    const/4 v0, 0x1

    sput v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    const/4 v1, 0x2

    sput v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    const/4 v2, 0x4

    sput v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    const/16 v3, 0x8

    sput v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    const/16 v3, 0x10

    sput v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    const/16 v4, 0x20

    sput v4, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    const/16 v4, 0x40

    sput v4, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    const/16 v5, 0x80

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    const/16 v5, 0x100

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    const/16 v5, 0x200

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    const/16 v5, 0x400

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    const/16 v5, 0x800

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    const/16 v5, 0x1000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    const/16 v5, 0x2000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    const/16 v5, 0x4000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    const v5, 0x8000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    const/high16 v5, 0x10000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    const/high16 v5, 0x20000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    const/high16 v5, 0x40000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    const/high16 v5, 0x80000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    const/high16 v5, 0x100000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    const/high16 v5, 0x200000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    const/high16 v6, 0x400000

    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    const/high16 v6, 0x800000

    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    const/high16 v6, 0x8000000

    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    const/high16 v6, 0x10000000

    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP_EXTRA:I

    const/high16 v6, 0x20000000

    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG_V1:I

    const/high16 v6, 0x40000000    # 2.0f

    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL_V1:I

    const-wide v6, 0x100000000L

    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_VEMOTICON:J

    const-wide v6, 0x200000000L

    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_CARD_MSG:J

    const-wide v6, 0x400000000L

    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_BURN_MSG:J

    const-wide v6, 0x800000000L

    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_CLOUD_FILE:J

    const-wide v6, 0x1000000000L

    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    const-wide v6, 0x2000000000L

    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    const-wide v6, 0x4000000000L

    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    const-wide v8, 0x8000000000L

    sput-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    const-wide v8, 0x10000000000L

    sput-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_COMMUNICATION:J

    sput-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    const-wide v10, 0x20000000000L

    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    const-wide v10, 0x40000000000L

    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    const-wide v10, 0x80000000000L

    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    const-wide v10, 0x100000000000L

    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    const-wide v10, 0x200000000000L

    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    const-wide v10, 0x400000000000L

    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    const-wide v10, 0x800000000000L

    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    const-wide/high16 v10, 0x1000000000000L

    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    const-wide/high16 v10, 0x2000000000000L

    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_EXTENDED_MESSAGING:J

    or-int/2addr v2, v5

    int-to-long v10, v2

    or-long/2addr v8, v10

    sput-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_IM_SERVICE:J

    or-int/lit8 v2, v3, 0x40

    sput v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_SERVICE:I

    or-int/2addr v0, v1

    int-to-long v0, v0

    or-long/2addr v0, v6

    sput-wide v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CALL_SERVICE:J

    const-wide v0, 0xfffffffffffffffL

    sput-wide v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ALL:J

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_ISH:Ljava/lang/String;

    const-string v0, "+g.3gpp.cs-voice"

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH:Ljava/lang/String;

    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg,urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fullsfgroupchat\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SF_GROUP_CHAT:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftthumb\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftstandfw\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_STORE:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn:urn-7:3gpp-application.ims.iari.gsma-vs\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH_OUTSIDE_CALL:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.sp\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SOCIAL_PRESENCE:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.dp\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PRESENCE_DISCOVERY:Ljava/lang/String;

    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\";video"

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String;

    const-string v0, "+g.gsma.callcomposer"

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_CALL_COMPOSER:Ljava/lang/String;

    const-string v0, "+g.gsma.rcs.ipcall"

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL:Ljava/lang/String;

    const-string v0, "+g.gsma.rcs.ipcall;video"

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO:Ljava/lang/String;

    const-string v0, "+g.gsma.rcs.ipvideocallonly"

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO_ONLY:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL_FT:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.joyn.intmsg\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_INTEGRATED_MSG:Ljava/lang/String;

    const-string v0, "null"

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NULL:Ljava/lang/String;

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.sticker\""

    sput-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STICKER:Ljava/lang/String;

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttpextra\""

    sput-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP_EXTRA:Ljava/lang/String;

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.cancelmessage\""

    sput-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CANCEL_MESSAGE:Ljava/lang/String;

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs .mnc000.mcc460.publicmsg\""

    sput-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PUBLIC_MSG:Ljava/lang/String;

    const-string v1, "not_updated"

    sput-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NOT_UPDATED:Ljava/lang/String;

    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.lastseenactive\""

    sput-object v2, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_LAST_SEEN_ACTIVE:Ljava/lang/String;

    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.msg.extended\""

    sput-object v2, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_EXTENDED_MESSAGING:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_ISH:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SF_GROUP_CHAT:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_STORE:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG_V1:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH_OUTSIDE_CALL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SOCIAL_PRESENCE:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PRESENCE_DISCOVERY:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_CALL_COMPOSER:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO_ONLY:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL_FT:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_INTEGRATED_MSG:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NULL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NOT_UPDATED:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STICKER:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL_V1:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP_EXTRA:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP_EXTRA:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftsms\""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms\""

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v6, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v7, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v7, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v8, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v9, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v9, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v10, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_LAST_SEEN_ACTIVE:Ljava/lang/String;

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v10, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v11, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v11, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CANCEL_MESSAGE:Ljava/lang/String;

    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v11, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v12, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v12, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.xbotmessage\""

    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v13, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v13, "+g.gsma.rcs.isbot"

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v14, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v14, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.plugin\""

    invoke-interface {v2, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v15, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v15, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PUBLIC_MSG:Ljava/lang/String;

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v15, Lcom/sec/ims/options/Capabilities;->FEATURE_EXTENDED_MESSAGING:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v15, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_EXTENDED_MESSAGING:Ljava/lang/String;

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v3, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_ISH:Ljava/lang/String;

    sget v15, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    int-to-long v0, v15

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SF_GROUP_CHAT:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_STORE:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG_V1:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH_OUTSIDE_CALL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SOCIAL_PRESENCE:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PRESENCE_DISCOVERY:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_CALL_COMPOSER:Ljava/lang/String;

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO_ONLY:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL_FT:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_INTEGRATED_MSG:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NULL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NOT_UPDATED:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STICKER:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP_EXTRA:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP_EXTRA:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_LAST_SEEN_ACTIVE:Ljava/lang/String;

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CANCEL_MESSAGE:Ljava/lang/String;

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_EXTENDED_MESSAGING:Ljava/lang/String;

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_EXTENDED_MESSAGING:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "vsh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "im"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fullsf_groupchat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ft"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftthumb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftstandfw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fthttp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "standalone_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG_V1:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "standalone_msg_v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "vsh_outside_call"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "dp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mmtel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mmtel_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mmtel_call_composer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ipcall"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ipcall_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ipcall_video_only"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "geopush"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "geopullft"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "intergrated_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "session_mode_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sticker"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL_V1:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftthumb_v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP_EXTRA:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fthttp_extra"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftsms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "geosms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "callcomposer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sharedmap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sharedsketch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "callunanswered"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastseenactive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "chatbot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "cancelmessage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "chatbot_standalone_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "extended_bot_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "isbot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "plugin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "publicmsg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_EXTENDED_MESSAGING:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "extended_messaging"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/ims/options/Capabilities$1;

    invoke-direct {v0}, Lcom/sec/ims/options/Capabilities$1;-><init>()V

    sput-object v0, Lcom/sec/ims/options/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatureLock:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsExpired:Z

    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdSet:Ljava/util/List;

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mXbotVersion:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mExtendedMessagingVersion:Ljava/lang/String;

    const-string v0, "sip:foo@examcple.com"

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mUri:Lcom/sec/ims/util/ImsUri;

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mContactId:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mDisplayName:Ljava/lang/String;

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v1, v0

    iput-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatureLock:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsExpired:Z

    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdSet:Ljava/util/List;

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mXbotVersion:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mExtendedMessagingVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mContactId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v3, v1

    :cond_2
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mXbotVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mExtendedMessagingVersion:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/options/Capabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatureLock:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsExpired:Z

    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdSet:Ljava/util/List;

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mXbotVersion:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mExtendedMessagingVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mUri:Lcom/sec/ims/util/ImsUri;

    iput-object p2, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/ims/options/Capabilities;->mContactId:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    iput-object p6, p0, Lcom/sec/ims/options/Capabilities;->mDisplayName:Ljava/lang/String;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    return-void
.end method

.method public static dumpFeature(J)Ljava/lang/String;
    .locals 4

    invoke-static {p0, p1}, Lcom/sec/ims/options/Capabilities;->getFeatureTag(J)[Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dumpServices(J)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    and-long/2addr v3, p0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFeatureTag(J)[Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, p0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFeatureTag: features = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapexInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getTagFeature(Ljava/lang/String;)J
    .locals 2

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v0, p0

    return-wide v0
.end method

.method private toStringLimit(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public addExtFeature(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addFeature(J)V
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    return-void
.end method

.method public clone()Lcom/sec/ims/options/Capabilities;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/options/Capabilities;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAvailableFeatures()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    return-wide v0
.end method

.method public getBotServiceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public getContactId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mContactId:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public getExpired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/ims/options/Capabilities;->mIsExpired:Z

    return p0
.end method

.method public getExtFeature()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getExtFeatureAsJoinedString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, ""

    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getExtendedMessagingVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mExtendedMessagingVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getFeature()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    return-wide v0
.end method

.method public getFeatureTag()[Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    invoke-static {v0, v1}, Lcom/sec/ims/options/Capabilities;->getFeatureTag(J)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    return-wide v0
.end method

.method public getLastSeen()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    return-wide v0
.end method

.method public getLegacyLatching()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    return p0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getPAssertedId()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdSet:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPhoneId()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    return p0
.end method

.method public getPidf()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    return-object p0
.end method

.method public getUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getXbotVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mXbotVersion:Ljava/lang/String;

    return-object p0
.end method

.method public hasAnyFeature(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    and-long p0, v0, p1

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasFeature(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    int-to-long p0, p1

    and-long/2addr v0, p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasFeature(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    and-long/2addr v0, p1

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasNoRcsFeatures()Z
    .locals 4

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    not-int p0, p0

    int-to-long v2, p0

    and-long/2addr v0, v2

    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    not-int p0, p0

    int-to-long v2, p0

    and-long/2addr v0, v2

    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hasPresenceSupport()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    return p0
.end method

.method public isExpired(J)Z
    .locals 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/ims/options/Capabilities;->setExpired(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isExpired: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sec/ims/options/Capabilities;->mIsExpired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", capInfoExpiry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " sec, elapsed time = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CapexInfo"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/sec/ims/options/Capabilities;->mIsExpired:Z

    return p0
.end method

.method public isFeatureAvailable(I)Z
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(J)Z

    move-result p0

    return p0
.end method

.method public isFeatureAvailable(J)Z
    .locals 6

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isFeatureAvailable: feature "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapexInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public removeFeature(J)V
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    not-long p1, p1

    and-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    return-void
.end method

.method public resetFeatures()V
    .locals 3

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v1, v0

    iput-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    iput-boolean v0, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    return-void
.end method

.method public setAvailableFeatures(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    return-void
.end method

.method public setAvailiable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    return-void
.end method

.method public setBotServiceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    return-void
.end method

.method public setExpired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/ims/options/Capabilities;->mIsExpired:Z

    return-void
.end method

.method public setExtFeature(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setExtendedMessagingVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mExtendedMessagingVersion:Ljava/lang/String;

    return-void
.end method

.method public setFeatures(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    return-void
.end method

.method public setLastSeen(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    return-void
.end method

.method public setLegacyLatching(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public setPAssertedId(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdSet:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setPhoneId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    return-void
.end method

.method public setPidf(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    return-void
.end method

.method public setPresenceSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    return-void
.end method

.method public setUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mUri:Lcom/sec/ims/util/ImsUri;

    :cond_0
    return-void
.end method

.method public setXbotVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mXbotVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Capabilities [mId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/sec/ims/options/Capabilities;->SHIP_BUILD:Z

    const-string v2, "xxxxx"

    if-eqz v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/ims/options/Capabilities;->mUri:Lcom/sec/ims/util/ImsUri;

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mContactId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/ims/options/Capabilities;->mContactId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mNumber="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-direct {p0, v3}, Lcom/sec/ims/options/Capabilities;->toStringLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mIsAvailable="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mFeatures="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mAvailableFeatures="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mSupportPresence="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsLegacyLatching="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mPhoneId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mBotServiceId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], mAvailableFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    invoke-static {v1, v2}, Lcom/sec/ims/options/Capabilities;->dumpServices(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    invoke-static {v1, v2}, Lcom/sec/ims/options/Capabilities;->dumpServices(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastSeen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mExtFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mXbotVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/options/Capabilities;->mXbotVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtendedMessagingVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mExtendedMessagingVersion:Ljava/lang/String;

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateCapabilities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/ims/options/Capabilities;->mContactId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/ims/options/Capabilities;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public updateTimestamp()V
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mContactId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mDisplayName:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mUri:Lcom/sec/ims/util/ImsUri;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const-string p2, ""

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const-string p2, ""

    :goto_2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatureLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    if-eqz p2, :cond_4

    goto :goto_4

    :cond_4
    const-string p2, ""

    :goto_4
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mXbotVersion:Ljava/lang/String;

    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    const-string p2, ""

    :goto_5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mExtendedMessagingVersion:Ljava/lang/String;

    if-eqz p0, :cond_6

    goto :goto_6

    :cond_6
    const-string p0, ""

    :goto_6
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

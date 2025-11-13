.class public Lcom/sec/ims/options/Capabilities;
.super Ljava/lang/Object;
.source "Capabilities.java"

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

.field public static FEATURE_ALL:J

.field public static FEATURE_BURN_MSG:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static FEATURE_CALL_SERVICE:J

.field public static FEATURE_CANCEL_MESSAGE:J

.field public static FEATURE_CARD_MSG:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static FEATURE_CHATBOT_CHAT_SESSION:J

.field public static FEATURE_CHATBOT_COMMUNICATION:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static FEATURE_CHATBOT_EXTENDED_MSG:J

.field public static FEATURE_CHATBOT_ROLE:J

.field public static FEATURE_CHATBOT_STANDALONE_MSG:J

.field public static FEATURE_CHAT_CPM:I

.field public static FEATURE_CHAT_SIMPLE_IM:I

.field public static FEATURE_CLOUD_FILE:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static FEATURE_ENRICHED_CALL_COMPOSER:J

.field public static FEATURE_ENRICHED_POST_CALL:J

.field public static FEATURE_ENRICHED_SHARED_MAP:J

.field public static FEATURE_ENRICHED_SHARED_SKETCH:J

.field public static FEATURE_FT:I

.field public static FEATURE_FT_HTTP:I

.field public static FEATURE_FT_HTTP_EXTRA:I

.field public static FEATURE_FT_SERVICE:I

.field public static FEATURE_FT_STORE:I

.field public static FEATURE_FT_THUMBNAIL:I

.field public static FEATURE_FT_THUMBNAIL_V1:I

.field public static FEATURE_FT_VIA_SMS:I

.field public static FEATURE_GEOLOCATION_PULL:I

.field public static FEATURE_GEOLOCATION_PULL_FT:I

.field public static FEATURE_GEOLOCATION_PUSH:I

.field public static FEATURE_GEO_VIA_SMS:I

.field public static FEATURE_IM_SERVICE:J

.field public static FEATURE_INTEGRATED_MSG:I

.field public static FEATURE_IPCALL:I

.field public static FEATURE_IPCALL_VIDEO:I

.field public static FEATURE_IPCALL_VIDEO_ONLY:I

.field public static FEATURE_ISH:I

.field public static FEATURE_LAST_SEEN_ACTIVE:J

.field public static FEATURE_MMTEL:I

.field public static FEATURE_MMTEL_CALL_COMPOSER:J

.field public static FEATURE_MMTEL_VIDEO:I

.field public static FEATURE_NON_RCS_USER:I

.field public static FEATURE_NOT_UPDATED:I

.field public static FEATURE_OFFLINE_RCS_USER:I

.field public static FEATURE_PLUG_IN:J

.field public static FEATURE_PRESENCE_DISCOVERY:I

.field public static FEATURE_PUBLIC_MSG:J

.field public static FEATURE_SF_GROUP_CHAT:I

.field public static FEATURE_SOCIAL_PRESENCE:I

.field public static FEATURE_STANDALONE_MSG:I

.field public static FEATURE_STANDALONE_MSG_V1:I

.field public static FEATURE_STICKER:I

.field public static FEATURE_TAG_CANCEL_MESSAGE:Ljava/lang/String;

.field public static FEATURE_TAG_CHAT:Ljava/lang/String;

.field public static FEATURE_TAG_FT:Ljava/lang/String;

.field public static FEATURE_TAG_FT_HTTP:Ljava/lang/String;

.field public static FEATURE_TAG_FT_HTTP_EXTRA:Ljava/lang/String;

.field public static FEATURE_TAG_FT_STORE:Ljava/lang/String;

.field public static FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String;

.field public static FEATURE_TAG_GEOLOCATION_PULL:Ljava/lang/String;

.field public static FEATURE_TAG_GEOLOCATION_PULL_FT:Ljava/lang/String;

.field public static FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String;

.field public static FEATURE_TAG_INTEGRATED_MSG:Ljava/lang/String;

.field public static FEATURE_TAG_IPCALL:Ljava/lang/String;

.field public static FEATURE_TAG_IPCALL_VIDEO:Ljava/lang/String;

.field public static FEATURE_TAG_IPCALL_VIDEO_ONLY:Ljava/lang/String;

.field public static FEATURE_TAG_ISH:Ljava/lang/String;

.field public static FEATURE_TAG_LAST_SEEN_ACTIVE:Ljava/lang/String;

.field public static FEATURE_TAG_MMTEL:Ljava/lang/String;

.field public static FEATURE_TAG_MMTEL_CALL_COMPOSER:Ljava/lang/String;

.field public static FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String;

.field public static FEATURE_TAG_NOT_UPDATED:Ljava/lang/String;

.field public static FEATURE_TAG_NULL:Ljava/lang/String;

.field public static FEATURE_TAG_PRESENCE_DISCOVERY:Ljava/lang/String;

.field public static FEATURE_TAG_PUBLIC_MSG:Ljava/lang/String;

.field public static FEATURE_TAG_SF_GROUP_CHAT:Ljava/lang/String;

.field public static FEATURE_TAG_SOCIAL_PRESENCE:Ljava/lang/String;

.field public static FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

.field public static FEATURE_TAG_STICKER:Ljava/lang/String;

.field public static FEATURE_TAG_VSH:Ljava/lang/String;

.field public static FEATURE_TAG_VSH_OUTSIDE_CALL:Ljava/lang/String;

.field public static FEATURE_VEMOTICON:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static FEATURE_VSH:I

.field public static FEATURE_VSH_OUTSIDE_CALL:I

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

.field private mExtFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatures:J

.field private mId:J

.field private mIsAvailable:Z

.field private mIsExpired:Z

.field private mIsLegacyLatching:Z

.field private mLastSeen:J

.field private mNumber:Ljava/lang/String;

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


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "ro.product_ship"

    const-string v1, "false"

    .line 58
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/ims/options/Capabilities;->SHIP_BUILD:Z

    const/high16 v0, 0x1000000

    .line 71
    sput v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    const/high16 v0, 0x2000000

    .line 72
    sput v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    const/4 v0, 0x0

    .line 78
    sput v0, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    const/4 v0, 0x1

    .line 79
    sput v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    const/4 v1, 0x2

    .line 80
    sput v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    const/4 v2, 0x4

    .line 81
    sput v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    const/16 v3, 0x8

    .line 82
    sput v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    const/16 v3, 0x10

    .line 83
    sput v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    const/16 v4, 0x20

    .line 84
    sput v4, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    const/16 v4, 0x40

    .line 85
    sput v4, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    const/16 v5, 0x80

    .line 86
    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    const/16 v5, 0x100

    .line 87
    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    const/16 v5, 0x200

    .line 88
    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    const/16 v5, 0x400

    .line 89
    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    const/16 v5, 0x800

    .line 90
    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    const/16 v5, 0x1000

    .line 91
    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    const/16 v5, 0x2000

    .line 92
    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    const/16 v5, 0x4000

    .line 93
    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    const v5, 0x8000

    .line 94
    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    const/high16 v5, 0x10000

    .line 95
    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    const/high16 v5, 0x20000

    .line 96
    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    const/high16 v5, 0x40000

    .line 97
    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    const/high16 v5, 0x80000

    .line 98
    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    const/high16 v5, 0x100000

    .line 99
    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    const/high16 v5, 0x200000

    .line 100
    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    const/high16 v6, 0x400000

    .line 101
    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    const/high16 v6, 0x800000

    .line 102
    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    const/high16 v6, 0x8000000

    .line 104
    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    const/high16 v6, 0x10000000

    .line 105
    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP_EXTRA:I

    const/high16 v6, 0x20000000

    .line 106
    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG_V1:I

    const/high16 v6, 0x40000000    # 2.0f

    .line 107
    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL_V1:I

    const-wide v6, 0x100000000L

    .line 114
    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_VEMOTICON:J

    const-wide v6, 0x200000000L

    .line 116
    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_CARD_MSG:J

    const-wide v6, 0x400000000L

    .line 118
    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_BURN_MSG:J

    const-wide v6, 0x800000000L

    .line 120
    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_CLOUD_FILE:J

    const-wide v6, 0x1000000000L

    .line 122
    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    const-wide v6, 0x2000000000L

    .line 123
    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    const-wide v6, 0x4000000000L

    .line 124
    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    const-wide v8, 0x8000000000L

    .line 125
    sput-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    const-wide v8, 0x10000000000L

    .line 127
    sput-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_COMMUNICATION:J

    .line 129
    sput-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    const-wide v10, 0x20000000000L

    .line 130
    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    const-wide v10, 0x40000000000L

    .line 131
    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    const-wide v10, 0x80000000000L

    .line 132
    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    const-wide v10, 0x100000000000L

    .line 133
    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    const-wide v10, 0x200000000000L

    .line 134
    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    const-wide v10, 0x400000000000L

    .line 135
    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    const-wide v10, 0x800000000000L

    .line 136
    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    const-wide/high16 v10, 0x1000000000000L

    .line 137
    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    or-int/2addr v2, v5

    int-to-long v10, v2

    or-long/2addr v8, v10

    .line 139
    sput-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_IM_SERVICE:J

    or-int/lit8 v2, v3, 0x40

    .line 140
    sput v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_SERVICE:I

    or-int/2addr v0, v1

    int-to-long v0, v0

    or-long/2addr v0, v6

    .line 141
    sput-wide v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CALL_SERVICE:J

    const-wide v0, 0xfffffffffffffffL

    .line 144
    sput-wide v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ALL:J

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    .line 146
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_ISH:Ljava/lang/String;

    const-string v0, "+g.3gpp.cs-voice"

    .line 148
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH:Ljava/lang/String;

    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg,urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg\""

    .line 150
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    .line 152
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fullsfgroupchat\""

    .line 154
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SF_GROUP_CHAT:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    .line 156
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftthumb\""

    .line 158
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftstandfw\""

    .line 160
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_STORE:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp\""

    .line 162
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn:urn-7:3gpp-application.ims.iari.gsma-vs\""

    .line 164
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH_OUTSIDE_CALL:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.sp\""

    .line 166
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SOCIAL_PRESENCE:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.dp\""

    .line 168
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PRESENCE_DISCOVERY:Ljava/lang/String;

    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

    .line 170
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\";video"

    .line 172
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String;

    const-string v0, "+g.gsma.callcomposer"

    .line 174
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_CALL_COMPOSER:Ljava/lang/String;

    const-string v0, "+g.gsma.rcs.ipcall"

    .line 176
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL:Ljava/lang/String;

    const-string v0, "+g.gsma.rcs.ipcall;video"

    .line 178
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO:Ljava/lang/String;

    const-string v0, "+g.gsma.rcs.ipvideocallonly"

    .line 180
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO_ONLY:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull\""

    .line 182
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft\""

    .line 184
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL_FT:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush\""

    .line 186
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String;

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.joyn.intmsg\""

    .line 188
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_INTEGRATED_MSG:Ljava/lang/String;

    const-string v0, "null"

    .line 190
    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NULL:Ljava/lang/String;

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.sticker\""

    .line 192
    sput-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STICKER:Ljava/lang/String;

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttpextra\""

    .line 195
    sput-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP_EXTRA:Ljava/lang/String;

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.cancelmessage\""

    .line 239
    sput-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CANCEL_MESSAGE:Ljava/lang/String;

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs .mnc000.mcc460.publicmsg\""

    .line 251
    sput-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PUBLIC_MSG:Ljava/lang/String;

    const-string v1, "not_updated"

    .line 255
    sput-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NOT_UPDATED:Ljava/lang/String;

    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.lastseenactive\""

    .line 258
    sput-object v2, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_LAST_SEEN_ACTIVE:Ljava/lang/String;

    .line 261
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    .line 262
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    .line 263
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    .line 266
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_ISH:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SF_GROUP_CHAT:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_STORE:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG_V1:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH_OUTSIDE_CALL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SOCIAL_PRESENCE:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PRESENCE_DISCOVERY:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_CALL_COMPOSER:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO_ONLY:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL_FT:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_INTEGRATED_MSG:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NULL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NOT_UPDATED:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STICKER:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL_V1:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP_EXTRA:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP_EXTRA:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftsms\""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms\""

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v6, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v7, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v7, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v8, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v9, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v9, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v10, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_LAST_SEEN_ACTIVE:Ljava/lang/String;

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v10, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v11, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v11, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CANCEL_MESSAGE:Ljava/lang/String;

    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v11, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v12, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v12, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.xbotmessage\""

    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v13, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v13, "+g.gsma.rcs.isbot"

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v14, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v14, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.plugin\""

    invoke-interface {v2, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v15, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v15, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PUBLIC_MSG:Ljava/lang/String;

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v3, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_ISH:Ljava/lang/String;

    sget v15, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    int-to-long v0, v15

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SF_GROUP_CHAT:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_STORE:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG_V1:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH_OUTSIDE_CALL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SOCIAL_PRESENCE:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PRESENCE_DISCOVERY:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_CALL_COMPOSER:Ljava/lang/String;

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO_ONLY:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL_FT:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_INTEGRATED_MSG:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NULL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NOT_UPDATED:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STICKER:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP_EXTRA:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP_EXTRA:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_LAST_SEEN_ACTIVE:Ljava/lang/String;

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CANCEL_MESSAGE:Ljava/lang/String;

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "vsh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "im"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fullsf_groupchat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ft"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftthumb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftstandfw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fthttp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "standalone_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG_V1:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "standalone_msg_v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "vsh_outside_call"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "dp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mmtel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mmtel_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mmtel_call_composer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ipcall"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ipcall_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ipcall_video_only"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "geopush"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "geopullft"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "intergrated_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "session_mode_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sticker"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL_V1:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftthumb_v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP_EXTRA:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fthttp_extra"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftsms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "geosms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "callcomposer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sharedmap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sharedsketch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "callunanswered"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastseenactive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "chatbot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "cancelmessage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "chatbot_standalone_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "extended_bot_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "isbot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "plugin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "publicmsg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    new-instance v0, Lcom/sec/ims/options/Capabilities$1;

    invoke-direct {v0}, Lcom/sec/ims/options/Capabilities$1;-><init>()V

    sput-object v0, Lcom/sec/ims/options/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 38
    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    const/4 v2, 0x0

    .line 40
    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    const/4 v3, 0x0

    .line 41
    iput v3, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    .line 43
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    const-wide/16 v4, 0x0

    .line 44
    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    .line 45
    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    .line 46
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    .line 48
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    .line 49
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsExpired:Z

    .line 50
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    .line 52
    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    .line 53
    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdSet:Ljava/util/List;

    const-string v0, "sip:foo@examcple.com"

    .line 407
    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 408
    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mContactId:Ljava/lang/String;

    .line 409
    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mDisplayName:Ljava/lang/String;

    .line 410
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v1, v0

    iput-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    int-to-long v0, v0

    .line 411
    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    .line 412
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 38
    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    const/4 v2, 0x0

    .line 40
    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    const/4 v3, 0x0

    .line 41
    iput v3, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    .line 43
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    const-wide/16 v4, 0x0

    .line 44
    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    .line 45
    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    .line 46
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    .line 48
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    .line 49
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsExpired:Z

    .line 50
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    .line 52
    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    .line 53
    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdSet:Ljava/util/List;

    .line 1053
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mContactId:Ljava/lang/String;

    .line 1054
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mDisplayName:Ljava/lang/String;

    .line 1055
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    .line 1056
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 1057
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    .line 1058
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

    .line 1059
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    .line 1060
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    .line 1062
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1063
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    .line 1064
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    .line 1065
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v3, v1

    :cond_2
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    .line 1066
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    .line 1067
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1068
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    .line 1070
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    .line 1071
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/options/Capabilities-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/options/Capabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static dumpServices(J)Ljava/lang/String;
    .locals 8

    .line 789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 791
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

    move-result-wide v2

    and-long v4, v2, p0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 793
    sget-object v4, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 796
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toStringLimit(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 1086
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    .line 1087
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
.method public clone()Lcom/sec/ims/options/Capabilities;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1081
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

    .line 32
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capabilities [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 1101
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

    .line 1102
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mAvailableFeatures="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    .line 1103
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

    .line 1107
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

    .line 1109
    invoke-static {v1, v2}, Lcom/sec/ims/options/Capabilities;->dumpServices(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    .line 1110
    invoke-static {v1, v2}, Lcom/sec/ims/options/Capabilities;->dumpServices(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastSeen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mExtFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1012
    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mContactId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1013
    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mDisplayName:Ljava/lang/String;

    const-string v0, ""

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1015
    iget-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1016
    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mUri:Lcom/sec/ims/util/ImsUri;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1017
    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move-object p2, v0

    :goto_2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1019
    iget-boolean p2, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1021
    iget-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1022
    iget-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1023
    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1024
    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1025
    iget-boolean p2, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    iget-boolean p2, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    iget p2, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1028
    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    .line 1029
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    .line 1032
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    :goto_3
    iget-object p2, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    if-eqz p2, :cond_4

    move-object v0, p2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1035
    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

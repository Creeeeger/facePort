.class public Lcom/samsung/android/ims/options/SemCapabilities;
.super Ljava/lang/Object;
.source "SemCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/options/SemCapabilities$Builder;,
        Lcom/samsung/android/ims/options/SemCapabilities$FeatureFetchType;,
        Lcom/samsung/android/ims/options/SemCapabilities$FetchType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ims/options/SemCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FEATURE_ALL:J = 0xfffffffffffffffL

.field public static whitelist FEATURE_BURN_MSG:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_CALL_SERVICE:J

.field public static whitelist FEATURE_CANCEL_MESSAGE:J = 0x0L

.field public static whitelist FEATURE_CARD_MSG:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static whitelist FEATURE_CHATBOT_CHAT_SESSION:J = 0x0L

.field public static whitelist FEATURE_CHATBOT_COMMUNICATION:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static whitelist FEATURE_CHATBOT_EXTENDED_MSG:J = 0x0L

.field public static whitelist FEATURE_CHATBOT_ROLE:J = 0x0L

.field public static whitelist FEATURE_CHATBOT_STANDALONE_MSG:J = 0x0L

.field public static whitelist FEATURE_CHAT_CPM:I = 0x0

.field public static whitelist FEATURE_CHAT_SIMPLE_IM:I = 0x0

.field public static whitelist FEATURE_CLOUD_FILE:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static whitelist FEATURE_ENRICHED_CALL_COMPOSER:J = 0x0L

.field public static whitelist FEATURE_ENRICHED_POST_CALL:J = 0x0L

.field public static whitelist FEATURE_ENRICHED_SHARED_MAP:J = 0x0L

.field public static whitelist FEATURE_ENRICHED_SHARED_SKETCH:J = 0x0L

.field public static whitelist FEATURE_FT:I = 0x0

.field public static whitelist FEATURE_FT_HTTP:I = 0x0

.field public static whitelist FEATURE_FT_HTTP_EXTRA:I = 0x0

.field public static final whitelist FEATURE_FT_SERVICE:I

.field public static whitelist FEATURE_FT_STORE:I = 0x0

.field public static whitelist FEATURE_FT_THUMBNAIL:I = 0x0

.field public static whitelist FEATURE_FT_THUMBNAIL_V1:I = 0x0

.field public static whitelist FEATURE_FT_VIA_SMS:I = 0x0

.field public static whitelist FEATURE_GEOLOCATION_PULL:I = 0x0

.field public static whitelist FEATURE_GEOLOCATION_PULL_FT:I = 0x0

.field public static whitelist FEATURE_GEOLOCATION_PUSH:I = 0x0

.field public static whitelist FEATURE_GEO_VIA_SMS:I = 0x0

.field public static final whitelist FEATURE_IM_SERVICE:J

.field public static whitelist FEATURE_INTEGRATED_MSG:I = 0x0

.field public static whitelist FEATURE_IPCALL:I = 0x0

.field public static whitelist FEATURE_IPCALL_VIDEO:I = 0x0

.field public static whitelist FEATURE_IPCALL_VIDEO_ONLY:I = 0x0

.field public static whitelist FEATURE_ISH:I = 0x0

.field public static whitelist FEATURE_LAST_SEEN_ACTIVE:J = 0x0L

.field public static whitelist FEATURE_MMTEL:I = 0x0

.field public static whitelist FEATURE_MMTEL_CALL_COMPOSER:J = 0x0L

.field public static whitelist FEATURE_MMTEL_VIDEO:I = 0x0

.field public static whitelist FEATURE_NON_RCS_USER:I = 0x0

.field public static whitelist FEATURE_NOT_UPDATED:I = 0x0

.field public static whitelist FEATURE_OFFLINE_RCS_USER:I = 0x0

.field public static whitelist FEATURE_PLUG_IN:J = 0x0L

.field public static whitelist FEATURE_PRESENCE_DISCOVERY:I = 0x0

.field public static whitelist FEATURE_PUBLIC_MSG:J = 0x0L

.field public static whitelist FEATURE_SF_GROUP_CHAT:I = 0x0

.field public static whitelist FEATURE_SOCIAL_PRESENCE:I = 0x0

.field public static whitelist FEATURE_STANDALONE_MSG:I = 0x0

.field public static whitelist FEATURE_STANDALONE_MSG_V1:I = 0x0

.field public static whitelist FEATURE_STICKER:I = 0x0

.field public static final whitelist FEATURE_TAG_CANCEL_MESSAGE:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.cancelmessage\""

.field public static final whitelist FEATURE_TAG_CHAT:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

.field public static final whitelist FEATURE_TAG_CHATBOT_CHAT_SESSION:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""

.field public static final whitelist FEATURE_TAG_CHATBOT_ROLE:Ljava/lang/String; = "+g.gsma.rcs.isbot"

.field public static final whitelist FEATURE_TAG_CHATBOT_STANDALONE_MSG:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

.field public static final whitelist FEATURE_TAG_ENRICHED_CALL_COMPOSER:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

.field public static final whitelist FEATURE_TAG_ENRICHED_POST_CALL:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

.field public static final whitelist FEATURE_TAG_ENRICHED_SHARED_MAP:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

.field public static final whitelist FEATURE_TAG_ENRICHED_SHARED_SKETCH:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

.field public static final whitelist FEATURE_TAG_EXTENDED_BOT_MSG:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.xbotmessage\""

.field public static final whitelist FEATURE_TAG_FT:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

.field public static final whitelist FEATURE_TAG_FT_HTTP:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp\""

.field public static final whitelist FEATURE_TAG_FT_HTTP_EXTRA:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttpextra\""

.field public static final whitelist FEATURE_TAG_FT_STORE:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftstandfw\""

.field public static final whitelist FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftthumb\""

.field public static final whitelist FEATURE_TAG_FT_VIA_SMS:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftsms\""

.field public static final whitelist FEATURE_TAG_GEOLOCATION_PULL:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull\""

.field public static final whitelist FEATURE_TAG_GEOLOCATION_PULL_FT:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft\""

.field public static final whitelist FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush\""

.field public static final whitelist FEATURE_TAG_GEO_VIA_SMS:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms\""

.field public static final whitelist FEATURE_TAG_INTEGRATED_MSG:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.joyn.intmsg\""

.field public static final whitelist FEATURE_TAG_IPCALL:Ljava/lang/String; = "+g.gsma.rcs.ipcall"

.field public static final whitelist FEATURE_TAG_IPCALL_VIDEO:Ljava/lang/String; = "+g.gsma.rcs.ipcall;video"

.field public static final whitelist FEATURE_TAG_IPCALL_VIDEO_ONLY:Ljava/lang/String; = "+g.gsma.rcs.ipvideocallonly"

.field public static final whitelist FEATURE_TAG_ISH:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

.field public static final whitelist FEATURE_TAG_LAST_SEEN_ACTIVE:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.lastseenactive\""

.field public static final whitelist FEATURE_TAG_MMTEL:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

.field public static final whitelist FEATURE_TAG_MMTEL_CALL_COMPOSER:Ljava/lang/String; = "+g.gsma.callcomposer"

.field public static final whitelist FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\";video"

.field public static final whitelist FEATURE_TAG_NOT_UPDATED:Ljava/lang/String; = "not_updated"

.field public static final whitelist FEATURE_TAG_NULL:Ljava/lang/String; = "null"

.field public static final whitelist FEATURE_TAG_PLUG_IN:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.plugin\""

.field public static final whitelist FEATURE_TAG_PRESENCE_DISCOVERY:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.dp\""

.field public static final whitelist FEATURE_TAG_PUBLIC_MSG:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs .mnc000.mcc460.publicmsg\""

.field public static final whitelist FEATURE_TAG_SF_GROUP_CHAT:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fullsfgroupchat\""

.field public static final whitelist FEATURE_TAG_SOCIAL_PRESENCE:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.sp\""

.field public static final whitelist FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg,urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg\""

.field public static final whitelist FEATURE_TAG_STICKER:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.sticker\""

.field public static final whitelist FEATURE_TAG_VSH:Ljava/lang/String; = "+g.3gpp.cs-voice"

.field public static final whitelist FEATURE_TAG_VSH_OUTSIDE_CALL:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn:urn-7:3gpp-application.ims.iari.gsma-vs\""

.field public static whitelist FEATURE_VEMOTICON:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static whitelist FEATURE_VSH:I = 0x0

.field public static whitelist FEATURE_VSH_OUTSIDE_CALL:I = 0x0

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemCapexInfo"

.field private static final blacklist SHIP_BUILD:Z

.field private static blacklist sFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAvailableFeatures:J

.field private blacklist mBotServiceId:Ljava/lang/String;

.field private blacklist mExtFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFeatures:J

.field private blacklist mIsAvailable:Z

.field private blacklist mIsExpired:Z

.field private blacklist mIsLegacyLatching:Z

.field private blacklist mTimestamp:Ljava/util/Date;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 12

    .line 46
    nop

    .line 47
    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/ims/options/SemCapabilities;->SHIP_BUILD:Z

    .line 94
    const/high16 v0, 0x1000000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_NON_RCS_USER:I

    .line 98
    const/high16 v0, 0x2000000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_NOT_UPDATED:I

    .line 107
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_OFFLINE_RCS_USER:I

    .line 111
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ISH:I

    .line 115
    const/4 v1, 0x2

    sput v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_VSH:I

    .line 119
    const/4 v2, 0x4

    sput v2, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHAT_CPM:I

    .line 123
    const/16 v3, 0x8

    sput v3, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_SF_GROUP_CHAT:I

    .line 127
    const/16 v3, 0x10

    sput v3, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT:I

    .line 131
    const/16 v4, 0x20

    sput v4, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_THUMBNAIL:I

    .line 135
    const/16 v4, 0x40

    sput v4, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_STORE:I

    .line 139
    const/16 v5, 0x80

    sput v5, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_HTTP:I

    .line 143
    const/16 v5, 0x100

    sput v5, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_STANDALONE_MSG:I

    .line 147
    const/16 v5, 0x200

    sput v5, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    .line 151
    const/16 v5, 0x400

    sput v5, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_SOCIAL_PRESENCE:I

    .line 155
    const/16 v5, 0x800

    sput v5, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_PRESENCE_DISCOVERY:I

    .line 159
    const/16 v5, 0x1000

    sput v5, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL:I

    .line 163
    const/16 v5, 0x2000

    sput v5, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL_VIDEO:I

    .line 167
    const/16 v5, 0x4000

    sput v5, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL:I

    .line 171
    const v5, 0x8000

    sput v5, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL_VIDEO:I

    .line 175
    const/high16 v5, 0x10000

    sput v5, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    .line 179
    const/high16 v5, 0x20000

    sput v5, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEOLOCATION_PULL:I

    .line 183
    const/high16 v5, 0x40000

    sput v5, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    .line 187
    const/high16 v5, 0x80000

    sput v5, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEOLOCATION_PUSH:I

    .line 191
    const/high16 v5, 0x100000

    sput v5, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_INTEGRATED_MSG:I

    .line 195
    const/high16 v5, 0x200000

    sput v5, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 199
    const/high16 v6, 0x400000

    sput v6, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_VIA_SMS:I

    .line 203
    const/high16 v6, 0x800000

    sput v6, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEO_VIA_SMS:I

    .line 210
    const/high16 v6, 0x8000000

    sput v6, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_STICKER:I

    .line 214
    const/high16 v6, 0x10000000

    sput v6, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_HTTP_EXTRA:I

    .line 218
    const/high16 v6, 0x20000000

    sput v6, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_STANDALONE_MSG_V1:I

    .line 222
    const/high16 v6, 0x40000000    # 2.0f

    sput v6, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_THUMBNAIL_V1:I

    .line 233
    const-wide v6, 0x100000000L

    sput-wide v6, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_VEMOTICON:J

    .line 238
    const-wide v6, 0x200000000L

    sput-wide v6, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CARD_MSG:J

    .line 243
    const-wide v6, 0x400000000L

    sput-wide v6, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_BURN_MSG:J

    .line 248
    const-wide v6, 0x800000000L

    sput-wide v6, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CLOUD_FILE:J

    .line 253
    const-wide v6, 0x1000000000L

    sput-wide v6, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    .line 257
    const-wide v6, 0x2000000000L

    sput-wide v6, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    .line 261
    const-wide v6, 0x4000000000L

    sput-wide v6, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    .line 265
    const-wide v8, 0x8000000000L

    sput-wide v8, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_POST_CALL:J

    .line 271
    const-wide v8, 0x10000000000L

    sput-wide v8, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_COMMUNICATION:J

    .line 275
    sput-wide v8, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    .line 279
    const-wide v10, 0x20000000000L

    sput-wide v10, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_ROLE:J

    .line 283
    const-wide v10, 0x40000000000L

    sput-wide v10, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_PLUG_IN:J

    .line 287
    const-wide v10, 0x80000000000L

    sput-wide v10, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_PUBLIC_MSG:J

    .line 291
    const-wide v10, 0x100000000000L

    sput-wide v10, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    .line 295
    const-wide v10, 0x200000000000L

    sput-wide v10, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    .line 299
    const-wide v10, 0x400000000000L

    sput-wide v10, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    .line 303
    const-wide v10, 0x800000000000L

    sput-wide v10, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    .line 307
    const-wide/high16 v10, 0x1000000000000L

    sput-wide v10, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CANCEL_MESSAGE:J

    .line 311
    or-int/2addr v2, v5

    int-to-long v10, v2

    or-long/2addr v8, v10

    sput-wide v8, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IM_SERVICE:J

    .line 315
    or-int/lit8 v2, v3, 0x40

    sput v2, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_SERVICE:I

    .line 319
    or-int/2addr v0, v1

    int-to-long v0, v0

    or-long/2addr v0, v6

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CALL_SERVICE:J

    .line 500
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    .line 503
    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ISH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_VSH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "vsh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHAT_CPM:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "im"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fullsf_groupchat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ft"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftthumb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_STORE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftstandfw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_HTTP:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fthttp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "standalone_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_STANDALONE_MSG_V1:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "standalone_msg_v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "vsh_outside_call"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "dp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mmtel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mmtel_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mmtel_call_composer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ipcall"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ipcall_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ipcall_video_only"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "geopush"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "geopullft"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_INTEGRATED_MSG:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "intergrated_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "session_mode_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "not_updated"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_STICKER:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sticker"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_THUMBNAIL_V1:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftthumb_v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_HTTP_EXTRA:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fthttp_extra"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftsms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "geosms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "callcomposer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sharedmap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sharedsketch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "callunanswered"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastseenactive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "chatbot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "cancelmessage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "chatbot_standalone_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "extended_bot_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "isbot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_PLUG_IN:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "plugin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_PUBLIC_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "publicmsg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    new-instance v0, Lcom/samsung/android/ims/options/SemCapabilities$1;

    invoke-direct {v0}, Lcom/samsung/android/ims/options/SemCapabilities$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    .line 38
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    .line 39
    iput-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    .line 41
    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsExpired:Z

    .line 42
    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    .line 737
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    .line 738
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    .line 739
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    .line 740
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsExpired:Z

    .line 741
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    .line 742
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mTimestamp:Ljava/util/Date;

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    .line 744
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mExtFeatures:Ljava/util/List;

    .line 745
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 746
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/ims/options/SemCapabilities-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/ims/options/SemCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/ims/options/SemCapabilities$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    .line 38
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    .line 39
    iput-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    .line 41
    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsExpired:Z

    .line 42
    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    .line 555
    iget-boolean v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsAvailable:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    .line 556
    iget-wide v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mFeatures:J

    iput-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    .line 557
    iget-wide v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mAvailableFeatures:J

    iput-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    .line 558
    iget-boolean v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsExpired:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsExpired:Z

    .line 559
    iget-boolean v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsLegacyLatching:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    .line 560
    iget-object v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mTimestamp:Ljava/util/Date;

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mTimestamp:Ljava/util/Date;

    .line 561
    iget-object v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mBotServiceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    .line 562
    iget-object v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mExtFeatures:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mExtFeatures:Ljava/util/List;

    .line 563
    return-void
.end method

.method private static blacklist dumpServices(J)Ljava/lang/String;
    .locals 8
    .param p0, "features"    # J

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

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

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 623
    .local v2, "feature":J
    and-long v4, v2, p0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 624
    sget-object v4, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    .end local v2    # "feature":J
    :cond_0
    goto :goto_0

    .line 627
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getBuilder()Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .locals 1

    .line 780
    new-instance v0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    invoke-direct {v0}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public whitelist clone()Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 756
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ims/options/SemCapabilities;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/ims/options/SemCapabilities;->clone()Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAvailableFeatures()J
    .locals 2

    .line 616
    iget-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    return-wide v0
.end method

.method public whitelist getBotServiceId()Ljava/lang/String;
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getExpired()Z
    .locals 1

    .line 666
    iget-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsExpired:Z

    return v0
.end method

.method public whitelist getExtFeature()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mExtFeatures:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getFeature()J
    .locals 2

    .line 607
    iget-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    return-wide v0
.end method

.method public whitelist getLegacyLatching()Z
    .locals 1

    .line 675
    iget-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    return v0
.end method

.method public whitelist getTimestamp()Ljava/util/Date;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public whitelist hasFeature(I)Z
    .locals 4
    .param p1, "feature"    # I

    .line 637
    iget-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasFeature(J)Z
    .locals 2
    .param p1, "feature"    # J

    .line 647
    iget-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isAvailable()Z
    .locals 1

    .line 598
    iget-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    return v0
.end method

.method public whitelist isFeatureAvailable(I)Z
    .locals 2
    .param p1, "feature"    # I

    .line 572
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/ims/options/SemCapabilities;->isFeatureAvailable(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isFeatureAvailable(J)Z
    .locals 6
    .param p1, "feature"    # J

    .line 582
    sget v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 584
    return v1

    .line 586
    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 587
    .local v0, "isFeatureAvailable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFeatureAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemCapexInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capabilities [mIsAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    .line 768
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mIsLegacyLatching="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mBotServiceId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 770
    sget-boolean v2, Lcom/samsung/android/ims/options/SemCapabilities;->SHIP_BUILD:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "xxxxx"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mTimestamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mAvailableFeatures="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    .line 772
    invoke-static {v2, v3}, Lcom/samsung/android/ims/options/SemCapabilities;->dumpServices(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    .line 773
    invoke-static {v1, v2}, Lcom/samsung/android/ims/options/SemCapabilities;->dumpServices(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 767
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 713
    iget-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    iget-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 715
    iget-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 716
    iget-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsExpired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    iget-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 719
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mExtFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 721
    return-void
.end method

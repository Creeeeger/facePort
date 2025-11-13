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

.field public static whitelist FEATURE_CANCEL_MESSAGE:J = 0x0L

.field public static whitelist FEATURE_CHATBOT_COMMUNICATION:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static whitelist FEATURE_CHATBOT_ROLE:J = 0x0L

.field public static whitelist FEATURE_CHATBOT_STANDALONE_MSG:J = 0x0L

.field public static whitelist FEATURE_CHAT_CPM:I = 0x0

.field public static whitelist FEATURE_CHAT_SIMPLE_IM:I = 0x0

.field public static whitelist FEATURE_ENRICHED_CALL_COMPOSER:J = 0x0L

.field public static whitelist FEATURE_FT:I = 0x0

.field public static whitelist FEATURE_FT_HTTP:I = 0x0

.field public static whitelist FEATURE_FT_VIA_SMS:I = 0x0

.field public static whitelist FEATURE_GEOLOCATION_PUSH:I = 0x0

.field public static whitelist FEATURE_GEO_VIA_SMS:I = 0x0

.field public static whitelist FEATURE_IPCALL:I = 0x0

.field public static whitelist FEATURE_IPCALL_VIDEO:I = 0x0

.field public static whitelist FEATURE_IPCALL_VIDEO_ONLY:I = 0x0

.field public static whitelist FEATURE_MMTEL:I = 0x0

.field public static whitelist FEATURE_MMTEL_CALL_COMPOSER:J = 0x0L

.field public static whitelist FEATURE_MMTEL_VIDEO:I = 0x0

.field public static whitelist FEATURE_NON_RCS_USER:I = 0x0

.field public static whitelist FEATURE_NOT_UPDATED:I = 0x0

.field public static whitelist FEATURE_OFFLINE_RCS_USER:I = 0x0

.field public static whitelist FEATURE_STANDALONE_MSG:I = 0x0

.field public static whitelist FEATURE_STICKER:I = 0x0

.field public static final whitelist FEATURE_TAG_CANCEL_MESSAGE:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.cancelmessage\""

.field public static final whitelist FEATURE_TAG_IPCALL:Ljava/lang/String; = "+g.gsma.rcs.ipcall"

.field public static final whitelist FEATURE_TAG_IPCALL_VIDEO:Ljava/lang/String; = "+g.gsma.rcs.ipcall;video"

.field public static final whitelist FEATURE_TAG_IPCALL_VIDEO_ONLY:Ljava/lang/String; = "+g.gsma.rcs.ipvideocallonly"

.field public static final whitelist FEATURE_TAG_MMTEL:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

.field public static final whitelist FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\";video"

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
    .locals 3

    nop

    const-string v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/ims/options/SemCapabilities;->SHIP_BUILD:Z

    const/high16 v0, 0x1000000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_NON_RCS_USER:I

    const/high16 v0, 0x2000000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_NOT_UPDATED:I

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_OFFLINE_RCS_USER:I

    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHAT_CPM:I

    const/16 v0, 0x10

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT:I

    const/16 v0, 0x80

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_HTTP:I

    const/16 v0, 0x100

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_STANDALONE_MSG:I

    const/16 v0, 0x1000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL:I

    const/16 v0, 0x2000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL_VIDEO:I

    const/16 v0, 0x4000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL:I

    const v0, 0x8000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL_VIDEO:I

    const/high16 v0, 0x10000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    const/high16 v0, 0x80000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEOLOCATION_PUSH:I

    const/high16 v0, 0x200000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHAT_SIMPLE_IM:I

    const/high16 v0, 0x400000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_VIA_SMS:I

    const/high16 v0, 0x800000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEO_VIA_SMS:I

    const/high16 v0, 0x8000000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_STICKER:I

    const-wide v0, 0x1000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    const-wide v0, 0x10000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_COMMUNICATION:J

    const-wide v0, 0x20000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_ROLE:J

    const-wide v0, 0x200000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    const-wide v0, 0x800000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    const-wide/high16 v0, 0x1000000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CANCEL_MESSAGE:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHAT_CPM:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "im"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ft"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_HTTP:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fthttp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "standalone_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mmtel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mmtel_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mmtel_call_composer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ipcall"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ipcall_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ipcall_video_only"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "geopush"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "session_mode_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "not_updated"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_STICKER:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sticker"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftsms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "geosms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "callcomposer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "cancelmessage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "chatbot_standalone_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "isbot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/ims/options/SemCapabilities$1;

    invoke-direct {v0}, Lcom/samsung/android/ims/options/SemCapabilities$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    iput-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsExpired:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsExpired:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mTimestamp:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mExtFeatures:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mExtFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/ims/options/SemCapabilities-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/ims/options/SemCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/ims/options/SemCapabilities$Builder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    iput-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsExpired:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsAvailable:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    iget-wide v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mFeatures:J

    iput-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    iget-wide v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mAvailableFeatures:J

    iput-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    iget-boolean v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsExpired:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsExpired:Z

    iget-boolean v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsLegacyLatching:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    iget-object v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mTimestamp:Ljava/util/Date;

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mTimestamp:Ljava/util/Date;

    iget-object v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mBotServiceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mExtFeatures:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mExtFeatures:Ljava/util/List;

    return-void
.end method

.method private static blacklist dumpServices(J)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    and-long v5, v3, p0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getBuilder()Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .locals 1

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

    invoke-virtual {p0}, Lcom/samsung/android/ims/options/SemCapabilities;->clone()Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAvailableFeatures()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    return-wide v0
.end method

.method public whitelist getBotServiceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getExpired()Z
    .locals 1

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

    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mExtFeatures:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getFeature()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    return-wide v0
.end method

.method public whitelist getLegacyLatching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    return v0
.end method

.method public whitelist getTimestamp()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public whitelist hasFeature(I)Z
    .locals 4

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

    iget-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    return v0
.end method

.method public whitelist isFeatureAvailable(I)Z
    .locals 2

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

    sget v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

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

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

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

    sget-boolean v2, Lcom/samsung/android/ims/options/SemCapabilities;->SHIP_BUILD:Z

    if-eqz v2, :cond_0

    const-string v2, "xxxxx"

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

    invoke-static {v2, v3}, Lcom/samsung/android/ims/options/SemCapabilities;->dumpServices(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    invoke-static {v1, v2}, Lcom/samsung/android/ims/options/SemCapabilities;->dumpServices(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsExpired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mExtFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method

.class public Landroid/app/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DownloadManager$SecCursorTranslator;,
        Landroid/app/DownloadManager$CursorTranslator;,
        Landroid/app/DownloadManager$Query;,
        Landroid/app/DownloadManager$SecQuery;,
        Landroid/app/DownloadManager$Request;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"

.field public static final whitelist ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

.field public static final whitelist ACTION_VIEW_DOWNLOADS:Ljava/lang/String; = "android.intent.action.VIEW_DOWNLOADS"

.field public static final blacklist ACTION_VIEW_SEC_DOWNLOADS:Ljava/lang/String; = "android.intent.action.VIEW_SEC_DOWNLOADS"

.field public static final greylist-max-o COLUMN_ALLOW_WRITE:Ljava/lang/String; = "allow_write"

.field public static final whitelist COLUMN_BYTES_DOWNLOADED_SO_FAR:Ljava/lang/String; = "bytes_so_far"

.field public static final blacklist COLUMN_DD_CONTENT_SIZE:Ljava/lang/String; = "dd_contentSize"

.field public static final blacklist COLUMN_DD_FILE_DESCRIPTION:Ljava/lang/String; = "dd_description"

.field public static final blacklist COLUMN_DD_FILE_NAME:Ljava/lang/String; = "dd_fileName"

.field public static final blacklist COLUMN_DD_OBJ_URL:Ljava/lang/String; = "dd_objUrl"

.field public static final blacklist COLUMN_DD_PRIMARY_MIMETYPE:Ljava/lang/String; = "dd_primaryMimeType"

.field public static final blacklist COLUMN_DD_VENDOR_NAME:Ljava/lang/String; = "dd_vendor"

.field public static final blacklist COLUMN_DD_VERSION_NUMBER:Ljava/lang/String; = "dd_majorVersion"

.field public static final whitelist COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final blacklist COLUMN_DESTINATION:Ljava/lang/String; = "destination"

.field public static final blacklist COLUMN_DOWNLOAD_METHOD:Ljava/lang/String; = "downloadmethod"

.field public static final blacklist COLUMN_DOWNLOAD_STATE:Ljava/lang/String; = "state"

.field public static final blacklist COLUMN_FILE_NAME_HINT:Ljava/lang/String; = "hint"

.field public static final whitelist COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final whitelist COLUMN_LAST_MODIFIED_TIMESTAMP:Ljava/lang/String; = "last_modified_timestamp"

.field public static final whitelist COLUMN_LOCAL_FILENAME:Ljava/lang/String; = "local_filename"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist COLUMN_LOCAL_URI:Ljava/lang/String; = "local_uri"

.field public static final whitelist COLUMN_MEDIAPROVIDER_URI:Ljava/lang/String; = "mediaprovider_uri"

.field public static final blacklist COLUMN_MEDIASTORE_URI:Ljava/lang/String; = "mediastore_uri"

.field public static final whitelist COLUMN_MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final blacklist COLUMN_NOTIFICATION_PACKAGE:Ljava/lang/String; = "notificationpackage"

.field public static final blacklist COLUMN_RANGE_END:Ljava/lang/String; = "range_end"

.field public static final blacklist COLUMN_RANGE_FIRSTCHUNK_END:Ljava/lang/String; = "range_first_end"

.field public static final blacklist COLUMN_RANGE_START:Ljava/lang/String; = "range_start"

.field public static final whitelist COLUMN_REASON:Ljava/lang/String; = "reason"

.field public static final whitelist COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final blacklist COLUMN_STORAGE_TYPE:Ljava/lang/String; = "storage_type"

.field public static final whitelist COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final whitelist COLUMN_TOTAL_SIZE_BYTES:Ljava/lang/String; = "total_size"

.field public static final whitelist COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final greylist-max-o ERROR_BLOCKED:I = 0x3f2

.field public static final whitelist ERROR_CANNOT_RESUME:I = 0x3f0

.field public static final whitelist ERROR_DEVICE_NOT_FOUND:I = 0x3ef

.field public static final whitelist ERROR_FILE_ALREADY_EXISTS:I = 0x3f1

.field public static final whitelist ERROR_FILE_ERROR:I = 0x3e9

.field public static final whitelist ERROR_HTTP_DATA_ERROR:I = 0x3ec

.field public static final whitelist ERROR_INSUFFICIENT_SPACE:I = 0x3ee

.field public static final whitelist ERROR_TOO_MANY_REDIRECTS:I = 0x3ed

.field public static final whitelist ERROR_UNHANDLED_HTTP_CODE:I = 0x3ea

.field public static final whitelist ERROR_UNKNOWN:I = 0x3e8

.field public static final whitelist EXTRA_DOWNLOAD_ID:Ljava/lang/String; = "extra_download_id"

.field public static final whitelist EXTRA_NOTIFICATION_CLICK_DOWNLOAD_IDS:Ljava/lang/String; = "extra_click_download_ids"

.field public static final whitelist INTENT_EXTRAS_SORT_BY_SIZE:Ljava/lang/String; = "android.app.DownloadManager.extra_sortBySize"

.field private static final blacklist LONG_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o NON_DOWNLOADMANAGER_DOWNLOAD:Ljava/lang/String; = "non-dwnldmngr-download-dont-retry2download"

.field public static final blacklist PAUSED_BY_APP:I = 0x5

.field public static final whitelist PAUSED_QUEUED_FOR_WIFI:I = 0x3

.field public static final whitelist PAUSED_UNKNOWN:I = 0x4

.field public static final whitelist PAUSED_WAITING_FOR_NETWORK:I = 0x2

.field public static final whitelist PAUSED_WAITING_TO_RETRY:I = 0x1

.field private static final blacklist SBROWSER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.sbrowser"

.field private static final blacklist SEC_COLUMNS:[Ljava/lang/String;

.field private static final blacklist SEC_UNDERLYING_COLUMNS:[Ljava/lang/String;

.field public static final blacklist SEM_COLUMN_DD_CONTENT_SIZE:Ljava/lang/String; = "dd_contentSize"

.field public static final blacklist SEM_COLUMN_DD_FILE_DESCRIPTION:Ljava/lang/String; = "dd_description"

.field public static final blacklist SEM_COLUMN_DD_FILE_NAME:Ljava/lang/String; = "dd_fileName"

.field public static final blacklist SEM_COLUMN_DD_PRIMARY_MIMETYPE:Ljava/lang/String; = "dd_primaryMimeType"

.field public static final blacklist SEM_COLUMN_DD_VENDOR_NAME:Ljava/lang/String; = "dd_vendor"

.field public static final blacklist SEM_COLUMN_DD_VERSION_NUMBER:Ljava/lang/String; = "dd_majorVersion"

.field public static final whitelist SEM_STATUS_OMA_PENDING:I = 0x10000

.field public static final whitelist STATUS_FAILED:I = 0x10

.field public static final whitelist STATUS_PAUSED:I = 0x4

.field public static final whitelist STATUS_PENDING:I = 0x1

.field public static final whitelist STATUS_RUNNING:I = 0x2

.field public static final whitelist STATUS_SUCCESSFUL:I = 0x8

.field public static final greylist-max-r UNDERLYING_COLUMNS:[Ljava/lang/String;


# instance fields
.field private greylist-max-o mAccessFilename:Z

.field private greylist-max-o mBaseUri:Landroid/net/Uri;

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-o mResolver:Landroid/content/ContentResolver;

.field private blacklist mSecBaseUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLONG_COLUMNS()Ljava/util/Set;
    .locals 1

    sget-object v0, Landroid/app/DownloadManager;->LONG_COLUMNS:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/DownloadManager;->SEC_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 28

    .line 81
    nop

    .line 466
    const-string v0, "_id"

    const-string/jumbo v1, "mediaprovider_uri"

    const-string/jumbo v2, "title"

    const-string v3, "description"

    const-string/jumbo v4, "uri"

    const-string/jumbo v5, "media_type"

    const-string/jumbo v6, "total_size"

    const-string v7, "local_uri"

    const-string/jumbo v8, "status"

    const-string/jumbo v9, "reason"

    const-string v10, "bytes_so_far"

    const-string v11, "last_modified_timestamp"

    const-string v12, "dd_fileName"

    const-string v13, "dd_vendor"

    const-string v14, "dd_description"

    const-string v15, "dd_majorVersion"

    const-string v16, "dd_primaryMimeType"

    const-string v17, "dd_contentSize"

    const-string/jumbo v18, "state"

    const-string v19, "downloadmethod"

    const-string v20, "local_filename"

    const-string/jumbo v21, "storage_type"

    filled-new-array/range {v0 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/DownloadManager;->SEC_COLUMNS:[Ljava/lang/String;

    .line 479
    const-string v1, "_id"

    const-string v2, "local_filename"

    const-string/jumbo v3, "mediaprovider_uri"

    const-string v4, "destination"

    const-string/jumbo v5, "title"

    const-string v6, "description"

    const-string/jumbo v7, "uri"

    const-string/jumbo v8, "status"

    const-string v9, "hint"

    const-string/jumbo v10, "media_type"

    const-string/jumbo v11, "total_size"

    const-string v12, "last_modified_timestamp"

    const-string v13, "bytes_so_far"

    const-string v14, "allow_write"

    const-string/jumbo v15, "notificationpackage"

    const-string v16, "dd_primaryMimeType"

    const-string v17, "dd_fileName"

    const-string v18, "dd_vendor"

    const-string v19, "dd_description"

    const-string v20, "dd_contentSize"

    const-string v21, "dd_objUrl"

    const-string v22, "dd_majorVersion"

    const-string/jumbo v23, "range_start"

    const-string/jumbo v24, "range_end"

    const-string/jumbo v25, "range_first_end"

    const-string v26, "local_uri"

    const-string/jumbo v27, "reason"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    .line 514
    const-string v1, "_id"

    const-string/jumbo v2, "title"

    const-string/jumbo v3, "status"

    const-string/jumbo v4, "state"

    const-string/jumbo v5, "total_bytes"

    const-string v6, "current_bytes"

    const-string v7, "_data"

    const-string v8, "description"

    const-string/jumbo v9, "mimetype"

    const-string v10, "lastmod"

    const-string/jumbo v11, "visibility"

    const-string v12, "downloadmethod"

    const-string/jumbo v13, "uri"

    const-string v14, "destination"

    const-string v15, "dd_primaryMimeType"

    const-string v16, "dd_SecondaryMimeType1"

    const-string v17, "dd_SecondaryMimeType2"

    const-string v18, "dd_fileName"

    const-string v19, "dd_vendor"

    const-string v20, "dd_description"

    const-string v21, "dd_contentSize"

    const-string v22, "dd_objUrl"

    const-string v23, "dd_notifyurl"

    const-string v24, "dd_majorVersion"

    const-string/jumbo v25, "storagetype"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/DownloadManager;->SEC_UNDERLYING_COLUMNS:[Ljava/lang/String;

    .line 525
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "_id"

    const-string/jumbo v2, "total_size"

    const-string/jumbo v3, "status"

    const-string/jumbo v4, "reason"

    const-string v5, "bytes_so_far"

    const-string v6, "last_modified_timestamp"

    const-string v7, "dd_contentSize"

    const-string/jumbo v8, "state"

    const-string v9, "downloadmethod"

    const-string/jumbo v10, "storage_type"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/app/DownloadManager;->LONG_COLUMNS:Ljava/util/Set;

    .line 525
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1485
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1487
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    .line 1494
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    .line 1495
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    .line 1499
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    .line 1500
    return-void
.end method

.method private static blacklist extractDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 2219
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2220
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2221
    return-object p0

    .line 2223
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2224
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2226
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist extractFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 2236
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2237
    :cond_0
    invoke-static {p0}, Landroid/app/DownloadManager;->extractDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2239
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2240
    .local v1, "lastDot":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2241
    return-object v0

    .line 2243
    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getActiveNetworkWarningBytes(Landroid/content/Context;)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 2007
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static whitelist getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1908
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "download_manager_max_bytes_over_mobile"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1910
    :catch_0
    move-exception v0

    .line 1911
    .local v0, "exc":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1991
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1993
    :catch_0
    move-exception v0

    .line 1994
    .local v0, "exc":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static greylist-max-r getWhereArgsForIds([J)[Ljava/lang/String;
    .locals 2
    .param p0, "ids"    # [J

    .line 2342
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 2343
    .local v0, "whereArgs":[Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/app/DownloadManager;->getWhereArgsForIds([J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static greylist-max-o getWhereArgsForIds([J[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "ids"    # [J
    .param p1, "args"    # [Ljava/lang/String;

    .line 2351
    nop

    .line 2352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 2353
    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 2352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2355
    .end local v0    # "i":I
    :cond_0
    return-object p1
.end method

.method static greylist-max-r getWhereClauseForIds([J)Ljava/lang/String;
    .locals 3
    .param p0, "ids"    # [J

    .line 2324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2325
    .local v0, "whereClause":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2326
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2327
    if-lez v1, :cond_0

    .line 2328
    const-string v2, "OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2330
    :cond_0
    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2331
    const-string v2, " = ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2333
    .end local v1    # "i":I
    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o isActiveNetworkExpensive(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 2001
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 4
    .param p1, "joiner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1639
    .local p2, "parts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1640
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1641
    .local v1, "first":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1642
    .local v3, "part":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1643
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    const/4 v1, 0x0

    .line 1647
    .end local v3    # "part":Ljava/lang/String;
    goto :goto_0

    .line 1648
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist resolveMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 2202
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/DownloadManager;->extractFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2203
    .local v0, "extension":Ljava/lang/String;
    const-string v1, "application/octet-stream"

    if-nez v0, :cond_0

    return-object v1

    .line 2205
    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2206
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2207
    .local v2, "mimeType":Ljava/lang/String;
    if-nez v2, :cond_1

    return-object v1

    .line 2209
    :cond_1
    return-object v2
.end method

.method private static greylist-max-o validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "paramName"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 2305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2308
    return-void

    .line 2306
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2050
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Landroid/net/Uri;)J
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .param p9, "uri"    # Landroid/net/Uri;
    .param p10, "referer"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2096
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZ)J
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .param p9, "allowWrite"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2121
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J
    .locals 11
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .param p9, "allowWrite"    # Z
    .param p10, "uri"    # Landroid/net/Uri;
    .param p11, "referer"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2147
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p10

    const-string/jumbo v6, "title"

    invoke-static {v6, p1}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    const-string v6, "description"

    invoke-static {v6, p2}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    const-string/jumbo v6, "path"

    invoke-static {v6, v4}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    const-string/jumbo v6, "mimeType"

    invoke-static {v6, p4}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    const-wide/16 v6, 0x0

    cmp-long v6, p6, v6

    if-ltz v6, :cond_6

    .line 2157
    if-eqz v5, :cond_0

    .line 2158
    new-instance v6, Landroid/app/DownloadManager$Request;

    invoke-direct {v6, v5}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .local v6, "request":Landroid/app/DownloadManager$Request;
    goto :goto_0

    .line 2160
    .end local v6    # "request":Landroid/app/DownloadManager$Request;
    :cond_0
    new-instance v6, Landroid/app/DownloadManager$Request;

    const-string/jumbo v7, "non-dwnldmngr-download-dont-retry2download"

    invoke-direct {v6, v7}, Landroid/app/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    .line 2162
    .restart local v6    # "request":Landroid/app/DownloadManager$Request;
    :goto_0
    invoke-virtual {v6, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v7

    .line 2163
    invoke-virtual {v7, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v7

    .line 2164
    invoke-virtual {v7, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 2165
    if-eqz p11, :cond_1

    .line 2166
    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Referer"

    invoke-virtual {v6, v8, v7}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 2171
    :cond_1
    nop

    .line 2172
    iget-object v7, v0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    const-string v8, "com.sec.android.app.sbrowser"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6, v7}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v7

    .line 2174
    .local v7, "values":Landroid/content/ContentValues;
    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "destination"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2175
    const-string v8, "_data"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/app/DownloadManager;->resolveMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "mimetype"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    const/16 v8, 0xc8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, "status"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2179
    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, "state"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2181
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string/jumbo v9, "total_bytes"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2182
    nop

    .line 2183
    const/4 v8, 0x2

    if-eqz p3, :cond_3

    const/4 v9, 0x0

    goto :goto_2

    .line 2184
    :cond_3
    move v9, v8

    .line 2183
    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2182
    const-string/jumbo v10, "scanned"

    invoke-virtual {v7, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2185
    if-eqz p8, :cond_4

    .line 2186
    const/4 v8, 0x3

    goto :goto_3

    :cond_4
    nop

    .line 2185
    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, "visibility"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2187
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "allow_write"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2188
    iget-object v8, v0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 2189
    .local v8, "downloadUri":Landroid/net/Uri;
    if-nez v8, :cond_5

    .line 2190
    const-wide/16 v9, -0x1

    return-wide v9

    .line 2192
    :cond_5
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    return-wide v9

    .line 2152
    .end local v6    # "request":Landroid/app/DownloadManager$Request;
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v8    # "downloadUri":Landroid/net/Uri;
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, " invalid value for param: totalBytes"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public whitelist enqueue(Landroid/app/DownloadManager$Request;)J
    .locals 5
    .param p1, "request"    # Landroid/app/DownloadManager$Request;

    .line 1581
    iget-object v0, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1582
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1583
    .local v1, "downloadUri":Landroid/net/Uri;
    const-wide/16 v2, 0x0

    .line 1584
    .local v2, "id":J
    if-eqz v1, :cond_0

    .line 1585
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1587
    :cond_0
    return-wide v2
.end method

.method public varargs blacklist forceDownload([J)V
    .locals 5
    .param p1, "ids"    # [J

    .line 1891
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1892
    .local v0, "values":Landroid/content/ContentValues;
    const/16 v1, 0xbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1893
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "control"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1894
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bypass_recommended_size_limit"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1895
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1896
    return-void
.end method

.method public greylist-max-o getDownloadUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "id"    # J

    .line 2316
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMimeTypeForDownloadedFile(J)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # J

    .line 1763
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 1764
    .local v0, "query":Landroid/app/DownloadManager$Query;
    const/4 v1, 0x0

    .line 1766
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 1767
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1768
    nop

    .line 1774
    if-eqz v1, :cond_0

    .line 1775
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1768
    :cond_0
    return-object v2

    .line 1770
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1771
    const-string/jumbo v2, "media_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1774
    if-eqz v1, :cond_2

    .line 1775
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1771
    :cond_2
    return-object v2

    .line 1774
    :cond_3
    if-eqz v1, :cond_4

    .line 1775
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1779
    :cond_4
    return-object v2

    .line 1774
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    .line 1775
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1777
    :cond_5
    throw v2
.end method

.method public whitelist getUriForDownloadedFile(J)Landroid/net/Uri;
    .locals 5
    .param p1, "id"    # J

    .line 1732
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 1733
    .local v0, "query":Landroid/app/DownloadManager$Query;
    const/4 v1, 0x0

    .line 1735
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 1736
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1737
    nop

    .line 1746
    if-eqz v1, :cond_0

    .line 1747
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1737
    :cond_0
    return-object v2

    .line 1739
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1740
    const-string/jumbo v3, "status"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1741
    .local v3, "status":I
    const/16 v4, 0x8

    if-ne v4, v3, :cond_3

    .line 1742
    sget-object v2, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1746
    if-eqz v1, :cond_2

    .line 1747
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1742
    :cond_2
    return-object v2

    .line 1746
    .end local v3    # "status":I
    :cond_3
    if-eqz v1, :cond_4

    .line 1747
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1751
    :cond_4
    return-object v2

    .line 1746
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    .line 1747
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1749
    :cond_5
    throw v2
.end method

.method public varargs blacklist markRowDeleted([J)I
    .locals 4
    .param p1, "ids"    # [J

    .line 1600
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 1604
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1602
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input param \'ids\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onMediaStoreDownloadsDeleted(Landroid/util/LongSparseArray;)V
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1549
    .local p1, "idToMime":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1550
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1551
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_1

    .line 1552
    :try_start_1
    const-string v1, "DownloadManager"

    const-string v2, "client is null maybe due to download provider disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1567
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1553
    :cond_0
    return-void

    .line 1555
    :cond_1
    :try_start_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1556
    .local v1, "callExtras":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    new-array v2, v2, [J

    .line 1557
    .local v2, "ids":[J
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 1558
    .local v3, "mimeTypes":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 1559
    invoke-virtual {p1, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    aput-wide v5, v2, v4

    .line 1560
    invoke-virtual {p1, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 1558
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1562
    .end local v4    # "i":I
    :cond_2
    const-string v4, "ids"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1563
    const-string/jumbo v4, "mime_types"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1565
    const-string/jumbo v4, "mediastore_downloads_deleted"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1567
    .end local v1    # "callExtras":Landroid/os/Bundle;
    .end local v2    # "ids":[J
    .end local v3    # "mimeTypes":[Ljava/lang/String;
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1569
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_3
    goto :goto_2

    .line 1549
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "idToMime":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    throw v1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1567
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "idToMime":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1570
    :goto_2
    return-void
.end method

.method public whitelist openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1719
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2}, Landroid/app/DownloadManager;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist pauseDownload(J)V
    .locals 4
    .param p1, "id"    # J

    .line 1826
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1827
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "control"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1828
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1829
    return-void
.end method

.method public whitelist query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    .locals 1
    .param p1, "query"    # Landroid/app/DownloadManager$Query;

    .line 1680
    sget-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist query(Landroid/app/DownloadManager$Query;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "query"    # Landroid/app/DownloadManager$Query;
    .param p2, "projection"    # [Ljava/lang/String;

    .line 1685
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/DownloadManager$Query;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 1686
    .local v0, "underlyingCursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1687
    const/4 v1, 0x0

    return-object v1

    .line 1689
    :cond_0
    new-instance v1, Landroid/app/DownloadManager$CursorTranslator;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    iget-boolean v3, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    invoke-direct {v1, v0, v2, v3}, Landroid/app/DownloadManager$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V

    return-object v1
.end method

.method public varargs whitelist remove([J)I
    .locals 1
    .param p1, "ids"    # [J

    .line 1616
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->markRowDeleted([J)I

    move-result v0

    return v0
.end method

.method public greylist-max-o rename(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # J
    .param p4, "displayName"    # Ljava/lang/String;

    .line 1925
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    invoke-static/range {p4 .. p4}, Landroid/os/FileUtils;->isValidFatFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1930
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v5, 0x1

    new-array v6, v5, [J

    const/4 v7, 0x0

    aput-wide v2, v6, v7

    invoke-virtual {v0, v6}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v6

    .line 1931
    .local v6, "query":Landroid/app/DownloadManager$Query;
    invoke-virtual {v1, v6}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v8

    .line 1932
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_8

    .line 1935
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1936
    const-string/jumbo v0, "status"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1937
    .local v0, "status":I
    const/16 v9, 0x8

    if-ne v0, v9, :cond_6

    .line 1941
    const-string v9, "local_filename"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1942
    .local v9, "filePath":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 1945
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_4

    .line 1949
    .end local v0    # "status":I
    nop

    .line 1952
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1954
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1955
    .local v0, "before":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-direct {v8, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1957
    .local v8, "after":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1960
    invoke-virtual {v0, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1967
    iget-object v10, v1, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v10, v0}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 1968
    iget-object v10, v1, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v10, v8}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 1970
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1971
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v11, "title"

    invoke-virtual {v10, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "_data"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    const-string/jumbo v11, "mediaprovider_uri"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1974
    new-array v11, v5, [J

    aput-wide v2, v11, v7

    .line 1976
    .local v11, "ids":[J
    iget-object v12, v1, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v13, v1, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1977
    invoke-static {v11}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v14

    invoke-static {v11}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v15

    .line 1976
    invoke-virtual {v12, v13, v10, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    if-ne v12, v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_0
    return v5

    .line 1961
    .end local v10    # "values":Landroid/content/ContentValues;
    .end local v11    # "ids":[J
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to rename file from "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " to "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1958
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File already exists: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1946
    .local v0, "status":I
    .local v8, "cursor":Landroid/database/Cursor;
    :cond_4
    :try_start_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Downloaded file doesn\'t exist anymore: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1947
    invoke-static {v8}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "id":J
    .end local p4    # "displayName":Ljava/lang/String;
    throw v5

    .line 1943
    .restart local v6    # "query":Landroid/app/DownloadManager$Query;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "id":J
    .restart local p4    # "displayName":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Download doesn\'t have a valid file path: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1944
    invoke-static {v8}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "id":J
    .end local p4    # "displayName":Ljava/lang/String;
    throw v5

    .line 1938
    .end local v9    # "filePath":Ljava/lang/String;
    .restart local v6    # "query":Landroid/app/DownloadManager$Query;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "id":J
    .restart local p4    # "displayName":Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Download is not completed yet: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1939
    invoke-static {v8}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "id":J
    .end local p4    # "displayName":Ljava/lang/String;
    throw v5

    .line 1950
    .end local v0    # "status":I
    .restart local v6    # "query":Landroid/app/DownloadManager$Query;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "id":J
    .restart local p4    # "displayName":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing download id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "id":J
    .end local p4    # "displayName":Ljava/lang/String;
    throw v0

    .line 1931
    .restart local v6    # "query":Landroid/app/DownloadManager$Query;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "id":J
    .restart local p4    # "displayName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_1

    .line 1933
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing cursor for download id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "id":J
    .end local p4    # "displayName":Ljava/lang/String;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1931
    .restart local v6    # "query":Landroid/app/DownloadManager$Query;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "id":J
    .restart local p4    # "displayName":Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_9

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    throw v5

    .line 1926
    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a valid filename"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs greylist restartDownload([J)Z
    .locals 6
    .param p1, "ids"    # [J

    .line 1790
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 1792
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v2, "status"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 1793
    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1794
    .local v1, "status":I
    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 1798
    nop

    .line 1802
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1798
    return v3

    .line 1792
    .end local v1    # "status":I
    :cond_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1802
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1803
    nop

    .line 1805
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1806
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "current_bytes"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1807
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "total_bytes"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1808
    const-string v4, "_data"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1809
    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1810
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v4, "numfailed"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1811
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "state"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1812
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "range_start"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1813
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "range_end"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1814
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "range_first_end"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1815
    iget-object v2, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1816
    const/4 v2, 0x1

    return v2

    .line 1802
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1803
    throw v1
.end method

.method public blacklist resumeDownload(J)V
    .locals 4
    .param p1, "id"    # J

    .line 1838
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1839
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "control"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1840
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1841
    return-void
.end method

.method public blacklist secAddCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z

    .line 2255
    const-string/jumbo v0, "title"

    invoke-static {v0, p1}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    const-string v0, "description"

    invoke-static {v0, p2}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    const-string/jumbo v0, "path"

    invoke-static {v0, p5}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    const-string/jumbo v0, "mimeType"

    invoke-static {v0, p4}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-ltz v0, :cond_3

    .line 2265
    new-instance v0, Landroid/app/DownloadManager$Request;

    const-string/jumbo v1, "non-dwnldmngr-download-dont-retry2download"

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v0

    .line 2266
    invoke-virtual {v0, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v0

    .line 2267
    .local v0, "request":Landroid/app/DownloadManager$Request;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->sectoContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 2268
    .local v1, "values":Landroid/content/ContentValues;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "destination"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2276
    const-string v3, "_data"

    invoke-virtual {v1, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2278
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "state"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2279
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "storagetype"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2280
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "total_bytes"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2281
    nop

    .line 2282
    const/4 v4, 0x2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2281
    const-string/jumbo v5, "scanned"

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2283
    nop

    .line 2284
    if-eqz p8, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2283
    const-string/jumbo v3, "visibility"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2292
    iget-object v2, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 2293
    .local v2, "downloadUri":Landroid/net/Uri;
    if-nez v2, :cond_2

    .line 2294
    const-wide/16 v3, -0x1

    return-wide v3

    .line 2296
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    return-wide v3

    .line 2260
    .end local v0    # "request":Landroid/app/DownloadManager$Request;
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "downloadUri":Landroid/net/Uri;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " invalid value for param: totalBytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs blacklist secmarkRowDeleted([J)I
    .locals 5
    .param p1, "ids"    # [J

    .line 1626
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 1630
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1631
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1635
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    const/4 v3, 0x0

    aget-wide v3, p1, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1628
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input param \'ids\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist secquery(Landroid/app/DownloadManager$SecQuery;)Landroid/database/Cursor;
    .locals 3
    .param p1, "query"    # Landroid/app/DownloadManager$SecQuery;

    .line 1704
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/app/DownloadManager;->SEC_UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v2, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/DownloadManager$SecQuery;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 1705
    .local v0, "underlyingCursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1706
    const/4 v1, 0x0

    return-object v1

    .line 1708
    :cond_0
    new-instance v1, Landroid/app/DownloadManager$SecCursorTranslator;

    iget-object v2, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Landroid/app/DownloadManager$SecCursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    return-object v1
.end method

.method public varargs blacklist secremove([J)I
    .locals 5
    .param p1, "ids"    # [J

    .line 1655
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 1661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1662
    .local v0, "selectionParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1664
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1665
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v1

    .line 1666
    const-string v2, " AND "

    invoke-direct {p0, v2, v0}, Landroid/app/DownloadManager;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 1668
    .local v2, "selection":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3

    .line 1657
    .end local v0    # "selectionParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    .end local v2    # "selection":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input param \'ids\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs blacklist secrestartDownload([J)Z
    .locals 7
    .param p1, "ids"    # [J

    .line 1854
    new-instance v0, Landroid/app/DownloadManager$SecQuery;

    invoke-direct {v0}, Landroid/app/DownloadManager$SecQuery;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$SecQuery;->setFilterById([J)Landroid/app/DownloadManager$SecQuery;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->secquery(Landroid/app/DownloadManager$SecQuery;)Landroid/database/Cursor;

    move-result-object v0

    .line 1855
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1872
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1855
    if-nez v0, :cond_0

    .line 1856
    return v1

    .line 1858
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v4, "status"

    if-nez v3, :cond_2

    .line 1859
    :try_start_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1860
    .local v3, "status":I
    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    .line 1864
    nop

    .line 1868
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1864
    return v1

    .line 1858
    .end local v3    # "status":I
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1868
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1869
    nop

    .line 1871
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1872
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1873
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v5, "total_bytes"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1874
    const-string v3, "_data"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1875
    const-string/jumbo v3, "state"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1876
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v5, "visibility"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1877
    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1878
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1879
    return v2

    .line 1868
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1869
    throw v1
.end method

.method public greylist setAccessAllDownloads(Z)V
    .locals 1
    .param p1, "accessAllDownloads"    # Z

    .line 1509
    if-eqz p1, :cond_0

    .line 1510
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    goto :goto_0

    .line 1512
    :cond_0
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1514
    :goto_0
    return-void
.end method

.method public greylist-max-p setAccessFilename(Z)V
    .locals 0
    .param p1, "accessFilename"    # Z

    .line 1519
    iput-boolean p1, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    .line 1520
    return-void
.end method

.method public blacklist setSecDownloads(Z)V
    .locals 1
    .param p1, "accessAllDownloads"    # Z

    .line 1532
    if-eqz p1, :cond_0

    .line 1533
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1535
    :cond_0
    return-void
.end method

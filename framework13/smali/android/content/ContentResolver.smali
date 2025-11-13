.class public abstract Landroid/content/ContentResolver;
.super Ljava/lang/Object;
.source "ContentResolver.java"

# interfaces
.implements Landroid/content/ContentInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentResolver$MimeTypeInfo;,
        Landroid/content/ContentResolver$ParcelFileDescriptorInner;,
        Landroid/content/ContentResolver$CursorWrapperInner;,
        Landroid/content/ContentResolver$OpenResourceIdResult;,
        Landroid/content/ContentResolver$UriResultListener;,
        Landroid/content/ContentResolver$StringResultListener;,
        Landroid/content/ContentResolver$ResultListener;,
        Landroid/content/ContentResolver$SyncExemption;,
        Landroid/content/ContentResolver$NotifyFlags;,
        Landroid/content/ContentResolver$QueryCollator;,
        Landroid/content/ContentResolver$SortDirection;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

.field public static final whitelist ANY_CURSOR_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/*"

.field public static final blacklist CONTENT_PROVIDER_PUBLISH_TIMEOUT_MILLIS:I

.field public static final blacklist CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

.field private static final blacklist CONTENT_PROVIDER_TIMEOUT_MILLIS:I

.field public static final greylist-max-o CONTENT_SERVICE_NAME:Ljava/lang/String; = "content"

.field public static final whitelist CURSOR_DIR_BASE_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir"

.field public static final whitelist CURSOR_ITEM_BASE_TYPE:Ljava/lang/String; = "vnd.android.cursor.item"

.field public static final blacklist DEPRECATE_DATA_COLUMNS:Z = true

.field public static final blacklist DEPRECATE_DATA_PREFIX:Ljava/lang/String; = "/mnt/content/"

.field private static final greylist-max-o ENABLE_CONTENT_SAMPLE:Z = false

.field public static final whitelist EXTRA_HONORED_ARGS:Ljava/lang/String; = "android.content.extra.HONORED_ARGS"

.field public static final whitelist EXTRA_REFRESH_SUPPORTED:Ljava/lang/String; = "android.content.extra.REFRESH_SUPPORTED"

.field public static final whitelist EXTRA_SIZE:Ljava/lang/String; = "android.content.extra.SIZE"

.field public static final whitelist EXTRA_TOTAL_COUNT:Ljava/lang/String; = "android.content.extra.TOTAL_COUNT"

.field public static final blacklist MIME_TYPE_DEFAULT:Ljava/lang/String; = "application/octet-stream"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NOTIFY_DELETE:I = 0x10

.field public static final whitelist NOTIFY_INSERT:I = 0x4

.field public static final blacklist NOTIFY_NO_DELAY:I = 0x8000

.field public static final whitelist NOTIFY_SKIP_NOTIFY_FOR_DESCENDANTS:I = 0x2

.field public static final whitelist NOTIFY_SYNC_TO_NETWORK:I = 0x1

.field public static final whitelist NOTIFY_UPDATE:I = 0x8

.field public static final whitelist QUERY_ARG_GROUP_COLUMNS:Ljava/lang/String; = "android:query-arg-group-columns"

.field public static final whitelist QUERY_ARG_LIMIT:Ljava/lang/String; = "android:query-arg-limit"

.field public static final whitelist QUERY_ARG_OFFSET:Ljava/lang/String; = "android:query-arg-offset"

.field public static final whitelist QUERY_ARG_SORT_COLLATION:Ljava/lang/String; = "android:query-arg-sort-collation"

.field public static final whitelist QUERY_ARG_SORT_COLUMNS:Ljava/lang/String; = "android:query-arg-sort-columns"

.field public static final whitelist QUERY_ARG_SORT_DIRECTION:Ljava/lang/String; = "android:query-arg-sort-direction"

.field public static final whitelist QUERY_ARG_SORT_LOCALE:Ljava/lang/String; = "android:query-arg-sort-locale"

.field public static final whitelist QUERY_ARG_SQL_GROUP_BY:Ljava/lang/String; = "android:query-arg-sql-group-by"

.field public static final whitelist QUERY_ARG_SQL_HAVING:Ljava/lang/String; = "android:query-arg-sql-having"

.field public static final whitelist QUERY_ARG_SQL_LIMIT:Ljava/lang/String; = "android:query-arg-sql-limit"

.field public static final whitelist QUERY_ARG_SQL_SELECTION:Ljava/lang/String; = "android:query-arg-sql-selection"

.field public static final whitelist QUERY_ARG_SQL_SELECTION_ARGS:Ljava/lang/String; = "android:query-arg-sql-selection-args"

.field public static final whitelist QUERY_ARG_SQL_SORT_ORDER:Ljava/lang/String; = "android:query-arg-sql-sort-order"

.field public static final whitelist QUERY_SORT_DIRECTION_ASCENDING:I = 0x0

.field public static final whitelist QUERY_SORT_DIRECTION_DESCENDING:I = 0x1

.field public static final blacklist REMOTE_CALLBACK_ERROR:Ljava/lang/String; = "error"

.field public static final blacklist REMOTE_CALLBACK_RESULT:Ljava/lang/String; = "result"

.field private static final blacklist REMOTE_CONTENT_PROVIDER_TIMEOUT_MILLIS:I

.field public static final whitelist SCHEME_ANDROID_RESOURCE:Ljava/lang/String; = "android.resource"

.field public static final whitelist SCHEME_CONTENT:Ljava/lang/String; = "content"

.field public static final whitelist SCHEME_FILE:Ljava/lang/String; = "file"

.field private static final greylist-max-o SLOW_THRESHOLD_MILLIS:I

.field public static final greylist-max-o SYNC_ERROR_AUTHENTICATION:I = 0x2

.field public static final greylist-max-o SYNC_ERROR_CONFLICT:I = 0x5

.field public static final greylist-max-o SYNC_ERROR_INTERNAL:I = 0x8

.field public static final greylist-max-o SYNC_ERROR_IO:I = 0x3

.field private static final greylist-max-o SYNC_ERROR_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o SYNC_ERROR_PARSE:I = 0x4

.field public static final greylist-max-r SYNC_ERROR_SYNC_ALREADY_IN_PROGRESS:I = 0x1

.field public static final greylist-max-o SYNC_ERROR_TOO_MANY_DELETIONS:I = 0x6

.field public static final greylist-max-o SYNC_ERROR_TOO_MANY_RETRIES:I = 0x7

.field public static final greylist-max-o SYNC_EXEMPTION_NONE:I = 0x0

.field public static final greylist-max-o SYNC_EXEMPTION_PROMOTE_BUCKET:I = 0x1

.field public static final greylist-max-o SYNC_EXEMPTION_PROMOTE_BUCKET_WITH_TEMP:I = 0x2

.field public static final whitelist SYNC_EXTRAS_ACCOUNT:Ljava/lang/String; = "account"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o SYNC_EXTRAS_DISALLOW_METERED:Ljava/lang/String; = "allow_metered"

.field public static final whitelist SYNC_EXTRAS_DISCARD_LOCAL_DELETIONS:Ljava/lang/String; = "discard_deletions"

.field public static final whitelist SYNC_EXTRAS_DO_NOT_RETRY:Ljava/lang/String; = "do_not_retry"

.field public static final greylist-max-o SYNC_EXTRAS_EXPECTED_DOWNLOAD:Ljava/lang/String; = "expected_download"

.field public static final greylist-max-o SYNC_EXTRAS_EXPECTED_UPLOAD:Ljava/lang/String; = "expected_upload"

.field public static final whitelist SYNC_EXTRAS_EXPEDITED:Ljava/lang/String; = "expedited"

.field public static final whitelist SYNC_EXTRAS_FORCE:Ljava/lang/String; = "force"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SYNC_EXTRAS_IGNORE_BACKOFF:Ljava/lang/String; = "ignore_backoff"

.field public static final whitelist SYNC_EXTRAS_IGNORE_SETTINGS:Ljava/lang/String; = "ignore_settings"

.field public static final whitelist SYNC_EXTRAS_INITIALIZE:Ljava/lang/String; = "initialize"

.field public static final whitelist SYNC_EXTRAS_MANUAL:Ljava/lang/String; = "force"

.field public static final whitelist SYNC_EXTRAS_OVERRIDE_TOO_MANY_DELETIONS:Ljava/lang/String; = "deletions_override"

.field public static final greylist-max-o SYNC_EXTRAS_PRIORITY:Ljava/lang/String; = "sync_priority"

.field public static final whitelist SYNC_EXTRAS_REQUIRE_CHARGING:Ljava/lang/String; = "require_charging"

.field public static final whitelist SYNC_EXTRAS_SCHEDULE_AS_EXPEDITED_JOB:Ljava/lang/String; = "schedule_as_expedited_job"

.field public static final whitelist SYNC_EXTRAS_UPLOAD:Ljava/lang/String; = "upload"

.field public static final whitelist SYNC_OBSERVER_TYPE_ACTIVE:I = 0x4

.field public static final greylist-max-o SYNC_OBSERVER_TYPE_ALL:I = 0x7fffffff

.field public static final whitelist SYNC_OBSERVER_TYPE_PENDING:I = 0x2

.field public static final whitelist SYNC_OBSERVER_TYPE_SETTINGS:I = 0x1

.field public static final greylist-max-r SYNC_OBSERVER_TYPE_STATUS:I = 0x8

.field public static final greylist-max-o SYNC_VIRTUAL_EXTRAS_EXEMPTION_FLAG:Ljava/lang/String; = "v_exemption"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ContentResolver"

.field private static volatile greylist sContentService:Landroid/content/IContentService;


# instance fields
.field private final greylist mContext:Landroid/content/Context;

.field final greylist mPackageName:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final greylist-max-o mRandom:Ljava/util/Random;

.field final greylist-max-o mTargetSdkVersion:I

.field final blacklist mWrapped:Landroid/content/ContentInterface;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 10

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    .line 620
    const-string v2, "already-in-progress"

    const-string v3, "authentication-error"

    const-string v4, "io-error"

    const-string/jumbo v5, "parse-error"

    const-string v6, "conflict"

    const-string/jumbo v7, "too-many-deletions"

    const-string/jumbo v8, "too-many-retries"

    const-string v9, "internal-error"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    .line 779
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x1f4

    sput v0, Landroid/content/ContentResolver;->SLOW_THRESHOLD_MILLIS:I

    .line 793
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x2710

    sput v0, Landroid/content/ContentResolver;->CONTENT_PROVIDER_PUBLISH_TIMEOUT_MILLIS:I

    .line 801
    sget v1, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    sput v0, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    .line 805
    sget v1, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v1, v1, 0xbb8

    sput v1, Landroid/content/ContentResolver;->CONTENT_PROVIDER_TIMEOUT_MILLIS:I

    .line 811
    add-int/2addr v0, v1

    sput v0, Landroid/content/ContentResolver;->REMOTE_CONTENT_PROVIDER_TIMEOUT_MILLIS:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 819
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/ContentResolver;-><init>(Landroid/content/Context;Landroid/content/ContentInterface;)V

    .line 820
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ContentInterface;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrapped"    # Landroid/content/ContentInterface;

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/content/ContentResolver;->mRandom:Ljava/util/Random;

    .line 824
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 825
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    .line 826
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/content/ContentResolver;->mTargetSdkVersion:I

    .line 827
    iput-object p2, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    .line 828
    return-void
.end method

.method public static whitelist addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 7
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "pollFrequency"    # J

    .line 3361
    invoke-static {p2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 3362
    invoke-static {p2}, Landroid/content/ContentResolver;->invalidPeriodicExtras(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3366
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentService;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3369
    nop

    .line 3370
    return-void

    .line 3367
    :catch_0
    move-exception v0

    .line 3368
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3363
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal extras were set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;
    .locals 2
    .param p0, "mask"    # I
    .param p1, "callback"    # Landroid/content/SyncStatusObserver;

    .line 3733
    if-eqz p1, :cond_0

    .line 3737
    :try_start_0
    new-instance v0, Landroid/content/ContentResolver$2;

    invoke-direct {v0, p1}, Landroid/content/ContentResolver$2;-><init>(Landroid/content/SyncStatusObserver;)V

    .line 3743
    .local v0, "observer":Landroid/content/ISyncStatusObserver$Stub;
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/content/IContentService;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3744
    return-object v0

    .line 3745
    .end local v0    # "observer":Landroid/content/ISyncStatusObserver$Stub;
    :catch_0
    move-exception v0

    .line 3746
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3734
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "you passed in a null callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .line 3186
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Landroid/content/IContentService;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3189
    nop

    .line 3190
    return-void

    .line 3187
    :catch_0
    move-exception v0

    .line 3188
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist cancelSync(Landroid/content/SyncRequest;)V
    .locals 2
    .param p0, "request"    # Landroid/content/SyncRequest;

    .line 3423
    if-eqz p0, :cond_0

    .line 3427
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/IContentService;->cancelRequest(Landroid/content/SyncRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3430
    nop

    .line 3431
    return-void

    .line 3428
    :catch_0
    move-exception v0

    .line 3429
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3424
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3198
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1, p2}, Landroid/content/IContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3201
    nop

    .line 3202
    return-void

    .line 3199
    :catch_0
    move-exception v0

    .line 3200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "selection"    # Ljava/lang/String;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 4066
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "selection"    # Ljava/lang/String;
    .param p1, "selectionArgs"    # [Ljava/lang/String;
    .param p2, "sortOrder"    # Ljava/lang/String;

    .line 4077
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 4078
    const/4 v0, 0x0

    return-object v0

    .line 4081
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4082
    .local v0, "queryArgs":Landroid/os/Bundle;
    if-eqz p0, :cond_1

    .line 4083
    const-string v1, "android:query-arg-sql-selection"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4085
    :cond_1
    if-eqz p1, :cond_2

    .line 4086
    const-string v1, "android:query-arg-sql-selection-args"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4088
    :cond_2
    if-eqz p2, :cond_3

    .line 4089
    const-string v1, "android:query-arg-sql-sort-order"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4091
    :cond_3
    return-object v0
.end method

.method public static greylist-max-o createSqlSortClause(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .param p0, "queryArgs"    # Landroid/os/Bundle;

    .line 4123
    const-string v0, "android:query-arg-sort-columns"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4124
    .local v0, "columns":[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v1, v0

    if-eqz v1, :cond_3

    .line 4128
    const-string v1, ", "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4132
    .local v1, "query":Ljava/lang/String;
    const/4 v2, 0x3

    const-string v3, "android:query-arg-sort-collation"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4134
    .local v2, "collation":I
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 4135
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " COLLATE NOCASE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4138
    :cond_1
    const-string v3, "android:query-arg-sort-direction"

    const/high16 v4, -0x80000000

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 4139
    .local v3, "sortDir":I
    if-eq v3, v4, :cond_2

    .line 4140
    packed-switch v3, :pswitch_data_0

    .line 4148
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported sort direction value. See ContentResolver documentation for details."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4145
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DESC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4146
    goto :goto_0

    .line 4142
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ASC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4152
    :cond_2
    :goto_0
    return-object v1

    .line 4125
    .end local v1    # "query":Ljava/lang/String;
    .end local v2    # "collation":I
    .end local v3    # "sortDir":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t create sort clause without columns."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist decodeFromFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4252
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentResolver;->translateDeprecatedDataPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist encodeToFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4271
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/content/ContentResolver;->translateDeprecatedDataPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist getContentService()Landroid/content/IContentService;
    .locals 2

    .line 3949
    sget-object v0, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    if-eqz v0, :cond_0

    .line 3950
    sget-object v0, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    return-object v0

    .line 3952
    :cond_0
    const-string v0, "content"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3953
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IContentService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;

    move-result-object v1

    sput-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    .line 3954
    sget-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    return-object v1
.end method

.method public static whitelist getCurrentSync()Landroid/content/SyncInfo;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3601
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/IContentService;->getCurrentSyncs()Ljava/util/List;

    move-result-object v0

    .line 3602
    .local v0, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3603
    const/4 v1, 0x0

    return-object v1

    .line 3605
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 3606
    .end local v0    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :catch_0
    move-exception v0

    .line 3607
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getCurrentSyncs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 3622
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/IContentService;->getCurrentSyncs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3623
    :catch_0
    move-exception v0

    .line 3624
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o getCurrentSyncsAsUser(I)Ljava/util/List;
    .locals 2
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 3634
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/IContentService;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3635
    :catch_0
    move-exception v0

    .line 3636
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .line 3458
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/IContentService;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3459
    :catch_0
    move-exception v0

    .line 3460
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3471
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/IContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3472
    :catch_0
    move-exception v0

    .line 3473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getMasterSyncAutomatically()Z
    .locals 2

    .line 3514
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/IContentService;->getMasterSyncAutomatically()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3515
    :catch_0
    move-exception v0

    .line 3516
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o getMasterSyncAutomaticallyAsUser(I)Z
    .locals 2
    .param p0, "userId"    # I

    .line 3526
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/IContentService;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3527
    :catch_0
    move-exception v0

    .line 3528
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .line 3444
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Landroid/content/IContentService;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3445
    :catch_0
    move-exception v0

    .line 3446
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "accountType"    # Ljava/lang/String;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3251
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/IContentService;->getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3252
    :catch_0
    move-exception v0

    .line 3253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 3236
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/IContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3237
    :catch_0
    move-exception v0

    .line 3238
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 2

    .line 3210
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3211
    :catch_0
    move-exception v0

    .line 3212
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .locals 2
    .param p0, "userId"    # I

    .line 3222
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/IContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3223
    :catch_0
    move-exception v0

    .line 3224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .line 3268
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/IContentService;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3269
    :catch_0
    move-exception v0

    .line 3270
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3281
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/IContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3282
    :catch_0
    move-exception v0

    .line 3283
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .line 3650
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Landroid/content/IContentService;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3651
    :catch_0
    move-exception v0

    .line 3652
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-r getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3687
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1, p2}, Landroid/content/IContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3688
    :catch_0
    move-exception v0

    .line 3689
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist hasInvalidScheduleAsEjExtras(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 3321
    const-string/jumbo v0, "require_charging"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3322
    const-string v0, "expedited"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3321
    :goto_1
    return v0
.end method

.method public static blacklist includeSqlSelectionArgs(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "queryArgs"    # Landroid/os/Bundle;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 4097
    if-eqz p1, :cond_0

    .line 4098
    const-string v0, "android:query-arg-sql-selection"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4100
    :cond_0
    if-eqz p2, :cond_1

    .line 4101
    const-string v0, "android:query-arg-sql-selection-args"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4103
    :cond_1
    return-object p0
.end method

.method public static greylist-max-o invalidPeriodicExtras(Landroid/os/Bundle;)Z
    .locals 3
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 3380
    const-string v0, "force"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3381
    const-string v2, "do_not_retry"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3382
    const-string v2, "ignore_backoff"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3383
    const-string v2, "ignore_settings"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3384
    const-string v2, "initialize"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3385
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3386
    const-string v0, "expedited"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3387
    const-string/jumbo v0, "schedule_as_expedited_job"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 3380
    :cond_1
    return v1
.end method

.method public static whitelist isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .line 3571
    if-eqz p0, :cond_1

    .line 3574
    if-eqz p1, :cond_0

    .line 3579
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Landroid/content/IContentService;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3580
    :catch_0
    move-exception v0

    .line 3581
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3575
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authority must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3572
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .line 3702
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3712
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1, p2}, Landroid/content/IContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3713
    :catch_0
    move-exception v0

    .line 3714
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static synthetic blacklist lambda$loadThumbnail$0(Landroid/content/ContentInterface;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/system/Int64Ref;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .param p0, "content"    # Landroid/content/ContentInterface;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "opts"    # Landroid/os/Bundle;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .param p4, "orientation"    # Landroid/system/Int64Ref;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4191
    const-string v0, "image/*"

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/content/ContentInterface;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 4193
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4194
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const-string v3, "android.provider.extra.ORIENTATION"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    iput-wide v2, p4, Landroid/system/Int64Ref;->value:J

    .line 4195
    return-object v0
.end method

.method static synthetic blacklist lambda$loadThumbnail$1(ILandroid/os/CancellationSignal;Landroid/util/Size;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 4
    .param p0, "allocator"    # I
    .param p1, "signal"    # Landroid/os/CancellationSignal;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p4, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p5, "source"    # Landroid/graphics/ImageDecoder$Source;

    .line 4197
    invoke-virtual {p3, p0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 4200
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 4204
    :cond_0
    invoke-virtual {p4}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    .line 4205
    .local v0, "widthSample":I
    invoke-virtual {p4}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    .line 4206
    .local v1, "heightSample":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4207
    .local v2, "sample":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 4208
    invoke-virtual {p3, v2}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    .line 4210
    :cond_1
    return-void
.end method

.method public static blacklist loadThumbnail(Landroid/content/ContentInterface;Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;I)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "content"    # Landroid/content/ContentInterface;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .param p4, "allocator"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4181
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4182
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4183
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4186
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4187
    .local v0, "opts":Landroid/os/Bundle;
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual/range {p2 .. p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    const-string v2, "android.content.extra.SIZE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4188
    new-instance v1, Landroid/system/Int64Ref;

    const-wide/16 v7, 0x0

    invoke-direct {v1, v7, v8}, Landroid/system/Int64Ref;-><init>(J)V

    move-object v9, v1

    .line 4190
    .local v9, "orientation":Landroid/system/Int64Ref;
    new-instance v10, Landroid/content/ContentResolver$$ExternalSyntheticLambda1;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v0

    move-object/from16 v5, p3

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver$$ExternalSyntheticLambda1;-><init>(Landroid/content/ContentInterface;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/system/Int64Ref;)V

    invoke-static {v10}, Landroid/graphics/ImageDecoder;->createSource(Ljava/util/concurrent/Callable;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v1

    new-instance v2, Landroid/content/ContentResolver$$ExternalSyntheticLambda2;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-direct {v2, v5, v4, v3}, Landroid/content/ContentResolver$$ExternalSyntheticLambda2;-><init>(ILandroid/os/CancellationSignal;Landroid/util/Size;)V

    invoke-static {v1, v2}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4215
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-wide v10, v9, Landroid/system/Int64Ref;->value:J

    cmp-long v2, v10, v7

    if-eqz v2, :cond_0

    .line 4216
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 4217
    .local v2, "width":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 4219
    .local v6, "height":I
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 4220
    .local v7, "m":Landroid/graphics/Matrix;
    iget-wide v10, v9, Landroid/system/Int64Ref;->value:J

    long-to-float v8, v10

    div-int/lit8 v10, v2, 0x2

    int-to-float v10, v10

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    invoke-virtual {v7, v8, v10, v11}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 4221
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object v10, v1

    move v13, v2

    move v14, v6

    move-object v15, v7

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4224
    .end local v2    # "width":I
    .end local v6    # "height":I
    .end local v7    # "m":Landroid/graphics/Matrix;
    :cond_0
    return-object v1
.end method

.method private greylist-max-o maybeLogQueryToEventLog(JLandroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "durationMillis"    # J
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "queryArgs"    # Landroid/os/Bundle;

    .line 3827
    return-void
.end method

.method private greylist-max-o maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "durationMillis"    # J
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "operation"    # Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;

    .line 3870
    return-void
.end method

.method public static blacklist onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stacktrace"    # Ljava/lang/Throwable;

    .line 4230
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Landroid/content/IContentService;->onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4233
    goto :goto_0

    .line 4231
    :catch_0
    move-exception v0

    .line 4232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 4234
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static whitelist removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3401
    invoke-static {p2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 3403
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/IContentService;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3406
    nop

    .line 3407
    return-void

    .line 3404
    :catch_0
    move-exception v0

    .line 3405
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist removeStatusChangeListener(Ljava/lang/Object;)V
    .locals 2
    .param p0, "handle"    # Ljava/lang/Object;

    .line 3755
    if-eqz p0, :cond_0

    .line 3759
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/ISyncStatusObserver$Stub;

    invoke-interface {v0, v1}, Landroid/content/IContentService;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3762
    nop

    .line 3763
    return-void

    .line 3760
    :catch_0
    move-exception v0

    .line 3761
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3756
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "you passed in a null handle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3087
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 3088
    return-void
.end method

.method public static whitelist requestSync(Landroid/content/SyncRequest;)V
    .locals 2
    .param p0, "request"    # Landroid/content/SyncRequest;

    .line 3122
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/content/IContentService;->sync(Landroid/content/SyncRequest;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3125
    nop

    .line 3126
    return-void

    .line 3123
    :catch_0
    move-exception v0

    .line 3124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 3096
    if-eqz p3, :cond_0

    .line 3099
    new-instance v0, Landroid/content/SyncRequest$Builder;

    invoke-direct {v0}, Landroid/content/SyncRequest$Builder;-><init>()V

    .line 3101
    invoke-virtual {v0, p0, p1}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 3102
    invoke-virtual {v0, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 3103
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 3104
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object v0

    .line 3108
    .local v0, "request":Landroid/content/SyncRequest;
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, p2, v2}, Landroid/content/IContentService;->syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3111
    nop

    .line 3112
    return-void

    .line 3109
    :catch_0
    move-exception v1

    .line 3110
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 3097
    .end local v0    # "request":Landroid/content/SyncRequest;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify extras."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o samplePercentForDuration(J)I
    .locals 5
    .param p1, "durationMillis"    # J

    .line 3819
    sget v0, Landroid/content/ContentResolver;->SLOW_THRESHOLD_MILLIS:I

    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 3820
    const/16 v0, 0x64

    return v0

    .line 3822
    :cond_0
    const-wide/16 v1, 0x64

    mul-long/2addr v1, p1

    int-to-long v3, v0

    div-long/2addr v1, v3

    long-to-int v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static whitelist semGetSyncStatusInfo(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SemSyncStatusInfo;
    .locals 4
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .line 3665
    const/4 v0, 0x0

    .line 3667
    .local v0, "syncInfo":Landroid/content/SyncStatusInfo;
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroid/content/IContentService;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 3670
    nop

    .line 3672
    if-eqz v0, :cond_0

    .line 3673
    new-instance v1, Landroid/content/SemSyncStatusInfo;

    invoke-direct {v1, v0}, Landroid/content/SemSyncStatusInfo;-><init>(Landroid/content/SyncStatusInfo;)V

    return-object v1

    .line 3675
    :cond_0
    return-object v2

    .line 3668
    :catch_0
    move-exception v1

    .line 3669
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "the ContentService should always be reachable"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static whitelist setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "syncable"    # I

    .line 3485
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/IContentService;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3488
    nop

    .line 3489
    return-void

    .line 3486
    :catch_0
    move-exception v0

    .line 3487
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "syncable"    # I
    .param p3, "userId"    # I

    .line 3498
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/content/IContentService;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3501
    nop

    .line 3502
    return-void

    .line 3499
    :catch_0
    move-exception v0

    .line 3500
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist setMasterSyncAutomatically(Z)V
    .locals 1
    .param p0, "sync"    # Z

    .line 3541
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 3542
    return-void
.end method

.method public static greylist-max-o setMasterSyncAutomaticallyAsUser(ZI)V
    .locals 4
    .param p0, "sync"    # Z
    .param p1, "userId"    # I

    .line 3551
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3552
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    .line 3553
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3555
    .local v0, "log":Ljava/lang/String;
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, p1, v0}, Landroid/content/IContentService;->semSetMasterSyncAutomaticallyAsUser(ZILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3558
    .end local v0    # "log":Ljava/lang/String;
    nop

    .line 3559
    return-void

    .line 3556
    :catch_0
    move-exception v0

    .line 3557
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .line 3297
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 3298
    return-void
.end method

.method public static greylist-max-o setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "userId"    # I

    .line 3307
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/content/IContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3310
    nop

    .line 3311
    return-void

    .line 3308
    :catch_0
    move-exception v0

    .line 3309
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o syncErrorStringToInt(Ljava/lang/String;)I
    .locals 3
    .param p0, "error"    # Ljava/lang/String;

    .line 641
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v1, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 642
    sget-object v2, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 641
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 646
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    if-eqz p0, :cond_2

    .line 648
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error parsing sync error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentResolver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o syncErrorToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "error"    # I

    .line 633
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    sget-object v0, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    array-length v1, v0

    if-le p0, v1, :cond_0

    goto :goto_0

    .line 636
    :cond_0
    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 634
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist translateDeprecatedDataPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 4276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mnt/content/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4277
    .local v0, "ssp":Ljava/lang/String;
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 4278
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedOpaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4277
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist translateDeprecatedDataPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 4283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/content/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist validateSyncExtrasBundle(Landroid/os/Bundle;)V
    .locals 5
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 3144
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3145
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3146
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_0

    goto :goto_0

    .line 3147
    :cond_0
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 3148
    :cond_1
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 3149
    :cond_2
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    goto :goto_0

    .line 3150
    :cond_3
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_4

    goto :goto_0

    .line 3151
    :cond_4
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_5

    goto :goto_0

    .line 3152
    :cond_5
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_6

    goto :goto_0

    .line 3153
    :cond_6
    instance-of v3, v2, Landroid/accounts/Account;

    if-eqz v3, :cond_7

    goto :goto_0

    .line 3154
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected value type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3155
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3161
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    .restart local p0    # "extras":Landroid/os/Bundle;
    :cond_8
    nop

    .line 3162
    return-void

    .line 3159
    :catch_0
    move-exception v0

    .line 3160
    .local v0, "exc":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "error unparceling Bundle"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3157
    .end local v0    # "exc":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 3158
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0
.end method

.method public static blacklist wrap(Landroid/content/ContentInterface;)Landroid/content/ContentResolver;
    .locals 2
    .param p0, "wrapped"    # Landroid/content/ContentInterface;

    .line 832
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    new-instance v0, Landroid/content/ContentResolver$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/content/ContentResolver$1;-><init>(Landroid/content/Context;Landroid/content/ContentInterface;)V

    return-object v0
.end method

.method public static whitelist wrap(Landroid/content/ContentProvider;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "wrapped"    # Landroid/content/ContentProvider;

    .line 863
    invoke-static {p0}, Landroid/content/ContentResolver;->wrap(Landroid/content/ContentInterface;)Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist wrap(Landroid/content/ContentProviderClient;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "wrapped"    # Landroid/content/ContentProviderClient;

    .line 871
    invoke-static {p0}, Landroid/content/ContentResolver;->wrap(Landroid/content/ContentInterface;)Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final whitelist acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2561
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2562
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 2563
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    .line 2564
    new-instance v1, Landroid/content/ContentProviderClient;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v0, v2, v3}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Ljava/lang/String;Z)V

    return-object v1

    .line 2566
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2582
    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2583
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 2584
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    .line 2585
    new-instance v1, Landroid/content/ContentProviderClient;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, p1, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Ljava/lang/String;Z)V

    return-object v1

    .line 2588
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected greylist acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 888
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public final greylist acquireExistingProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2499
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2500
    return-object v1

    .line 2502
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2503
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2504
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    return-object v1

    .line 2506
    :cond_1
    return-object v1
.end method

.method protected abstract greylist acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
.end method

.method public final greylist acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2479
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2480
    return-object v1

    .line 2482
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2483
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2484
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    return-object v1

    .line 2486
    :cond_1
    return-object v1
.end method

.method public final greylist acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 2514
    if-nez p1, :cond_0

    .line 2515
    const/4 v0, 0x0

    return-object v0

    .line 2517
    :cond_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2609
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2610
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 2611
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    .line 2612
    new-instance v1, Landroid/content/ContentProviderClient;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Ljava/lang/String;Z)V

    return-object v1

    .line 2615
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2636
    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2637
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 2638
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    .line 2639
    new-instance v1, Landroid/content/ContentProviderClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Ljava/lang/String;Z)V

    return-object v1

    .line 2642
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected abstract greylist acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
.end method

.method public final greylist-max-o acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2528
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2529
    return-object v1

    .line 2531
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2532
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2533
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    return-object v1

    .line 2535
    :cond_1
    return-object v1
.end method

.method public final greylist acquireUnstableProvider(Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 2543
    if-nez p1, :cond_0

    .line 2544
    const/4 v0, 0x0

    return-object v0

    .line 2546
    :cond_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o appNotRespondingViaProvider(Landroid/content/IContentProvider;)V
    .locals 2
    .param p1, "icp"    # Landroid/content/IContentProvider;

    .line 910
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "appNotRespondingViaProvider"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 2233
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v0, "authority"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2234
    const-string/jumbo v0, "operations"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2237
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/ContentInterface;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2240
    :cond_0
    nop

    .line 2242
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 2243
    .local v0, "provider":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_1

    .line 2247
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2249
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 2247
    return-object v1

    .line 2249
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 2250
    throw v1

    .line 2244
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown authority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2238
    .end local v0    # "provider":Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v0

    .line 2239
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 13
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 2266
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2267
    const-string/jumbo v0, "values"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2270
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return v0

    .line 2273
    :cond_0
    nop

    .line 2275
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 2276
    .local v1, "provider":Landroid/content/IContentProvider;
    if-eqz v1, :cond_1

    .line 2280
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2281
    .local v2, "startTime":J
    iget-object v4, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    invoke-interface {v1, v4, p1, p2}, Landroid/content/IContentProvider;->bulkInsert(Landroid/content/AttributionSource;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v4

    .line 2282
    .local v4, "rowsCreated":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    .line 2283
    .local v5, "durationMillis":J
    const-string v11, "bulkinsert"

    const/4 v12, 0x0

    move-object v7, p0

    move-wide v8, v5

    move-object v10, p1

    invoke-direct/range {v7 .. v12}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2284
    nop

    .line 2290
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2284
    return v4

    .line 2290
    .end local v2    # "startTime":J
    .end local v4    # "rowsCreated":I
    .end local v5    # "durationMillis":J
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2291
    throw v0

    .line 2285
    :catch_0
    move-exception v2

    .line 2288
    .local v2, "e":Landroid/os/RemoteException;
    nop

    .line 2290
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2288
    return v0

    .line 2277
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2271
    .end local v1    # "provider":Landroid/content/IContentProvider;
    :catch_1
    move-exception v1

    .line 2272
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method public final whitelist call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 2437
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 2443
    const-string v0, "authority"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2444
    const-string/jumbo v0, "method"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2447
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/ContentInterface;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 2450
    :cond_0
    nop

    .line 2452
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 2453
    .local v1, "provider":Landroid/content/IContentProvider;
    if-eqz v1, :cond_1

    .line 2457
    :try_start_1
    iget-object v2, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 2459
    .local v2, "res":Landroid/os/Bundle;
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2460
    nop

    .line 2466
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2460
    return-object v2

    .line 2466
    .end local v2    # "res":Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2467
    throw v0

    .line 2461
    :catch_0
    move-exception v2

    .line 2464
    .local v2, "e":Landroid/os/RemoteException;
    nop

    .line 2466
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2464
    return-object v0

    .line 2454
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown authority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2448
    .end local v1    # "provider":Landroid/content/IContentProvider;
    :catch_1
    move-exception v1

    .line 2449
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist cancelSync(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3173
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 3174
    return-void
.end method

.method public final whitelist canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p1, "url"    # Landroid/net/Uri;

    .line 1314
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1317
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 1320
    :cond_0
    nop

    .line 1322
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 1323
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_1

    .line 1324
    return-object v0

    .line 1328
    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/ContentResolver$UriResultListener;

    invoke-direct {v2, v0}, Landroid/content/ContentResolver$UriResultListener;-><init>(Landroid/content/ContentResolver$UriResultListener-IA;)V

    .line 1329
    .local v2, "resultListener":Landroid/content/ContentResolver$UriResultListener;
    iget-object v3, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    new-instance v4, Landroid/os/RemoteCallback;

    invoke-direct {v4, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v1, v3, p1, v4}, Landroid/content/IContentProvider;->canonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 1331
    sget v3, Landroid/content/ContentResolver;->CONTENT_PROVIDER_TIMEOUT_MILLIS:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver$UriResultListener;->waitForResult(J)V

    .line 1332
    iget-object v3, v2, Landroid/content/ContentResolver$UriResultListener;->exception:Ljava/lang/RuntimeException;

    if-nez v3, :cond_2

    .line 1335
    iget-object v3, v2, Landroid/content/ContentResolver$UriResultListener;->result:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1341
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1335
    return-object v3

    .line 1333
    :cond_2
    :try_start_2
    iget-object v3, v2, Landroid/content/ContentResolver$UriResultListener;->exception:Ljava/lang/RuntimeException;

    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "url":Landroid/net/Uri;
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1341
    .end local v2    # "resultListener":Landroid/content/ContentResolver$UriResultListener;
    .restart local v1    # "provider":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "url":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1342
    throw v0

    .line 1336
    :catch_0
    move-exception v2

    .line 1339
    .local v2, "e":Landroid/os/RemoteException;
    nop

    .line 1341
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1339
    return-object v0

    .line 1318
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1319
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public final blacklist canonicalizeOrElse(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1278
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1279
    .local v0, "res":Landroid/net/Uri;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method public whitelist checkUriPermission(Landroid/net/Uri;II)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1472
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1475
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->checkUriPermission(Landroid/net/Uri;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return v0

    .line 1478
    :cond_0
    nop

    .line 1480
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1481
    .local v1, "client":Landroid/content/ContentProviderClient;
    :try_start_2
    invoke-virtual {v1, p1, p2, p3}, Landroid/content/ContentProviderClient;->checkUriPermission(Landroid/net/Uri;II)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1482
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1481
    :cond_1
    return v2

    .line 1480
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "uid":I
    .end local p3    # "modeFlags":I
    :cond_2
    :goto_0
    throw v2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1482
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "uid":I
    .restart local p3    # "modeFlags":I
    :catch_0
    move-exception v1

    .line 1483
    .local v1, "e":Landroid/os/RemoteException;
    return v0

    .line 1476
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1477
    .restart local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public final whitelist delete(Landroid/net/Uri;Landroid/os/Bundle;)I
    .locals 12
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2326
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2329
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/ContentInterface;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return v0

    .line 2332
    :cond_0
    nop

    .line 2334
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 2335
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_1

    .line 2339
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2340
    .local v1, "startTime":J
    iget-object v3, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-interface {v0, v3, p1, p2}, Landroid/content/IContentProvider;->delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v3

    .line 2341
    .local v3, "rowsDeleted":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 2342
    .local v4, "durationMillis":J
    const-string v10, "delete"

    const/4 v11, 0x0

    move-object v6, p0

    move-wide v7, v4

    move-object v9, p1

    invoke-direct/range {v6 .. v11}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2343
    nop

    .line 2349
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2343
    return v3

    .line 2349
    .end local v1    # "startTime":J
    .end local v3    # "rowsDeleted":I
    .end local v4    # "durationMillis":J
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2350
    throw v1

    .line 2344
    :catch_0
    move-exception v1

    .line 2347
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    .line 2349
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2347
    return v2

    .line 2336
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2330
    .end local v0    # "provider":Landroid/content/IContentProvider;
    :catch_1
    move-exception v0

    .line 2331
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public final whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 2306
    invoke-static {p2, p3}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public blacklist getAttributionSource()Landroid/content/AttributionSource;
    .locals 1

    .line 3970
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAttributionTag()Ljava/lang/String;
    .locals 1

    .line 3965
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCache(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 3
    .param p1, "key"    # Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3799
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 3800
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 3799
    invoke-interface {v0, v1, p1, v2}, Landroid/content/IContentService;->getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;

    move-result-object v0

    .line 3801
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3802
    :cond_0
    return-object v0

    .line 3803
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 3804
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOutgoingPersistedUriPermissions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .line 3016
    :try_start_0
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IUriGrantsManager;->getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3017
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3016
    return-object v0

    .line 3018
    :catch_0
    move-exception v0

    .line 3019
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getOutgoingUriPermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .line 3026
    :try_start_0
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Landroid/app/IUriGrantsManager;->getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3027
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3026
    return-object v0

    .line 3028
    :catch_0
    move-exception v0

    .line 3029
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getPackageName()Ljava/lang/String;
    .locals 1

    .line 3960
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPersistedUriPermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .line 3000
    :try_start_0
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Landroid/app/IUriGrantsManager;->getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3001
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3000
    return-object v0

    .line 3002
    :catch_0
    move-exception v0

    .line 3003
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2112
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2114
    .local v0, "authority":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2118
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2121
    .local v1, "r":Landroid/content/res/Resources;
    nop

    .line 2123
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 2124
    .local v2, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    .line 2127
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 2129
    .local v3, "len":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 2131
    :try_start_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2134
    .local v4, "id":I
    goto :goto_0

    .line 2132
    .end local v4    # "id":I
    :catch_0
    move-exception v4

    .line 2133
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Single path segment is not a resource ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2135
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 2136
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2140
    .local v4, "id":I
    :goto_0
    if-eqz v4, :cond_1

    .line 2143
    new-instance v5, Landroid/content/ContentResolver$OpenResourceIdResult;

    invoke-direct {v5, p0}, Landroid/content/ContentResolver$OpenResourceIdResult;-><init>(Landroid/content/ContentResolver;)V

    .line 2144
    .local v5, "res":Landroid/content/ContentResolver$OpenResourceIdResult;
    iput-object v1, v5, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    .line 2145
    iput v4, v5, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    .line 2146
    return-object v5

    .line 2141
    .end local v5    # "res":Landroid/content/ContentResolver$OpenResourceIdResult;
    :cond_1
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No resource found for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2138
    .end local v4    # "id":I
    :cond_2
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More than two path segments: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2125
    .end local v3    # "len":I
    :cond_3
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2119
    .end local v1    # "r":Landroid/content/res/Resources;
    .end local v2    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    .line 2120
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package found for authority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2115
    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No authority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .line 1054
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1055
    const-string/jumbo v0, "mimeTypeFilter"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1058
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 1061
    :cond_0
    nop

    .line 1063
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 1064
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_1

    .line 1065
    return-object v0

    .line 1069
    :cond_1
    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1075
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1069
    return-object v0

    .line 1075
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1076
    throw v0

    .line 1070
    :catch_0
    move-exception v2

    .line 1073
    .local v2, "e":Landroid/os/RemoteException;
    nop

    .line 1075
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1073
    return-object v0

    .line 1059
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1060
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public greylist-max-o getTargetSdkVersion()I
    .locals 1

    .line 3810
    iget v0, p0, Landroid/content/ContentResolver;->mTargetSdkVersion:I

    return v0
.end method

.method public final whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p1, "url"    # Landroid/net/Uri;

    .line 922
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 925
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    return-object v0

    .line 928
    :cond_0
    nop

    .line 931
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireExistingProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 932
    .local v1, "provider":Landroid/content/IContentProvider;
    const-string v2, ")"

    const-string v3, " ("

    const-string v4, "Failed to get type for: "

    const-string v5, "ContentResolver"

    if-eqz v1, :cond_2

    .line 934
    :try_start_1
    new-instance v6, Landroid/content/ContentResolver$StringResultListener;

    invoke-direct {v6, v0}, Landroid/content/ContentResolver$StringResultListener;-><init>(Landroid/content/ContentResolver$StringResultListener-IA;)V

    .line 935
    .local v6, "resultListener":Landroid/content/ContentResolver$StringResultListener;
    new-instance v7, Landroid/os/RemoteCallback;

    invoke-direct {v7, v6}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v1, p1, v7}, Landroid/content/IContentProvider;->getTypeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 936
    sget v7, Landroid/content/ContentResolver;->CONTENT_PROVIDER_TIMEOUT_MILLIS:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver$StringResultListener;->waitForResult(J)V

    .line 937
    iget-object v7, v6, Landroid/content/ContentResolver$StringResultListener;->exception:Ljava/lang/RuntimeException;

    if-nez v7, :cond_1

    .line 940
    iget-object v7, v6, Landroid/content/ContentResolver$StringResultListener;->result:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 949
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 940
    return-object v7

    .line 938
    :cond_1
    :try_start_2
    iget-object v7, v6, Landroid/content/ContentResolver$StringResultListener;->exception:Ljava/lang/RuntimeException;

    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "url":Landroid/net/Uri;
    throw v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 949
    .end local v6    # "resultListener":Landroid/content/ContentResolver$StringResultListener;
    .restart local v1    # "provider":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "url":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 945
    :catch_0
    move-exception v6

    .line 946
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 947
    nop

    .line 949
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 947
    return-object v0

    .line 949
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 950
    throw v0

    .line 941
    :catch_1
    move-exception v2

    .line 944
    .local v2, "e":Landroid/os/RemoteException;
    nop

    .line 949
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 944
    return-object v0

    .line 953
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "content"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 954
    return-object v0

    .line 958
    :cond_3
    :try_start_4
    new-instance v6, Landroid/content/ContentResolver$StringResultListener;

    invoke-direct {v6, v0}, Landroid/content/ContentResolver$StringResultListener;-><init>(Landroid/content/ContentResolver$StringResultListener-IA;)V

    .line 959
    .local v6, "resultListener":Landroid/content/ContentResolver$StringResultListener;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    .line 960
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 961
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    move-result v9

    new-instance v10, Landroid/os/RemoteCallback;

    invoke-direct {v10, v6}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 959
    invoke-interface {v7, v8, v9, v10}, Landroid/app/IActivityManager;->getProviderMimeTypeAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V

    .line 963
    sget v7, Landroid/content/ContentResolver;->REMOTE_CONTENT_PROVIDER_TIMEOUT_MILLIS:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver$StringResultListener;->waitForResult(J)V

    .line 964
    iget-object v7, v6, Landroid/content/ContentResolver$StringResultListener;->exception:Ljava/lang/RuntimeException;

    if-nez v7, :cond_4

    .line 967
    iget-object v7, v6, Landroid/content/ContentResolver$StringResultListener;->result:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    return-object v7

    .line 965
    :cond_4
    iget-object v7, v6, Landroid/content/ContentResolver$StringResultListener;->exception:Ljava/lang/RuntimeException;

    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "url":Landroid/net/Uri;
    throw v7
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 971
    .end local v6    # "resultListener":Landroid/content/ContentResolver$StringResultListener;
    .restart local v1    # "provider":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "url":Landroid/net/Uri;
    :catch_2
    move-exception v6

    .line 972
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-object v0

    .line 968
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 970
    .restart local v2    # "e":Landroid/os/RemoteException;
    return-object v0

    .line 926
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_4
    move-exception v1

    .line 927
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public greylist-max-o getTypeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3999
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentResolver$MimeTypeInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 4009
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4010
    invoke-static {p1}, Lcom/android/internal/util/MimeIconUtils;->getTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getUserId()I
    .locals 1

    .line 3993
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    return v0
.end method

.method public final whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 2162
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 17
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2186
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string/jumbo v0, "url"

    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2189
    const/4 v11, 0x0

    :try_start_0
    iget-object v0, v7, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, v8, v9, v10}, Landroid/content/ContentInterface;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 2192
    :cond_0
    nop

    .line 2194
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v12

    .line 2195
    .local v12, "provider":Landroid/content/IContentProvider;
    if-eqz v12, :cond_1

    .line 2199
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v13, v0

    .line 2200
    .local v13, "startTime":J
    iget-object v0, v7, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-interface {v12, v0, v8, v9, v10}, Landroid/content/IContentProvider;->insert(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 2201
    .local v0, "createdRow":Landroid/net/Uri;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v15, v1, v13

    .line 2202
    .local v15, "durationMillis":J
    const-string v5, "insert"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2203
    nop

    .line 2209
    invoke-virtual {v7, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2203
    return-object v0

    .line 2209
    .end local v0    # "createdRow":Landroid/net/Uri;
    .end local v13    # "startTime":J
    .end local v15    # "durationMillis":J
    :catchall_0
    move-exception v0

    invoke-virtual {v7, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2210
    throw v0

    .line 2204
    :catch_0
    move-exception v0

    .line 2207
    .local v0, "e":Landroid/os/RemoteException;
    nop

    .line 2209
    invoke-virtual {v7, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2207
    return-object v11

    .line 2196
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2190
    .end local v12    # "provider":Landroid/content/IContentProvider;
    :catch_1
    move-exception v0

    .line 2191
    .restart local v0    # "e":Landroid/os/RemoteException;
    return-object v11
.end method

.method public whitelist loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4174
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/content/ContentInterface;Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 2764
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 2765
    return-void
.end method

.method public whitelist notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "flags"    # I

    .line 2827
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2828
    nop

    .line 2829
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 2832
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v1

    .line 2828
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;II)V

    .line 2833
    return-void
.end method

.method public greylist-max-o notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;II)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "flags"    # I
    .param p4, "userHandle"    # I

    .line 2909
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/content/ContentResolver;->notifyChange([Landroid/net/Uri;Landroid/database/ContentObserver;II)V

    .line 2910
    return-void
.end method

.method public whitelist notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "syncToNetwork"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2798
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    .line 2799
    return-void
.end method

.method public greylist-max-o notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "syncToNetwork"    # Z
    .param p4, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2903
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;II)V

    .line 2904
    return-void
.end method

.method public greylist notifyChange(Ljava/lang/Iterable;Landroid/database/ContentObserver;I)V
    .locals 2
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/database/ContentObserver;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2839
    .local p1, "uris":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/net/Uri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2840
    .local v0, "asCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/ContentResolver$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/content/ContentResolver$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 2841
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/ContentResolver;->notifyChange(Ljava/util/Collection;Landroid/database/ContentObserver;I)V

    .line 2842
    return-void
.end method

.method public whitelist notifyChange(Ljava/util/Collection;Landroid/database/ContentObserver;I)V
    .locals 6
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/database/ContentObserver;",
            "I)V"
        }
    .end annotation

    .line 2870
    .local p1, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    const-string/jumbo v0, "uris"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2873
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2874
    .local v0, "clusteredByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Landroid/net/Uri;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2875
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v3

    .line 2876
    .local v3, "userId":I
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2877
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez v4, :cond_0

    .line 2878
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 2879
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2881
    :cond_0
    invoke-static {v2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2882
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "userId":I
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    goto :goto_0

    .line 2884
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2885
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2886
    .local v2, "userId":I
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2887
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/Uri;

    invoke-virtual {p0, v4, p2, p3, v2}, Landroid/content/ContentResolver;->notifyChange([Landroid/net/Uri;Landroid/database/ContentObserver;II)V

    .line 2884
    .end local v2    # "userId":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2889
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public blacklist notifyChange([Landroid/net/Uri;Landroid/database/ContentObserver;II)V
    .locals 8
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "flags"    # I
    .param p4, "userHandle"    # I

    .line 2920
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    .line 2921
    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;

    move-result-object v1

    :goto_0
    move-object v2, v1

    if-eqz p2, :cond_1

    .line 2922
    invoke-virtual {p2}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v3, v1

    iget v6, p0, Landroid/content/ContentResolver;->mTargetSdkVersion:I

    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 2923
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2920
    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentService;->notifyChange([Landroid/net/Uri;Landroid/database/IContentObserver;ZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2926
    nop

    .line 2927
    return-void

    .line 2924
    :catch_0
    move-exception v0

    .line 2925
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1706
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/ContentInterface;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1709
    :cond_0
    nop

    .line 1711
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 1707
    :catch_0
    move-exception v0

    .line 1708
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1765
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1823
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string/jumbo v0, "uri"

    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1824
    const-string/jumbo v0, "mode"

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1827
    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/ContentInterface;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    return-object v0

    .line 1830
    :cond_0
    nop

    .line 1832
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 1833
    .local v6, "scheme":Ljava/lang/String;
    const-string v0, "android.resource"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v7, "r"

    if-eqz v0, :cond_2

    .line 1834
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1837
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v5

    .line 1839
    .local v5, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_1
    iget-object v0, v5, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v7, v5, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 1840
    :catch_0
    move-exception v0

    .line 1841
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    new-instance v7, Ljava/io/FileNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resource does not exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1835
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v5    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t write resources: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1843
    :cond_2
    const-string v0, "file"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1844
    new-instance v0, Ljava/io/File;

    .line 1845
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v5

    .line 1844
    invoke-static {v0, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1846
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v5, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    move-object v7, v5

    move-object v8, v0

    invoke-direct/range {v7 .. v12}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    return-object v5

    .line 1848
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1849
    const-string v0, "*/*"

    invoke-virtual {v1, v2, v0, v5, v4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 1851
    :cond_4
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v7

    .line 1852
    .local v7, "unstableProvider":Landroid/content/IContentProvider;
    const-string v8, "No content provider: "

    if-eqz v7, :cond_16

    .line 1855
    const/4 v9, 0x0

    .line 1856
    .local v9, "stableProvider":Landroid/content/IContentProvider;
    const/4 v10, 0x0

    .line 1859
    .local v10, "fd":Landroid/content/res/AssetFileDescriptor;
    const/4 v0, 0x0

    .line 1860
    .local v0, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz v4, :cond_5

    .line 1861
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 1862
    invoke-interface {v7}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v11

    move-object v0, v11

    .line 1863
    invoke-virtual {v4, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v11, v0

    goto :goto_0

    .line 1860
    :cond_5
    move-object v11, v0

    .line 1867
    .end local v0    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .local v11, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :goto_0
    :try_start_3
    iget-object v0, v1, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 1868
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 1867
    invoke-interface {v7, v0, v2, v3, v11}, Landroid/content/IContentProvider;->openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1870
    .end local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    .local v0, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_9

    .line 1872
    nop

    .line 1913
    if-eqz v4, :cond_6

    .line 1914
    invoke-virtual {v4, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1916
    :cond_6
    if-eqz v9, :cond_7

    .line 1917
    invoke-virtual {v1, v9}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1919
    :cond_7
    if-eqz v7, :cond_8

    .line 1920
    invoke-virtual {v1, v7}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1872
    :cond_8
    return-object v5

    .line 1889
    :cond_9
    move-object v10, v0

    goto :goto_1

    .line 1913
    .end local v0    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v11    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .restart local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 1910
    :catch_1
    move-exception v0

    goto/16 :goto_2

    .line 1906
    :catch_2
    move-exception v0

    goto/16 :goto_3

    .line 1874
    .restart local v11    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :catch_3
    move-exception v0

    .line 1878
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_4
    invoke-virtual {v1, v7}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 1879
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v12

    move-object v9, v12

    .line 1880
    if-eqz v9, :cond_12

    .line 1883
    iget-object v8, v1, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v8

    invoke-interface {v9, v8, v2, v3, v11}, Landroid/content/IContentProvider;->openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1885
    .end local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v8, :cond_d

    .line 1887
    nop

    .line 1913
    if-eqz v4, :cond_a

    .line 1914
    invoke-virtual {v4, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1916
    :cond_a
    if-eqz v9, :cond_b

    .line 1917
    invoke-virtual {v1, v9}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1919
    :cond_b
    if-eqz v7, :cond_c

    .line 1920
    invoke-virtual {v1, v7}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1887
    :cond_c
    return-object v5

    .line 1885
    :cond_d
    move-object v10, v8

    .line 1891
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_1
    if-nez v9, :cond_e

    .line 1892
    :try_start_5
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    move-object v9, v0

    .line 1894
    :cond_e
    invoke-virtual {v1, v7}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1895
    const/4 v7, 0x0

    .line 1896
    new-instance v13, Landroid/content/ContentResolver$ParcelFileDescriptorInner;

    .line 1897
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {v13, v1, v0, v9}, Landroid/content/ContentResolver$ParcelFileDescriptorInner;-><init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V

    .line 1901
    .local v13, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v9, 0x0

    .line 1903
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v14

    .line 1904
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v16

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1913
    if-eqz v4, :cond_f

    .line 1914
    invoke-virtual {v4, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1916
    :cond_f
    if-eqz v9, :cond_10

    .line 1917
    invoke-virtual {v1, v9}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1919
    :cond_10
    if-eqz v7, :cond_11

    .line 1920
    invoke-virtual {v1, v7}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1903
    :cond_11
    return-object v0

    .line 1881
    .end local v13    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "e":Landroid/os/DeadObjectException;
    :cond_12
    :try_start_6
    new-instance v12, Ljava/io/FileNotFoundException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v12, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v9    # "stableProvider":Landroid/content/IContentProvider;
    .end local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v12
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1911
    .end local v11    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "scheme":Ljava/lang/String;
    .restart local v7    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v9    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_2
    nop

    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v9    # "stableProvider":Landroid/content/IContentProvider;
    .end local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :try_start_7
    throw v0

    .line 1908
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v6    # "scheme":Ljava/lang/String;
    .restart local v7    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v9    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_3
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed opening content provider: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v9    # "stableProvider":Landroid/content/IContentProvider;
    .end local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1913
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v6    # "scheme":Ljava/lang/String;
    .restart local v7    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v9    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_4
    if-eqz v4, :cond_13

    .line 1914
    invoke-virtual {v4, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1916
    :cond_13
    if-eqz v9, :cond_14

    .line 1917
    invoke-virtual {v1, v9}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1919
    :cond_14
    if-eqz v7, :cond_15

    .line 1920
    invoke-virtual {v1, v7}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1922
    :cond_15
    throw v0

    .line 1853
    .end local v9    # "stableProvider":Landroid/content/IContentProvider;
    .end local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_16
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1828
    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "unstableProvider":Landroid/content/IContentProvider;
    :catch_4
    move-exception v0

    .line 1829
    .restart local v0    # "e":Landroid/os/RemoteException;
    return-object v5
.end method

.method public final whitelist openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1581
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/ContentInterface;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1584
    :cond_0
    nop

    .line 1586
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 1582
    :catch_0
    move-exception v0

    .line 1583
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1629
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1677
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 1680
    :cond_0
    nop

    .line 1682
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 1683
    .local v1, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v1, :cond_1

    .line 1684
    return-object v0

    .line 1687
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 1689
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 1695
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1697
    goto :goto_0

    .line 1696
    :catch_0
    move-exception v0

    .line 1699
    :goto_0
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v2, "Not a whole file"

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1678
    .end local v1    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v1

    .line 1679
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public final whitelist openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1508
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1509
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1510
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1513
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v1

    .line 1515
    .local v1, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_0
    iget-object v2, v1, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v3, v1, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1516
    .local v2, "stream":Ljava/io/InputStream;
    return-object v2

    .line 1517
    .end local v2    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 1518
    .local v2, "ex":Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1520
    .end local v1    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    .end local v2    # "ex":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1523
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1525
    :cond_1
    const-string/jumbo v1, "r"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 1527
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1528
    :catch_1
    move-exception v2

    .line 1529
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "Unable to create stream"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1527
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    return-object v2
.end method

.method public final whitelist openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1544
    const-string/jumbo v0, "w"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1569
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 1571
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1572
    :catch_0
    move-exception v0

    .line 1573
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "Unable to create stream"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1571
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public final whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1932
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v0, :cond_0

    .line 1933
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/ContentInterface;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1937
    :cond_0
    nop

    .line 1939
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 1935
    :catch_0
    move-exception v0

    .line 1936
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1972
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 25
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2009
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    const-string/jumbo v0, "uri"

    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2010
    const-string/jumbo v0, "mimeType"

    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2013
    const/4 v11, 0x0

    :try_start_0
    iget-object v0, v1, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v0, :cond_0

    move-object/from16 v12, p3

    :try_start_1
    invoke-interface {v0, v8, v9, v12, v10}, Landroid/content/ContentInterface;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 2014
    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 2016
    :cond_0
    move-object/from16 v12, p3

    .line 2018
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v13

    .line 2019
    .local v13, "unstableProvider":Landroid/content/IContentProvider;
    const-string v14, "No content provider: "

    if-eqz v13, :cond_12

    .line 2022
    const/4 v15, 0x0

    .line 2023
    .local v15, "stableProvider":Landroid/content/IContentProvider;
    const/16 v16, 0x0

    .line 2026
    .local v16, "fd":Landroid/content/res/AssetFileDescriptor;
    const/4 v0, 0x0

    .line 2027
    .local v0, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz v10, :cond_1

    .line 2028
    :try_start_2
    invoke-virtual/range {p4 .. p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 2029
    invoke-interface {v13}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v2

    move-object v0, v2

    .line 2030
    invoke-virtual {v10, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v17, v0

    goto :goto_0

    .line 2027
    :cond_1
    move-object/from16 v17, v0

    .line 2034
    .end local v0    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .local v17, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :goto_0
    :try_start_3
    iget-object v0, v1, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 2035
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    .line 2034
    move-object v2, v13

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, v17

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2037
    .end local v16    # "fd":Landroid/content/res/AssetFileDescriptor;
    .local v0, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_5

    .line 2039
    nop

    .line 2081
    if-eqz v10, :cond_2

    .line 2082
    invoke-virtual {v10, v11}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 2084
    :cond_2
    if-eqz v15, :cond_3

    .line 2085
    invoke-virtual {v1, v15}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2087
    :cond_3
    if-eqz v13, :cond_4

    .line 2088
    invoke-virtual {v1, v13}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 2039
    :cond_4
    return-object v11

    .line 2057
    :cond_5
    move-object/from16 v16, v0

    goto :goto_1

    .line 2081
    .end local v0    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v17    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .restart local v16    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 2078
    :catch_1
    move-exception v0

    goto/16 :goto_2

    .line 2074
    :catch_2
    move-exception v0

    goto/16 :goto_3

    .line 2041
    .restart local v17    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :catch_3
    move-exception v0

    .line 2045
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_4
    invoke-virtual {v1, v13}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 2046
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v2

    move-object v15, v2

    .line 2047
    if-eqz v15, :cond_e

    .line 2050
    iget-object v2, v1, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 2051
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    .line 2050
    move-object v2, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, v17

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2053
    .end local v16    # "fd":Landroid/content/res/AssetFileDescriptor;
    .local v2, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v2, :cond_9

    .line 2055
    nop

    .line 2081
    if-eqz v10, :cond_6

    .line 2082
    invoke-virtual {v10, v11}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 2084
    :cond_6
    if-eqz v15, :cond_7

    .line 2085
    invoke-virtual {v1, v15}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2087
    :cond_7
    if-eqz v13, :cond_8

    .line 2088
    invoke-virtual {v1, v13}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 2055
    :cond_8
    return-object v11

    .line 2053
    :cond_9
    move-object/from16 v16, v2

    .line 2059
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v16    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_1
    if-nez v15, :cond_a

    .line 2060
    :try_start_5
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    move-object v15, v0

    .line 2062
    :cond_a
    invoke-virtual {v1, v13}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 2063
    const/4 v13, 0x0

    .line 2064
    new-instance v0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;

    .line 2065
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-direct {v0, v1, v2, v15}, Landroid/content/ContentResolver$ParcelFileDescriptorInner;-><init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V

    move-object/from16 v19, v0

    .line 2069
    .local v19, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v15, 0x0

    .line 2071
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v20

    .line 2072
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v22

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetFileDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v24

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v24}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2081
    if-eqz v10, :cond_b

    .line 2082
    invoke-virtual {v10, v11}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 2084
    :cond_b
    if-eqz v15, :cond_c

    .line 2085
    invoke-virtual {v1, v15}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2087
    :cond_c
    if-eqz v13, :cond_d

    .line 2088
    invoke-virtual {v1, v13}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 2071
    :cond_d
    return-object v0

    .line 2048
    .end local v19    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "e":Landroid/os/DeadObjectException;
    :cond_e
    :try_start_6
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v13    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v15    # "stableProvider":Landroid/content/IContentProvider;
    .end local v16    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeType":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2079
    .end local v17    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v13    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v15    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v16    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeType":Ljava/lang/String;
    .restart local p3    # "opts":Landroid/os/Bundle;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_2
    nop

    .end local v13    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v15    # "stableProvider":Landroid/content/IContentProvider;
    .end local v16    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeType":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :try_start_7
    throw v0

    .line 2076
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v13    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v15    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v16    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeType":Ljava/lang/String;
    .restart local p3    # "opts":Landroid/os/Bundle;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_3
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed opening content provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v13    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v15    # "stableProvider":Landroid/content/IContentProvider;
    .end local v16    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeType":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2081
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v13    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v15    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v16    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeType":Ljava/lang/String;
    .restart local p3    # "opts":Landroid/os/Bundle;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_4
    if-eqz v10, :cond_f

    .line 2082
    invoke-virtual {v10, v11}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 2084
    :cond_f
    if-eqz v15, :cond_10

    .line 2085
    invoke-virtual {v1, v15}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2087
    :cond_10
    if-eqz v13, :cond_11

    .line 2088
    invoke-virtual {v1, v13}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 2090
    :cond_11
    throw v0

    .line 2020
    .end local v15    # "stableProvider":Landroid/content/IContentProvider;
    .end local v16    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_12
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2014
    .end local v13    # "unstableProvider":Landroid/content/IContentProvider;
    :catch_4
    move-exception v0

    move-object/from16 v12, p3

    .line 2015
    .restart local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    return-object v11
.end method

.method public whitelist putCache(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "key"    # Landroid/net/Uri;
    .param p2, "value"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3779
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 3780
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 3779
    invoke-interface {v0, v1, p1, p2, v2}, Landroid/content/IContentService;->putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3783
    nop

    .line 3784
    return-void

    .line 3781
    :catch_0
    move-exception v0

    .line 3782
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1200
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    const-string/jumbo v0, "uri"

    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1203
    const/4 v10, 0x0

    :try_start_0
    iget-object v0, v7, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_0

    .line 1204
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    :try_start_1
    invoke-interface {v0, v8, v11, v12, v9}, Landroid/content/ContentInterface;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 1206
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 1208
    :cond_0
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 1210
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v13

    .line 1211
    .local v13, "unstableProvider":Landroid/content/IContentProvider;
    if-nez v13, :cond_1

    .line 1212
    return-object v10

    .line 1214
    :cond_1
    const/4 v14, 0x0

    .line 1215
    .local v14, "stableProvider":Landroid/content/IContentProvider;
    const/4 v15, 0x0

    .line 1217
    .local v15, "qCursor":Landroid/database/Cursor;
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide/from16 v16, v0

    .line 1219
    .local v16, "startTime":J
    const/4 v0, 0x0

    .line 1220
    .local v0, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz v9, :cond_2

    .line 1221
    invoke-virtual/range {p4 .. p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 1222
    invoke-interface {v13}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    move-object v0, v1

    .line 1223
    invoke-virtual {v9, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v18, v0

    goto :goto_0

    .line 1220
    :cond_2
    move-object/from16 v18, v0

    .line 1226
    .end local v0    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .local v18, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :goto_0
    :try_start_3
    iget-object v0, v7, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    move-object v1, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, v18

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1239
    .end local v15    # "qCursor":Landroid/database/Cursor;
    .local v0, "qCursor":Landroid/database/Cursor;
    move-object v15, v0

    goto :goto_1

    .line 1228
    .end local v0    # "qCursor":Landroid/database/Cursor;
    .restart local v15    # "qCursor":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    .line 1232
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_4
    invoke-virtual {v7, v13}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 1233
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v14, v1

    .line 1234
    if-nez v14, :cond_7

    .line 1235
    nop

    .line 1261
    if-eqz v15, :cond_3

    .line 1262
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1264
    :cond_3
    if-eqz v9, :cond_4

    .line 1265
    invoke-virtual {v9, v10}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1267
    :cond_4
    if-eqz v13, :cond_5

    .line 1268
    invoke-virtual {v7, v13}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1270
    :cond_5
    if-eqz v14, :cond_6

    .line 1271
    invoke-virtual {v7, v14}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1235
    :cond_6
    return-object v10

    .line 1237
    :cond_7
    :try_start_5
    iget-object v1, v7, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    move-object v1, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, v18

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v15, v1

    .line 1240
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :goto_1
    if-nez v15, :cond_c

    .line 1241
    nop

    .line 1261
    if-eqz v15, :cond_8

    .line 1262
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1264
    :cond_8
    if-eqz v9, :cond_9

    .line 1265
    invoke-virtual {v9, v10}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1267
    :cond_9
    if-eqz v13, :cond_a

    .line 1268
    invoke-virtual {v7, v13}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1270
    :cond_a
    if-eqz v14, :cond_b

    .line 1271
    invoke-virtual {v7, v14}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1241
    :cond_b
    return-object v10

    .line 1245
    :cond_c
    :try_start_6
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    .line 1246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v19, v0, v16

    .line 1247
    .local v19, "durationMillis":J
    move-object/from16 v1, p0

    move-wide/from16 v2, v19

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver;->maybeLogQueryToEventLog(JLandroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1250
    if-eqz v14, :cond_d

    move-object v0, v14

    goto :goto_2

    .line 1251
    :cond_d
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    :goto_2
    nop

    .line 1252
    .local v0, "provider":Landroid/content/IContentProvider;
    new-instance v1, Landroid/content/ContentResolver$CursorWrapperInner;

    invoke-direct {v1, v7, v15, v0}, Landroid/content/ContentResolver$CursorWrapperInner;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Landroid/content/IContentProvider;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1253
    .local v1, "wrapper":Landroid/content/ContentResolver$CursorWrapperInner;
    const/4 v2, 0x0

    .line 1254
    .end local v14    # "stableProvider":Landroid/content/IContentProvider;
    .local v2, "stableProvider":Landroid/content/IContentProvider;
    const/4 v3, 0x0

    .line 1255
    .end local v15    # "qCursor":Landroid/database/Cursor;
    .local v3, "qCursor":Landroid/database/Cursor;
    nop

    .line 1261
    if-eqz v3, :cond_e

    .line 1262
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1264
    :cond_e
    if-eqz v9, :cond_f

    .line 1265
    invoke-virtual {v9, v10}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1267
    :cond_f
    if-eqz v13, :cond_10

    .line 1268
    invoke-virtual {v7, v13}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1270
    :cond_10
    if-eqz v2, :cond_11

    .line 1271
    invoke-virtual {v7, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1255
    :cond_11
    return-object v1

    .line 1261
    .end local v0    # "provider":Landroid/content/IContentProvider;
    .end local v1    # "wrapper":Landroid/content/ContentResolver$CursorWrapperInner;
    .end local v2    # "stableProvider":Landroid/content/IContentProvider;
    .end local v3    # "qCursor":Landroid/database/Cursor;
    .end local v16    # "startTime":J
    .end local v18    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .end local v19    # "durationMillis":J
    .restart local v14    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v15    # "qCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v15, :cond_12

    .line 1262
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1264
    :cond_12
    if-eqz v9, :cond_13

    .line 1265
    invoke-virtual {v9, v10}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1267
    :cond_13
    if-eqz v13, :cond_14

    .line 1268
    invoke-virtual {v7, v13}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1270
    :cond_14
    if-eqz v14, :cond_15

    .line 1271
    invoke-virtual {v7, v14}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1273
    :cond_15
    throw v0

    .line 1256
    :catch_2
    move-exception v0

    .line 1259
    .local v0, "e":Landroid/os/RemoteException;
    nop

    .line 1261
    if-eqz v15, :cond_16

    .line 1262
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1264
    :cond_16
    if-eqz v9, :cond_17

    .line 1265
    invoke-virtual {v9, v10}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1267
    :cond_17
    if-eqz v13, :cond_18

    .line 1268
    invoke-virtual {v7, v13}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1270
    :cond_18
    if-eqz v14, :cond_19

    .line 1271
    invoke-virtual {v7, v14}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1259
    :cond_19
    return-object v10

    .line 1206
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v13    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v14    # "stableProvider":Landroid/content/IContentProvider;
    .end local v15    # "qCursor":Landroid/database/Cursor;
    :catch_3
    move-exception v0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 1207
    .restart local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    return-object v10
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 1114
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1157
    invoke-static {p3, p4, p5}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1158
    .local v0, "queryArgs":Landroid/os/Bundle;
    invoke-virtual {p0, p1, p2, v0, p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1418
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1421
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return v0

    .line 1424
    :cond_0
    nop

    .line 1426
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 1427
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_1

    .line 1428
    return v0

    .line 1432
    :cond_1
    const/4 v2, 0x0

    .line 1433
    .local v2, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_2

    .line 1434
    :try_start_1
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 1435
    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v3

    move-object v2, v3

    .line 1436
    invoke-virtual {p3, v2}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1438
    :cond_2
    iget-object v3, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-interface {v1, v3, p1, p2, v2}, Landroid/content/IContentProvider;->refresh(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1445
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1438
    return v0

    .line 1445
    .end local v2    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1446
    throw v0

    .line 1440
    :catch_0
    move-exception v2

    .line 1443
    .local v2, "e":Landroid/os/RemoteException;
    nop

    .line 1445
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1443
    return v0

    .line 1422
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1423
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method public final whitelist registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;

    .line 2665
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2666
    const-string/jumbo v0, "observer"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2667
    nop

    .line 2668
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 2671
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v1

    .line 2667
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2672
    return-void
.end method

.method public final greylist registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendents"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;
    .param p4, "userHandle"    # I

    .line 2719
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    .line 2720
    invoke-virtual {p3}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;

    move-result-object v3

    iget v5, p0, Landroid/content/ContentResolver;->mTargetSdkVersion:I

    .line 2719
    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2723
    nop

    .line 2724
    return-void

    .line 2721
    :catch_0
    move-exception v0

    .line 2722
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final blacklist registerContentObserverAsUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2704
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2705
    const-string/jumbo v0, "observer"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2706
    const-string/jumbo v0, "userHandle"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2707
    nop

    .line 2708
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 2711
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 2707
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2712
    return-void
.end method

.method public whitelist releasePersistableUriPermission(Landroid/net/Uri;I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .line 2978
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2980
    :try_start_0
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    .line 2981
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 2982
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    move-result v3

    .line 2980
    invoke-interface {v0, v1, p2, v2, v3}, Landroid/app/IUriGrantsManager;->releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2985
    nop

    .line 2986
    return-void

    .line 2983
    :catch_0
    move-exception v0

    .line 2984
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public abstract greylist releaseProvider(Landroid/content/IContentProvider;)Z
.end method

.method public abstract greylist releaseUnstableProvider(Landroid/content/IContentProvider;)Z
.end method

.method public greylist-max-o resolveUserId(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 3988
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public whitelist startSync(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3055
    const/4 v0, 0x0

    .line 3056
    .local v0, "account":Landroid/accounts/Account;
    if-eqz p2, :cond_1

    .line 3057
    const-string v1, "account"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3058
    .local v2, "accountName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3060
    new-instance v3, Landroid/accounts/Account;

    const-string v4, "com.google"

    invoke-direct {v3, v2, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 3062
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3064
    .end local v2    # "accountName":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1, p2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3065
    return-void
.end method

.method public whitelist takePersistableUriPermission(Landroid/net/Uri;I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .line 2941
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2943
    :try_start_0
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    .line 2944
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 2945
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    move-result v3

    .line 2943
    invoke-interface {v0, v1, p2, v2, v3}, Landroid/app/IUriGrantsManager;->takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2948
    nop

    .line 2949
    return-void

    .line 2946
    :catch_0
    move-exception v0

    .line 2947
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist takePersistableUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 3
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "modeFlags"    # I

    .line 2957
    const-string/jumbo v0, "toPackage"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2958
    const-string/jumbo v0, "uri"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2960
    :try_start_0
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    .line 2961
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2962
    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    move-result v2

    .line 2960
    invoke-interface {v0, v1, p3, p1, v2}, Landroid/app/IUriGrantsManager;->takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2965
    nop

    .line 2966
    return-void

    .line 2963
    :catch_0
    move-exception v0

    .line 2964
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final whitelist uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p1, "url"    # Landroid/net/Uri;

    .line 1365
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1368
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 1371
    :cond_0
    nop

    .line 1373
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 1374
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_1

    .line 1375
    return-object v0

    .line 1379
    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/ContentResolver$UriResultListener;

    invoke-direct {v2, v0}, Landroid/content/ContentResolver$UriResultListener;-><init>(Landroid/content/ContentResolver$UriResultListener-IA;)V

    .line 1380
    .local v2, "resultListener":Landroid/content/ContentResolver$UriResultListener;
    iget-object v3, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    new-instance v4, Landroid/os/RemoteCallback;

    invoke-direct {v4, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v1, v3, p1, v4}, Landroid/content/IContentProvider;->uncanonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 1382
    sget v3, Landroid/content/ContentResolver;->CONTENT_PROVIDER_TIMEOUT_MILLIS:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver$UriResultListener;->waitForResult(J)V

    .line 1383
    iget-object v3, v2, Landroid/content/ContentResolver$UriResultListener;->exception:Ljava/lang/RuntimeException;

    if-nez v3, :cond_2

    .line 1386
    iget-object v3, v2, Landroid/content/ContentResolver$UriResultListener;->result:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1392
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1386
    return-object v3

    .line 1384
    :cond_2
    :try_start_2
    iget-object v3, v2, Landroid/content/ContentResolver$UriResultListener;->exception:Ljava/lang/RuntimeException;

    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "url":Landroid/net/Uri;
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1392
    .end local v2    # "resultListener":Landroid/content/ContentResolver$UriResultListener;
    .restart local v1    # "provider":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "url":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1393
    throw v0

    .line 1387
    :catch_0
    move-exception v2

    .line 1390
    .local v2, "e":Landroid/os/RemoteException;
    nop

    .line 1392
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1390
    return-object v0

    .line 1369
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1370
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public final whitelist unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 2733
    const-string/jumbo v0, "observer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2735
    :try_start_0
    invoke-virtual {p1}, Landroid/database/ContentObserver;->releaseContentObserver()Landroid/database/IContentObserver;

    move-result-object v0

    .line 2736
    .local v0, "contentObserver":Landroid/database/IContentObserver;
    if-eqz v0, :cond_0

    .line 2737
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/IContentService;->unregisterContentObserver(Landroid/database/IContentObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2742
    .end local v0    # "contentObserver":Landroid/database/IContentObserver;
    :cond_0
    nop

    .line 2743
    return-void

    .line 2740
    :catch_0
    move-exception v0

    .line 2741
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public abstract greylist unstableProviderDied(Landroid/content/IContentProvider;)V
.end method

.method public final whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2393
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2396
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/ContentInterface;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return v0

    .line 2399
    :cond_0
    nop

    .line 2401
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 2402
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_1

    .line 2406
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2407
    .local v1, "startTime":J
    iget-object v3, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-interface {v0, v3, p1, p2, p3}, Landroid/content/IContentProvider;->update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v3

    .line 2409
    .local v3, "rowsUpdated":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 2410
    .local v4, "durationMillis":J
    const-string/jumbo v10, "update"

    const/4 v11, 0x0

    move-object v6, p0

    move-wide v7, v4

    move-object v9, p1

    invoke-direct/range {v6 .. v11}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2411
    nop

    .line 2417
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2411
    return v3

    .line 2417
    .end local v1    # "startTime":J
    .end local v3    # "rowsUpdated":I
    .end local v4    # "durationMillis":J
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2418
    throw v1

    .line 2412
    :catch_0
    move-exception v1

    .line 2415
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    .line 2417
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2415
    return v2

    .line 2403
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2397
    .end local v0    # "provider":Landroid/content/IContentProvider;
    :catch_1
    move-exception v0

    .line 2398
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public final whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 2369
    invoke-static {p3, p4}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

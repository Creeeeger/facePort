.class public Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;
.super Landroid/content/ContentProvider;
.source "AppListCacheProvider.java"


# static fields
.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final SETTING_PACKAGE_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 60
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.settings.applist"

    const-string v2, "app_list"

    const/4 v3, 0x0

    .line 63
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "app_list/*"

    const/4 v3, 0x1

    .line 64
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 52
    const-class v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->TAG:Ljava/lang/String;

    const-string v0, "com.android.settings"

    .line 67
    iput-object v0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->SETTING_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 273
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 269
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method private hasWritePermission()Z
    .locals 1

    .line 265
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.settings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 1

    .line 258
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 260
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 193
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 194
    new-array v4, v3, [Landroid/content/ContentProviderResult;

    .line 196
    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 198
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentProviderOperation;

    invoke-virtual {v6, p0, v4, v5}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 208
    iget-object p0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyBatch end. operations : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,Took "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 202
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance p0, Landroid/content/OperationApplicationException;

    invoke-direct {p0, p1}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/Throwable;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :goto_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 206
    throw p0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->hasWritePermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 159
    iget-object p0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->TAG:Ljava/lang/String;

    const-string p1, "External packages are not allowed to bulkInsert"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 163
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->TAG:Ljava/lang/String;

    const-string v4, "bulkInsert start"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 169
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 170
    array-length v4, p2

    move v5, v1

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v6, p2, v1

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "appinfo"

    const-string v9, ""

    invoke-virtual {v7, v8, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-lez v5, :cond_3

    .line 181
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->notifyChange(Landroid/net/Uri;)V

    .line 184
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bulkInsert end. Took "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catchall_0
    move-exception p0

    .line 177
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 178
    throw p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 109
    iget-object p0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->TAG:Ljava/lang/String;

    const-string p1, "call() - method is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    .line 114
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "get_cached_locale"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 124
    iget-object p0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call() - Unsupported method : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    .line 116
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "AppListPreference"

    .line 117
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "CachedLocale"

    const-string p2, ""

    .line 118
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 119
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "cached_locale"

    .line 120
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->hasWritePermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 81
    iget-object p0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->TAG:Ljava/lang/String;

    const-string p1, "External packages are not allowed to delete"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 86
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const-string v2, "appinfo"

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    new-array v0, v3, [Ljava/lang/String;

    aput-object p2, v0, v1

    const-string p2, "package_name =?"

    invoke-virtual {p3, v2, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 88
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, v2, p3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    :goto_0
    if-lez p2, :cond_3

    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_3
    return p2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 134
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->hasWritePermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 140
    iget-object p0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->TAG:Ljava/lang/String;

    const-string p1, "External packages are not allowed to insert"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string v0, "package_name"

    .line 144
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "appinfo"

    const-string v4, "package_name =?"

    invoke-virtual {v2, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_1

    .line 150
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->notifyChange(Landroid/net/Uri;)V

    .line 151
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 220
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheManager;->isValidCache(Landroid/content/Context;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 221
    iget-object p0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->TAG:Ljava/lang/String;

    const-string p1, "query() - Invalid cache"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    .line 227
    :cond_0
    sget-object p2, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p4, 0x1

    if-eq p2, p4, :cond_1

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    new-array v4, p4, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v4, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "appinfo"

    const-string v3, "package_name =?"

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_0

    .line 229
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "appinfo"

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    :goto_0
    return-object p3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->hasWritePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object p0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->TAG:Ljava/lang/String;

    const-string p1, "External packages are not allowed to update"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "appinfo"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_1

    .line 251
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_1
    return p2
.end method

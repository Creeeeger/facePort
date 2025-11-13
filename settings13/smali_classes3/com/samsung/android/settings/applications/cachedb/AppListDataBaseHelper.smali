.class public Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AppListDataBaseHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sSingleton:Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "applist.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 55
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createDb(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE appinfo(package_name, app_title, last_updated)"

    .line 90
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private dropDb(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS appinfo"

    .line 94
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;
    .locals 2

    const-class v0, Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;->sSingleton:Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;->sSingleton:Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;

    .line 51
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;->sSingleton:Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private reConstruct(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 76
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p1, :cond_0

    .line 78
    sget-object p0, Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;->TAG:Ljava/lang/String;

    const-string p1, "reConstruct() failed - sqLiteDatabase is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 81
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;->dropDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;->createDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 83
    sget-object p0, Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reConstruct() took "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 61
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;->createDb(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/applications/cachedb/AppListDataBaseHelper;->reConstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

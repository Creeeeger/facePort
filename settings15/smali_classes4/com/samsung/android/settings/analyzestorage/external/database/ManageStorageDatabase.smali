.class public abstract Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;
.super Landroidx/room/RoomDatabase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static volatile sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;->sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;->sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;

    if-nez v1, :cond_0

    const-string v1, "ManageStorageDatabase"

    const-string v2, "ManageStorageDatabase ] create database"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;

    const-string v2, "manage_storage.db"

    invoke-static {p0, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    iput-boolean v1, p0, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries:Z

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;

    sput-object p0, Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;->sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;->sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;

    return-object p0
.end method


# virtual methods
.method public abstract unusedAppBnRInfoDao()Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;
.end method

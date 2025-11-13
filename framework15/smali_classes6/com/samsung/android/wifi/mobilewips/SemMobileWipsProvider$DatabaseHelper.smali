.class Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SemMobileWipsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "MobileWIPS.db"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private blacklist addTable(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;->-$$Nest$sfgetmDBCreationSQL()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;->execSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "createTable"

    const-string v1, "MobileWipsFrameworkProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;->addTable(Landroid/database/sqlite/SQLiteDatabase;I)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;->addTable(Landroid/database/sqlite/SQLiteDatabase;I)V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;->addTable(Landroid/database/sqlite/SQLiteDatabase;I)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t create table in downloads database "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist delTable(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;->-$$Nest$sfgetmDBDeleteSQL()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;->execSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "dropTable"

    const-string v1, "MobileWipsFrameworkProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;->delTable(Landroid/database/sqlite/SQLiteDatabase;I)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;->delTable(Landroid/database/sqlite/SQLiteDatabase;I)V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;->delTable(Landroid/database/sqlite/SQLiteDatabase;I)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t drop table in downloads database "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist execSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "MobileWipsFrameworkProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t exec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public blacklist dropWhitelistTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "drop Allow List Table"

    const-string v1, "MobileWipsFrameworkProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;->delTable(Landroid/database/sqlite/SQLiteDatabase;I)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t drop table in downloads database "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public whitelist onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "MobileWipsFrameworkProvider"

    const-string v1, "populating new database"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public whitelist onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/16 v0, 0xa

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/16 v0, 0x9

    if-ge p2, v0, :cond_1

    const-string v0, "DROP TABLE IF EXISTS MobileWIPS"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;->execSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading downloads database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", which will destroy all old data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileWipsFrameworkProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class public final Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static sCardDatabaseHelper:Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;


# direct methods
.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;
    .locals 5

    const-class v0, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->sCardDatabaseHelper:Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "homepage_cards.db"

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v1, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->sCardDatabaseHelper:Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->sCardDatabaseHelper:Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE cards(name TEXT NOT NULL PRIMARY KEY, type INTEGER NOT NULL, score DOUBLE NOT NULL, slice_uri TEXT, category INTEGER DEFAULT 0, package_name TEXT NOT NULL, app_version INTEGER NOT NULL, dismissed_timestamp INTEGER);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    if-ge p2, p3, :cond_0

    const-string p0, "Reconstructing DB from "

    const-string v0, " to "

    const-string v1, "CardDatabaseHelper"

    invoke-static {p0, v0, p2, p3, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS cards"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE cards(name TEXT NOT NULL PRIMARY KEY, type INTEGER NOT NULL, score DOUBLE NOT NULL, slice_uri TEXT, category INTEGER DEFAULT 0, package_name TEXT NOT NULL, app_version INTEGER NOT NULL, dismissed_timestamp INTEGER);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

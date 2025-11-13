.class Lcom/samsung/android/settings/share/data/ShareDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ShareDBHelper.java"


# static fields
.field private static IS_UPGRADED:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public makeNewIfNotExist(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS all_apps (id INTEGER PRIMARY KEY AUTOINCREMENT, last_locale TEXT, package_name TEXT, activity_name TEXT, userId INTEGER, main_label TEXT, sub_label TEXT)"

    .line 48
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS ranked_apps (id INTEGER PRIMARY KEY AUTOINCREMENT, package_name TEXT, activity_name TEXT, userId INTEGER, label TEXT)"

    .line 42
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS all_apps (id INTEGER PRIMARY KEY AUTOINCREMENT, last_locale TEXT, package_name TEXT, activity_name TEXT, userId INTEGER, main_label TEXT, sub_label TEXT)"

    .line 44
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p2, 0x1

    .line 59
    sput-boolean p2, Lcom/samsung/android/settings/share/data/ShareDBHelper;->IS_UPGRADED:Z

    const-string p2, "DROP TABLE IF EXISTS ranked_apps"

    .line 60
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS all_apps"

    .line 62
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/data/ShareDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

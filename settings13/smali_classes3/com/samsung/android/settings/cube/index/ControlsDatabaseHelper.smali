.class public Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ControlsDatabaseHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sSingleton:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "controls_index.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 124
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 125
    iput-object p1, p0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private clearIndexedHistory()V
    .locals 2

    .line 192
    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v0, "controls_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 193
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 194
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 195
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private createDatabases(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE VIRTUAL TABLE controls_index USING fts4(key, title, summary, screen_title, keywords, icon_uri, fragment, controller, control_type, recoverable, restore_key);"

    .line 183
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 184
    sget-object p0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->TAG:Ljava/lang/String;

    const-string p1, "Created databases"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS controls_index"

    .line 188
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;
    .locals 2

    const-class v0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->sSingleton:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->sSingleton:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    .line 120
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->sSingleton:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isBuildIndexed()Z
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "controls_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->getBuildTag()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private isLocaleIndexed()Z
    .locals 2

    .line 219
    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v0, "controls_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 221
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private setBuildIndexed()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "controls_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->getBuildTag()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 202
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setLocaleIndexed()V
    .locals 2

    .line 206
    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v0, "controls_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 207
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 208
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 209
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method getBuildTag()Ljava/lang/String;
    .locals 0

    .line 226
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object p0
.end method

.method public isControlDataIndexed()Z
    .locals 1

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->isBuildIndexed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->isLocaleIndexed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->createDatabases(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 144
    sget-object v0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reconstructing DB from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 136
    sget-object v0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reconstructing DB from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "controls_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->createDatabases(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public setIndexedState()V
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->clearIndexedHistory()V

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->setBuildIndexed()V

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->setLocaleIndexed()V

    return-void
.end method

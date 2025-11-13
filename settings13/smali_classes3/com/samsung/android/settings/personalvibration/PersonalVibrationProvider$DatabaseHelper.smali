.class Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PersonalVibrationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "personalvibration.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 108
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "PersonalVibrationProvider#DatabaseHelper"

    .line 109
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 111
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method private createDatabase(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    const-string p0, "PersonalVibrationProvider#DatabaseHelper.createDatabase"

    .line 154
    invoke-static {p0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS registerinfo (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , vibration_name VARCHAR NOT NULL , vibration_pattern INTEGER NOT NULL ,vibration_type INTEGER NOT NULL , custom_data VARCHAR ,is_custom INTEGER)"

    .line 155
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS notification (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , vibration_name VARCHAR NOT NULL , vibration_pattern INTEGER NOT NULL ,vibration_type INTEGER NOT NULL , custom_data VARCHAR ,is_custom INTEGER)"

    .line 163
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p0, "CREATE TABLE IF NOT EXISTS customindex (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , vibration_type VARCHAR NOT NULL , pattern_index INTEGER NOT NULL)"

    .line 172
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method private initDatabase(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    const-string v0, "PersonalVibrationProvider#DatabaseHelper.initDatabase"

    .line 194
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->initializeRingtoneTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 196
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->initializeNotificationTable(Landroid/database/sqlite/SQLiteDatabase;)V

    if-nez p2, :cond_0

    .line 198
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->initializeCustomTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method private initializeCustomTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const-string p0, "customindex"

    const-string v0, "pattern_index"

    const-string v1, "vibration_type"

    const-string v2, "_id"

    .line 316
    sget-boolean v3, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    if-eqz v3, :cond_0

    .line 318
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    .line 319
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "ringtone"

    .line 320
    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x186a1

    .line 321
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v4, 0x0

    .line 322
    invoke-virtual {p1, p0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v5, 0x1

    .line 323
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "notification"

    .line 324
    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x1adb1

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    invoke-virtual {p1, p0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initializeCustomTable "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonalVibrationProvider"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private initializeNotificationTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    const-string v0, "PersonalVibrationProvider"

    .line 276
    sget-boolean v1, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    if-eqz v1, :cond_3

    .line 277
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 280
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeNotificationTable size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$sfgetmNotiPatternData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 281
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$sfgetmNotiPatternData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 282
    invoke-static {}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$sfgetmNotiPatternData()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;

    .line 283
    iget v4, v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;->mPatternIndex:I

    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const v5, 0xc3a4

    const-string v6, "vibration_name"

    if-ne v4, v5, :cond_0

    .line 285
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->sec_vib_picker_silent_pattern:I

    .line 286
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 288
    :cond_0
    iget-object v4, v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v4, "vibration_pattern"

    .line 290
    iget v5, v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;->mPatternIndex:I

    .line 291
    invoke-static {v5}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 290
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "vibration_type"

    .line 292
    iget v5, v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;->mVibrationType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "_id"

    add-int/lit8 v2, v2, 0x1

    .line 293
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "custom_data"

    .line 294
    iget-object v5, v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;->mCustomData:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_custom"

    .line 295
    iget v3, v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;->mIsCustom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "notification"

    const/4 v4, 0x0

    .line 296
    invoke-virtual {p1, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeNotificationTable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_notification_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://com.android.settings.personalvibration.PersonalVibrationProvider/notification/3"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 311
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->setDefaultNotificationPattern(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    return-void
.end method

.method private initializeRingtoneTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    const-string v0, "PersonalVibrationProvider"

    .line 245
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 248
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeRingtoneTable size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$sfgetmRingPatternData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 249
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$sfgetmRingPatternData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 250
    invoke-static {}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$sfgetmRingPatternData()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;

    .line 251
    iget v4, v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;->mPatternIndex:I

    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const v5, 0xc3a4

    const-string v6, "vibration_name"

    if-ne v4, v5, :cond_0

    .line 253
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->sec_vib_picker_silent_pattern:I

    .line 254
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 253
    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 256
    :cond_0
    iget-object v4, v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v4, "vibration_pattern"

    .line 258
    iget v5, v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;->mPatternIndex:I

    .line 259
    invoke-static {v5}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 258
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "vibration_type"

    .line 260
    iget v5, v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;->mVibrationType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "_id"

    add-int/lit8 v2, v2, 0x1

    .line 261
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "custom_data"

    .line 262
    iget-object v5, v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;->mCustomData:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_custom"

    .line 263
    iget v3, v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;->mIsCustom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "registerinfo"

    const/4 v4, 0x0

    .line 264
    invoke-virtual {p1, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeRingtoneTable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    if-eqz v0, :cond_2

    .line 271
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->setDefaultRingtonePattern(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    return-void
.end method

.method private queryDbId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 9

    const-string p0, "registerinfo"

    .line 403
    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    const-string v4, "vibration_pattern=?"

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 407
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v5, v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 408
    :try_start_0
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 410
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "_id"

    .line 411
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const-string p2, "PersonalVibrationProvider"

    .line 412
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "queryDbId() retId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 408
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2

    :cond_1
    :goto_2
    if-eqz p1, :cond_2

    .line 414
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 415
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    return p0
.end method

.method private querySepIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 8

    const-string p0, "registerinfo"

    .line 422
    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0xc373

    goto :goto_0

    :cond_0
    const p0, 0xc372

    :goto_0
    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 426
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    .line 427
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 429
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "vibration_pattern"

    .line 430
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const-string p2, "PersonalVibrationProvider"

    .line 431
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "querySepIndex() retSepIndex="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 427
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2

    :cond_1
    :goto_2
    if-eqz p1, :cond_2

    .line 433
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 434
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    return p0
.end method

.method private recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    const-string v0, "PersonalVibrationProvider#DatabaseHelper.recreateDatabase"

    .line 182
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS registerinfo"

    .line 183
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS notification"

    .line 184
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string v0, "DROP TABLE IF EXISTS customindex"

    .line 186
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 190
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method private setDefaultNotificationPattern(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 384
    iget-object v0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_vibration_sep_index"

    const/4 v2, 0x0

    .line 385
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultNotificationPattern old sepIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PersonalVibrationProvider"

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "content://com.android.settings.personalvibration.PersonalVibrationProvider/notification/"

    if-eqz v2, :cond_0

    const-string v5, "notification"

    .line 391
    invoke-direct {p0, p1, v5, v2}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->queryDbId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result p0

    .line 392
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v2, 0xc372

    const/4 p0, 0x3

    .line 395
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 397
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultNotificationPattern sepIndex="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uri="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "default_notification_vibration_pattern"

    .line 398
    invoke-static {v0, p1, p0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 399
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setDefaultRingtonePattern(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ringtone_vibration_sep_index"

    const/4 v2, 0x0

    .line 345
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "default_vibration_pattern"

    const-string v5, "registerinfo"

    const-string v6, "content://com.android.settings.personalvibration.PersonalVibrationProvider/registerinfo/"

    if-eqz v3, :cond_0

    .line 350
    invoke-direct {p0, p1, v5, v3}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->queryDbId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result p0

    .line 351
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 353
    :cond_0
    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    .line 357
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const/16 v8, 0x2f

    .line 358
    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 361
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 364
    :cond_1
    :goto_0
    invoke-static {v2, v7}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->getSepIndexByLegacyId(II)I

    move-result v2

    .line 363
    invoke-direct {p0, p1, v5, v2}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->queryDbId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v2

    .line 365
    invoke-direct {p0, p1, v5, v2}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->querySepIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v3

    .line 366
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 368
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultRingtonePattern sepIndex="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uri="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PersonalVibrationProvider"

    invoke-static {v2, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {v0, v4, p0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 370
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public backupCustomData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 19

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v0, 0x2

    if-ge v2, v0, :cond_5

    const-string v0, "registerinfo"

    if-nez v2, :cond_0

    .line 210
    invoke-static {}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$sfgetmRingPatternData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    move-object v12, v0

    goto :goto_1

    .line 213
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$sfgetmNotiPatternData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const-string v4, "notification"

    move-object v12, v4

    :goto_1
    const/4 v6, 0x0

    :try_start_0
    const-string v7, "is_custom=?"

    const-string v4, "1"

    .line 217
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object v5, v12

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    .line 219
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "PersonalVibrationProvider"

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "custom db count("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v1

    :cond_1
    const-string v6, "vibration_name"

    .line 223
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v6, "vibration_pattern"

    .line 224
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "vibration_type"

    .line 225
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const-string v7, "custom_data"

    .line 226
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v7, "is_custom"

    .line 227
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 229
    new-instance v7, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;

    const v8, 0xc368

    sub-int v15, v6, v8

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    .line 231
    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 232
    invoke-static {}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$sfgetmRingPatternData()Ljava/util/HashMap;

    move-result-object v6

    add-int/lit8 v8, v5, 0x1

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 234
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$sfgetmNotiPatternData()Ljava/util/HashMap;

    move-result-object v6

    add-int/lit8 v8, v5, 0x1

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move v5, v8

    .line 236
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 217
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v3

    :cond_3
    :goto_4
    if-eqz v4, :cond_4

    .line 238
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "PersonalVibrationProvider#DatabaseHelper.onCreate"

    .line 121
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 124
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 116
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string v0, "PersonalVibrationProvider#DatabaseHelper.onUpgrade"

    .line 129
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", which will destroy all old data"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "PersonalVibrationProvider"

    invoke-static {v0, p3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    if-eqz p2, :cond_1

    .line 146
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->backupCustomData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 148
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 150
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

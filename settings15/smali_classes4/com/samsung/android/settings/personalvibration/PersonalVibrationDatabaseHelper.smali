.class public final Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final mNotiPatternData:Ljava/util/HashMap;

.field public static final mRingPatternData:Ljava/util/HashMap;

.field public static mSupportedColorful:Z

.field public static mSupportedLive:Z

.field public static sSingleton:Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSoundDB:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mRingPatternData:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mNotiPatternData:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mSupportedColorful:Z

    sput-boolean v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mSupportedLive:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "personalvibration.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper;->supportsColorfulPattern(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mSupportedColorful:Z

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper;->supportsLivePattern(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mSupportedLive:Z

    new-array p1, v2, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mSoundDB:[Ljava/lang/String;

    new-instance p1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$VibSettingsObserver;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$VibSettingsObserver;-><init>(Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;
    .locals 2

    const-class v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->sSingleton:Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->sSingleton:Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->sSingleton:Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static queryDbId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 10

    const-string/jumbo v0, "queryDbId() retId="

    const-string/jumbo v1, "registerinfo"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    const-string/jumbo v5, "vibration_pattern=?"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    :try_start_0
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "_id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string p1, "PersonalVibrationDatabaseHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_4
    return v1
.end method


# virtual methods
.method public final initDatabase(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    const-string v11, "is_custom"

    const-string v12, "custom_data"

    const-string/jumbo v13, "vibration_name"

    const-string/jumbo v14, "vibration_pattern"

    const-string v15, "_id"

    const-string/jumbo v9, "vibration_type"

    const-string v8, "PersonalVibrationDatabaseHelper"

    sget-object v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mRingPatternData:Ljava/util/HashMap;

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v0}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->makePatternData(ILjava/util/HashMap;)V

    sget-object v2, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mNotiPatternData:Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v2}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->makePatternData(ILjava/util/HashMap;)V

    const-string/jumbo v2, "registerinfo"

    const-string v3, "initializeRingtoneTable size="

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const v6, 0xc3a4

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mRingPatternData:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;

    if-eqz v3, :cond_1

    iget v7, v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;->mPatternIndex:I

    invoke-static {v7}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v5

    if-ne v5, v6, :cond_0

    iget-object v5, v1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const v6, 0x7f14283d

    :try_start_1
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_1
    const/4 v7, 0x0

    goto :goto_4

    :catch_1
    move-exception v0

    const v6, 0x7f14283d

    goto :goto_1

    :cond_0
    const v6, 0x7f14283d

    iget-object v5, v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {v7}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v5, v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;->mVibrationType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;->mCustomData:Ljava/lang/String;

    invoke-virtual {v4, v12, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;->mIsCustom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v10, v2, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_1
    const v6, 0x7f14283d

    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    const v6, 0xc3a4

    goto :goto_0

    :cond_2
    const v6, 0x7f14283d

    const/4 v7, 0x0

    goto :goto_5

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initializeRingtoneTable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v8}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_5
    sget-boolean v0, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    const-string v5, ", uri="

    const v18, 0xc372

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v3, "ringtone_vibration_sep_index"

    const/4 v7, 0x0

    invoke-static {v4, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move-object/from16 v17, v9

    const-string v9, "default_vibration_pattern"

    move-object/from16 v19, v8

    const-string v8, "content://com.android.settings.personalvibration.PersonalVibrationProvider/registerinfo/"

    if-eqz v0, :cond_3

    invoke-static {v10, v2, v0}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->queryDbId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v28, v3

    move-object/from16 v30, v4

    move-object/from16 v29, v5

    move-object/from16 v10, v17

    move-object/from16 v4, v19

    const/16 v16, 0x1

    move-object/from16 v17, v11

    move-object v11, v9

    goto/16 :goto_12

    :cond_3
    invoke-static {v4, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    const/16 v6, 0x2f

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    const/16 v16, 0x1

    add-int/lit8 v6, v6, 0x1

    :try_start_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    const/16 v16, 0x1

    goto :goto_6

    :cond_4
    const/16 v16, 0x1

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_7
    move/from16 v0, v16

    :goto_8
    sget-object v6, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper;->sPatternLookupTable:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move/from16 v0, v16

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper$PatternLookupInfo;

    iget v0, v0, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper$PatternLookupInfo;->mSepIndex:I

    invoke-static {v10, v2, v0}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->queryDbId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v21

    const-string/jumbo v0, "querySepIndex() retSepIndex="

    const-string/jumbo v6, "registerinfo"

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0xc373

    move/from16 v22, v2

    goto :goto_9

    :cond_6
    move/from16 v22, v18

    :goto_9
    const-string v7, "_id=?"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v2, p1

    move-object/from16 v28, v3

    move-object v3, v6

    move-object v6, v4

    move-object/from16 v4, v26

    move-object/from16 v29, v5

    move-object v5, v7

    move-object/from16 v30, v6

    const v7, 0xc3a4

    move-object/from16 v6, v23

    move-object/from16 v7, v27

    move-object/from16 v32, v8

    move-object/from16 v31, v19

    move-object/from16 v8, v24

    move-object/from16 v10, v17

    move-object/from16 v17, v11

    move-object v11, v9

    move-object/from16 v9, v25

    :try_start_5
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    if-eqz v2, :cond_7

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v4, v31

    :try_start_8
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move/from16 v22, v3

    goto :goto_e

    :catchall_0
    move-exception v0

    :goto_a
    move/from16 v22, v3

    :goto_b
    move-object v3, v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object/from16 v4, v31

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object/from16 v4, v31

    goto :goto_b

    :cond_7
    move-object/from16 v4, v31

    goto :goto_e

    :goto_c
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_a
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v3

    :catch_5
    move-exception v0

    goto :goto_10

    :goto_e
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_8
    :goto_f
    move/from16 v0, v22

    goto :goto_11

    :catch_6
    move-exception v0

    move-object/from16 v4, v31

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :goto_11
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v32

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setDefaultRingtonePattern sepIndex="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v29

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v30

    invoke-static {v3, v11, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v2, v28

    invoke-static {v3, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_13

    :cond_9
    move-object v4, v8

    move-object v10, v9

    move-object/from16 v17, v11

    const/16 v16, 0x1

    :goto_13
    const-string v0, "initializeNotificationTable size="

    sget-boolean v2, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    const-string/jumbo v3, "notification"

    if-eqz v2, :cond_f

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    :try_start_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mNotiPatternData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_14
    sget-object v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mNotiPatternData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v6

    if-ge v7, v6, :cond_c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;

    if-eqz v0, :cond_b

    iget v6, v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;->mPatternIndex:I

    invoke-static {v6}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v8

    const v9, 0xc3a4

    if-ne v8, v9, :cond_a

    iget-object v8, v1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mContext:Landroid/content/Context;

    const v11, 0x7f14283d

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :catch_7
    move-exception v0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    goto :goto_17

    :cond_a
    const v11, 0x7f14283d

    iget-object v8, v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    invoke-static {v6}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v6, v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;->mVibrationType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v6, v7, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;->mCustomData:Ljava/lang/String;

    invoke-virtual {v2, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;->mIsCustom:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v6, v17

    invoke-virtual {v2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_7
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_7

    move-object/from16 v8, p1

    const/4 v9, 0x0

    :try_start_c
    invoke-virtual {v8, v3, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_8
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_16

    :catch_8
    move-exception v0

    goto :goto_17

    :cond_b
    move-object/from16 v8, p1

    move-object/from16 v6, v17

    const/4 v9, 0x0

    const v11, 0x7f14283d

    :goto_16
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v17, v6

    goto :goto_14

    :cond_c
    move-object/from16 v8, p1

    const/4 v9, 0x0

    goto :goto_18

    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "initializeNotificationTable "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v4}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_18
    iget-object v0, v1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "default_notification_vibration_pattern"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "content://com.android.settings.personalvibration.PersonalVibrationProvider/notification/3"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_d
    iget-object v0, v1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_vibration_sep_index"

    const/4 v6, 0x0

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v11, "setDefaultNotificationPattern old sepIndex="

    invoke-static {v7, v11, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string v11, "content://com.android.settings.personalvibration.PersonalVibrationProvider/notification/"

    if-eqz v7, :cond_e

    invoke-static {v8, v3, v7}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->queryDbId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_19

    :cond_e
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v7, v18

    :goto_19
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "setDefaultNotificationPattern sepIndex="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v2, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1a

    :cond_f
    move-object/from16 v8, p1

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_1a
    if-nez p2, :cond_10

    const-string v0, "customindex"

    const-string/jumbo v1, "pattern_index"

    sget-boolean v2, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    if-eqz v2, :cond_10

    :try_start_d
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "ringtone"

    invoke-virtual {v2, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x186a1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x1adb1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_9
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_1b

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initializeCustomTable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v4}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_10
    :goto_1b
    return-void
.end method

.method public final makePatternData(ILjava/util/HashMap;)V
    .locals 11

    new-instance v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$1;-><init>(Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants$PatternContainer;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v10, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;

    iget-object v6, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants$PatternContainer;->name:Ljava/lang/String;

    const/4 v9, 0x0

    iget v5, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants$PatternContainer;->index:I

    const-string v8, ""

    move-object v4, v10

    move v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {p2, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS registerinfo (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , vibration_name VARCHAR NOT NULL , vibration_pattern INTEGER NOT NULL ,vibration_type INTEGER NOT NULL , custom_data VARCHAR ,is_custom INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS notification (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , vibration_name VARCHAR NOT NULL , vibration_pattern INTEGER NOT NULL ,vibration_type INTEGER NOT NULL , custom_data VARCHAR ,is_custom INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS customindex (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , vibration_type VARCHAR NOT NULL , pattern_index INTEGER NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 22

    move-object/from16 v9, p1

    move/from16 v0, p2

    const-string v1, "Upgrading from version "

    const-string v2, " to "

    const-string v3, ", which will destroy all old data"

    move/from16 v4, p3

    invoke-static {v1, v2, v0, v4, v3}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1$3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "PersonalVibrationDatabaseHelper"

    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x2

    if-ne v0, v12, :cond_0

    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v13, v0

    :goto_0
    if-eqz v13, :cond_6

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v12, :cond_6

    const-string/jumbo v0, "registerinfo"

    if-nez v14, :cond_1

    sget-object v1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mRingPatternData:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    move-object v8, v0

    move v15, v1

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mNotiPatternData:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const-string/jumbo v2, "notification"

    move v15, v1

    move-object v8, v2

    :goto_2
    :try_start_0
    const-string v4, "is_custom=?"

    const-string v1, "1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v8

    move-object v11, v8

    move-object/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom db count("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_2
    const-string/jumbo v3, "vibration_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v3, "vibration_pattern"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "vibration_type"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string v4, "custom_data"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v4, "is_custom"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    new-instance v4, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;

    const v5, 0xc368

    sub-int v17, v3, v5

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v21}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mRingPatternData:Ljava/util/HashMap;

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v2, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move v2, v5

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_5

    :cond_3
    sget-object v3, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mNotiPatternData:Ljava/util/HashMap;

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v2, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    goto :goto_7

    :goto_5
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v2

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_4
    :goto_7
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_6
    const-string v0, "DROP TABLE IF EXISTS registerinfo"

    invoke-virtual {v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS notification"

    invoke-virtual {v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-nez v13, :cond_7

    const-string v0, "DROP TABLE IF EXISTS customindex"

    invoke-virtual {v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    const-string v0, "CREATE TABLE IF NOT EXISTS registerinfo (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , vibration_name VARCHAR NOT NULL , vibration_pattern INTEGER NOT NULL ,vibration_type INTEGER NOT NULL , custom_data VARCHAR ,is_custom INTEGER)"

    invoke-virtual {v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS notification (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , vibration_name VARCHAR NOT NULL , vibration_pattern INTEGER NOT NULL ,vibration_type INTEGER NOT NULL , custom_data VARCHAR ,is_custom INTEGER)"

    invoke-virtual {v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-nez v13, :cond_8

    const-string v0, "CREATE TABLE IF NOT EXISTS customindex (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , vibration_type VARCHAR NOT NULL , pattern_index INTEGER NOT NULL)"

    invoke-virtual {v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v1, p0

    invoke-virtual {v1, v9, v13}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

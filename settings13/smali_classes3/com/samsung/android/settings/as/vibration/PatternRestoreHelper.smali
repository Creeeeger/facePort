.class public final Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;
.super Ljava/lang/Object;
.source "PatternRestoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;
    }
.end annotation


# static fields
.field private static final sPatternLookupTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->sPatternLookupTable:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;

    const-string v3, "Basic call"

    const v4, 0xc373

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;

    const-string v3, "Heartbeat"

    const v4, 0xc371

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;

    const-string v3, "Ticktock"

    const v4, 0xc372

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;

    const-string v3, "Waltz"

    const v4, 0xc375

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;

    const-string v3, "Zig-zig-zig"

    const v4, 0xc374

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;

    const-string v3, "Off-beat"

    const v4, 0xc379

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;

    const-string v3, "Spinning"

    const v4, 0xc37a

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;

    const-string v3, "Siren"

    const v4, 0xc37b

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;

    const-string v3, "Telephone"

    const v4, 0xc37c

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;

    const-string v3, "Ripple"

    const v4, 0xc37d

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static findIdByQuery(Landroid/content/Context;II)I
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "content://com.android.settings.personalvibration.PersonalVibrationProvider/registerinfo"

    goto :goto_0

    :cond_0
    const-string p1, "content://com.android.settings.personalvibration.PersonalVibrationProvider/notification"

    :goto_0
    const-string v3, "vibration_pattern=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 107
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 110
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "_id"

    .line 111
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const-string p2, "PatternRestoreHelper"

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findIdByQuery() id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catchall_0
    move-exception p1

    .line 108
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_1
    if-eqz p0, :cond_2

    .line 115
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    const/4 p0, -0x1

    return p0
.end method

.method private static findSepIndexByQuery(Landroid/content/Context;II)I
    .locals 7

    if-nez p1, :cond_0

    const p1, 0xc373

    const-string v0, "content://com.android.settings.personalvibration.PersonalVibrationProvider/registerinfo"

    goto :goto_0

    :cond_0
    const p1, 0xc372

    const-string v0, "content://com.android.settings.personalvibration.PersonalVibrationProvider/notification"

    :goto_0
    const-string v4, "_id=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 134
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    .line 135
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 137
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "vibration_pattern"

    .line 138
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const-string p2, "PatternRestoreHelper"

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findSepIndexByQuery() retSepIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 135
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2

    :cond_1
    :goto_2
    if-eqz p0, :cond_2

    .line 141
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    return p1
.end method

.method public static getIdByLegacyId(Landroid/content/Context;II)I
    .locals 2

    .line 76
    sget-object v0, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->sPatternLookupTable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    .line 79
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;

    iget p2, p2, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;->mSepIndex:I

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->findIdByQuery(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getIdBySepIndex(Landroid/content/Context;II)I
    .locals 0

    .line 91
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->findIdByQuery(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getLegacyIdBySepIndex(I)I
    .locals 3

    .line 66
    sget-object v0, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->sPatternLookupTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 67
    sget-object v2, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->sPatternLookupTable:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;

    iget v2, v2, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;->mSepIndex:I

    if-ne p0, v2, :cond_0

    .line 68
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getSepIndexById(Landroid/content/Context;II)I
    .locals 0

    .line 95
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->findSepIndexByQuery(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getSepIndexByLegacyId(II)I
    .locals 2

    .line 84
    sget-object v0, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->sPatternLookupTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    move p1, p0

    .line 87
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;

    iget p0, p0, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;->mSepIndex:I

    return p0
.end method

.method public static supportsColorfulPattern(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "vibrator_manager"

    .line 149
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibratorManager;

    invoke-virtual {p0}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result p0

    const/4 v1, 0x3

    if-lt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static supportsLivePattern(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "vibrator_manager"

    .line 157
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibratorManager;

    invoke-virtual {p0}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 159
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result p0

    const/4 v1, 0x4

    if-lt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

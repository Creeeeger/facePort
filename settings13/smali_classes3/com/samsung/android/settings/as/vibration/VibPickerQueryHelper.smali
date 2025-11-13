.class public Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;
.super Ljava/lang/Object;
.source "VibPickerQueryHelper.java"


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public deletePattern(I)I
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "vibration_pattern=?"

    .line 90
    invoke-virtual {v0, p0, p1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getGalaxyCount()I
    .locals 7

    const/4 v0, 0x0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "is_custom=?"

    const-string p0, "0"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 81
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 78
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    :cond_0
    :goto_1
    if-eqz p0, :cond_1

    .line 83
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return v0
.end method

.method public getPatternList(I)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "is_custom"

    const-string v3, "custom_data"

    const-string v4, "vibration_type"

    const-string v5, "vibration_pattern"

    const-string v6, "vibration_name"

    const-string v7, "_id"

    .line 44
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x2

    if-ne v1, v9, :cond_0

    const-string v10, "Custom"

    goto :goto_0

    :cond_0
    const-string v10, "Galaxy"

    .line 47
    :goto_0
    :try_start_0
    iget-object v11, v0, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v12, v0, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->mUri:Landroid/net/Uri;

    const/4 v13, 0x0

    const-string v14, "is_custom=?"

    const/4 v0, 0x1

    new-array v15, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    if-ne v1, v9, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    :goto_1
    aput-object v1, v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    .line 49
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "VibPickerQueryHelper"

    .line 50
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " db count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 53
    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 55
    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 57
    invoke-virtual {v0, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 59
    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 61
    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 63
    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "position"

    .line 65
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 47
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 69
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    return-object v8
.end method

.method public getPatternName(I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "vibration_pattern=?"

    const/4 p0, 0x1

    new-array v5, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, p0

    const/4 v6, 0x0

    .line 32
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 34
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "vibration_name"

    .line 35
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 32
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    :goto_1
    if-eqz p0, :cond_1

    .line 37
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getSepIndexById(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 99
    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->getSepIndexById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setTablePath(Ljava/lang/String;)V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public updatePatternList(Landroid/content/ContentValues;I)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "_id=?"

    invoke-virtual {v0, p0, p1, p2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

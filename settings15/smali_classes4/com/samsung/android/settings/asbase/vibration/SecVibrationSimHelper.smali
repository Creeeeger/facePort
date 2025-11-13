.class public final Lcom/samsung/android/settings/asbase/vibration/SecVibrationSimHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSimType:Lcom/samsung/android/settings/asbase/vibration/IVibSimType;

.field public final mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSimHelper;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSimHelper;->mType:I

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isMultiSimEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationMultiSimType;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput p2, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationMultiSimType;->mType:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSingleSimType;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput p2, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSingleSimType;->mType:I

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSimHelper;->mSimType:Lcom/samsung/android/settings/asbase/vibration/IVibSimType;

    return-void
.end method


# virtual methods
.method public final getVibrationPatternSummary()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSimHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v7, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSimHelper;->mType:I

    if-nez v7, :cond_0

    const-string/jumbo v1, "registerinfo"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "notification"

    :goto_0
    const-string v2, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x2

    new-array v9, v1, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v1, ""

    move-object v11, v1

    move v12, v10

    :goto_1
    iget-object v13, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSimHelper;->mSimType:Lcom/samsung/android/settings/asbase/vibration/IVibSimType;

    invoke-interface {v13}, Lcom/samsung/android/settings/asbase/vibration/IVibSimType;->getVibrationSimCount()I

    move-result v1

    if-ge v12, v1, :cond_9

    invoke-interface {v13}, Lcom/samsung/android/settings/asbase/vibration/IVibSimType;->getSepIndexDbName()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v7, :cond_1

    const v2, 0xc373

    goto :goto_2

    :cond_1
    const v2, 0xc372

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :try_start_0
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v4, "vibration_pattern=?"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "vibration_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2

    :catch_0
    move-exception v1

    goto :goto_5

    :cond_2
    :goto_4
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_6
    sget-boolean v1, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-interface {v13}, Lcom/samsung/android/settings/asbase/vibration/IVibSimType;->getSyncDbName()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_6

    invoke-interface {v13}, Lcom/samsung/android/settings/asbase/vibration/IVibSimType;->getSoundType()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSimHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Landroid/media/RingtoneManager;->hasHapticChannels(Landroid/net/Uri;)Z

    move-result v1

    goto :goto_7

    :cond_4
    move v1, v10

    :goto_7
    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSimHelper;->mContext:Landroid/content/Context;

    if-nez v7, :cond_5

    const v3, 0x7f14283f

    goto :goto_8

    :cond_5
    const v3, 0x7f14283e

    :goto_8
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v12

    :cond_6
    if-ne v12, v2, :cond_7

    const-string v1, "\n"

    invoke-static {v11, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSimHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isMultiSimEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eq v7, v2, :cond_8

    invoke-static {v11}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSimHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v12}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_8
    invoke-static {v11}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v9, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_9
    return-object v11
.end method

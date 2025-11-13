.class public final Lcom/samsung/android/settings/asbase/vibration/SecVibrationSingleSimType;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/asbase/vibration/IVibSimType;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mType:I


# virtual methods
.method public final getIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "vibration_type"

    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSingleSimType;->mType:I

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "com.android.settings"

    const-string v1, "com.samsung.android.settings.asbase.vibration.VibPickerContainer"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public final getSepIndexDbName()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSingleSimType;->mType:I

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isEnabledSIM2Only()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "ringtone_vibration_sep_index_2"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "ringtone_vibration_sep_index"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "notification_vibration_sep_index"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public final getSoundType()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSingleSimType;->mType:I

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isEnabledSIM2Only()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public final getSyncDbName()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSingleSimType;->mType:I

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isEnabledSIM2Only()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "sync_vibration_with_ringtone_2"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "sync_vibration_with_ringtone"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "sync_vibration_with_notification"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public final getVibrationSimCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

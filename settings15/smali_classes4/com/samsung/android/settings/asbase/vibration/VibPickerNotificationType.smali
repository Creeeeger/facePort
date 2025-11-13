.class public final Lcom/samsung/android/settings/asbase/vibration/VibPickerNotificationType;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;


# virtual methods
.method public final getAudioUsage()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final getCallBackgroundDbName(Z)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDatabaseTableName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "notification"

    return-object p0
.end method

.method public final getDefaultSepIndex()I
    .locals 0

    const p0, 0xc372

    return p0
.end method

.method public final getRepeat()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final getSepIndexDbName(Z)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "notification_vibration_sep_index"

    return-object p0
.end method

.method public final getSoundType(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/16 p0, 0x100

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public final getSyncItemTitle()I
    .locals 0

    const p0, 0x7f14283e

    return p0
.end method

.method public final getSyncWithHapticDbName(Z)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "sync_vibration_with_notification"

    return-object p0
.end method

.method public final getVibrationUsage()I
    .locals 0

    const/16 p0, 0x31

    return p0
.end method

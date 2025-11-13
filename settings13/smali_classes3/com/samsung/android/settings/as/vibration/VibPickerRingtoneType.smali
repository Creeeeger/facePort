.class public Lcom/samsung/android/settings/as/vibration/VibPickerRingtoneType;
.super Ljava/lang/Object;
.source "VibPickerRingtoneType.java"

# interfaces
.implements Lcom/samsung/android/settings/as/vibration/IVibPickerType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioUsage()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getDatabaseTableName()Ljava/lang/String;
    .locals 0

    const-string p0, "registerinfo"

    return-object p0
.end method

.method public getDefaultSepIndex()I
    .locals 0

    const p0, 0xc373

    return p0
.end method

.method public getRepeat()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSepIndexDbName(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "ringtone_vibration_sep_index_2"

    return-object p0

    :cond_0
    const-string p0, "ringtone_vibration_sep_index"

    return-object p0
.end method

.method public getSoundType(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/16 p0, 0x80

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getSyncItemTitle()I
    .locals 0

    .line 71
    sget p0, Lcom/android/settings/R$string;->sec_vib_picker_sync_with_ringtone:I

    return p0
.end method

.method public getSyncWithHapticDbName(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "sync_vibration_with_ringtone_2"

    return-object p0

    :cond_0
    const-string p0, "sync_vibration_with_ringtone"

    return-object p0
.end method

.method public getTitle()I
    .locals 0

    .line 38
    sget p0, Lcom/android/settings/R$string;->sec_vibration_call_title:I

    return p0
.end method

.method public getVibrationUsage()I
    .locals 0

    const/16 p0, 0x21

    return p0
.end method

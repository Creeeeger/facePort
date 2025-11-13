.class public Lcom/samsung/android/settings/as/vibration/VibPickerNotificationType;
.super Ljava/lang/Object;
.source "VibPickerNotificationType.java"

# interfaces
.implements Lcom/samsung/android/settings/as/vibration/IVibPickerType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioUsage()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getDatabaseTableName()Ljava/lang/String;
    .locals 0

    const-string p0, "notification"

    return-object p0
.end method

.method public getDefaultSepIndex()I
    .locals 0

    const p0, 0xc372

    return p0
.end method

.method public getRepeat()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getSepIndexDbName(Z)Ljava/lang/String;
    .locals 0

    const-string p0, "notification_vibration_sep_index"

    return-object p0
.end method

.method public getSoundType(Z)I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getSyncItemTitle()I
    .locals 0

    .line 61
    sget p0, Lcom/android/settings/R$string;->sec_vib_picker_sync_with_notification:I

    return p0
.end method

.method public getSyncWithHapticDbName(Z)Ljava/lang/String;
    .locals 0

    const-string p0, "sync_vibration_with_notification"

    return-object p0
.end method

.method public getTitle()I
    .locals 0

    .line 31
    sget p0, Lcom/android/settings/R$string;->sec_vibration_notification_title:I

    return p0
.end method

.method public getVibrationUsage()I
    .locals 0

    const/16 p0, 0x31

    return p0
.end method

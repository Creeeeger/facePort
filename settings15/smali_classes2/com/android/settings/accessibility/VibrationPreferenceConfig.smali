.class public abstract Lcom/android/settings/accessibility/VibrationPreferenceConfig;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final PREVIEW_VIBRATION_EFFECT:Landroid/os/VibrationEffect;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDefaultIntensity:I

.field public final mPreviewVibrationAttributes:Landroid/os/VibrationAttributes;

.field public final mRingerModeSilentSummary:Ljava/lang/String;

.field public final mSettingKey:Ljava/lang/String;

.field public final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->PREVIEW_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mContentResolver:Landroid/content/ContentResolver;

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mVibrator:Landroid/os/Vibrator;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mAudioManager:Landroid/media/AudioManager;

    const v1, 0x7f140217

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mRingerModeSilentSummary:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mSettingKey:Ljava/lang/String;

    invoke-virtual {v0, p3}, Landroid/os/Vibrator;->getDefaultVibrationIntensity(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mDefaultIntensity:I

    new-instance p1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p1}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {p1, p3}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mPreviewVibrationAttributes:Landroid/os/VibrationAttributes;

    return-void
.end method


# virtual methods
.method public final isPreferenceEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "vibrate_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->isRestrictedByRingerModeSilent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    return v2
.end method

.method public isRestrictedByRingerModeSilent()Z
    .locals 0

    instance-of p0, p0, Lcom/android/settings/accessibility/NotificationVibrationIntensityPreferenceController$NotificationVibrationPreferenceConfig;

    return p0
.end method

.method public readIntensity()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mSettingKey:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mDefaultIntensity:I

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public updateIntensity(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mSettingKey:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

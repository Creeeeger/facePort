.class public Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final RING_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field public mConfigurationChanged:Z

.field public mContext:Landroid/content/Context;

.field public mDefaultSepIndex:I

.field public mIsSecondSimEnabled:Z

.field public mNotificationSeekBar:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

.field public mRepeat:I

.field public mRingtoneSeekBar:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

.field public mSepIndexDbName:Ljava/lang/String;

.field public mSepIndexObserver:Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings$SepIndexObserver;

.field public mType:I

.field public mVibIntensityHelper:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

.field public mVibSeekBarTouchListener:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setHapticChannelsMuted(Z)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const-string v1, "VIRTUAL_VIB_SOUND"

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->RING_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mConfigurationChanged:Z

    return-void
.end method


# virtual methods
.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecVibPickerIntensitySettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xfa2

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17004d

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mConfigurationChanged:Z

    return-void
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    const-class p2, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityIncomingCallController;

    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityIncomingCallController;

    iput-object p2, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mRingtoneController:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityIncomingCallController;

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    const-class p2, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityNotificationController;

    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityNotificationController;

    iput-object p2, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mNotificationController:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityNotificationController;

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "type"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mType:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "indexDb"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mSepIndexDbName:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "defaultIndex"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mDefaultSepIndex:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "repeat"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mRepeat:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "isSecondSimActivated"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mIsSecondSimEnabled:Z

    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mType:I

    const-string/jumbo p2, "notification_vibration"

    const-string/jumbo v0, "ring_vibration"

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mRingtoneSeekBar:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

    iput-object v0, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mTouchSeekBarCallBack:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

    const v0, 0x7f14224e

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mIsSecondSimEnabled:Z

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mContext:Landroid/content/Context;

    const/16 v0, 0x80

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->semGetRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->RING_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/Ringtone;->setVolume(F)V

    invoke-virtual {p1, v1}, Landroid/media/Ringtone;->setLooping(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mRingtoneSeekBar:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    iput-object p1, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mRingtone:Landroid/media/Ringtone;

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mRingtoneSeekBar:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    const-string/jumbo v0, "sync_vibration_with_ringtone_2"

    iput-object v0, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mSyncDbName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->setEffect()V

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mNotificationSeekBar:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

    iput-object p2, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mTouchSeekBarCallBack:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

    const p2, 0x7f1425f9

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public final onPause()V
    .locals 3

    const-string v0, "SecVibPickerIntensitySettings"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mStopFlag:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mConfigurationChanged:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->stopVibration()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mConfigurationChanged:Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mSepIndexObserver:Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings$SepIndexObserver;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mSepIndexObserver:Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings$SepIndexObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mSepIndexObserver:Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings$SepIndexObserver;

    const-string/jumbo v1, "unregister observer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    const-string v0, "SecVibPickerIntensitySettings"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mStopFlag:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mSepIndexObserver:Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings$SepIndexObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings$SepIndexObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings$SepIndexObserver;-><init>(Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mSepIndexObserver:Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings$SepIndexObserver;

    :cond_1
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    return-void
.end method

.method public final setEffect()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mSepIndexDbName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mDefaultSepIndex:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mRepeat:I

    invoke-static {v0, v1}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mType:I

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mRingtoneSeekBar:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mVibrationEffect:Landroid/os/VibrationEffect;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mNotificationSeekBar:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mVibrationEffect:Landroid/os/VibrationEffect;

    :cond_1
    :goto_0
    return-void
.end method

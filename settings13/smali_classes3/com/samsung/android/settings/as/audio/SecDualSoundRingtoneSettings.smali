.class public Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecDualSoundRingtoneSettings.java"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtoneNotificationRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$iqcjTRZgTj7CZId5o7cf2aVytMA(Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->lambda$onCreate$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmRingtone2Preference(Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRingtonePreference(Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings$1;-><init>(Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private UpdateRingtoneNotificationNames()V
    .locals 1

    .line 197
    new-instance v0, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtoneNotificationRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private configureActionBar()V
    .locals 1

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0xc

    .line 271
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 127
    :try_start_0
    invoke-direct {p0, v1, v0, v1}, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->updateRingtoneName(ILandroidx/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 133
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_1

    const/16 v1, 0x80

    const/4 v2, 0x2

    .line 135
    :try_start_1
    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->updateRingtoneName(ILandroidx/preference/Preference;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private updateRingtoneName(ILandroidx/preference/Preference;I)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 162
    invoke-static {p2, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 164
    sget-boolean v1, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 165
    invoke-static {p2, v0, v3, v2}, Landroid/media/Ringtone;->getTitleWithSoundTheme(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_1
    invoke-static {p2, v0, v3, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-ne p1, v2, :cond_3

    .line 173
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "use_video_sound_for_ringtone"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    move v3, v2

    goto :goto_2

    :cond_3
    const/16 v1, 0x80

    if-ne p1, v1, :cond_4

    .line 176
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "use_video_sound_for_ringtone_sim2"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 179
    invoke-static {p2, p1}, Lcom/samsung/android/settings/as/utils/SoundUtils;->checkCallBackgroundUri(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 180
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->sec_ringtone_call_bg_sound:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 214
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 217
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DualSoundRingtoneSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xfab

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 94
    sget p0, Lcom/android/settings/R$xml;->as_dual_sound_ringtone_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 223
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualSoundRingtoneSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_1

    return-void

    :cond_1
    if-ne p1, v0, :cond_2

    .line 233
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/DefaultRingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    .line 235
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/DefaultRingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    const-string v0, "ringtone"

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, v1, p1}, Lcom/android/settings/RingtonePreference;->setRingtoneType(II)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/RingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/DefaultRingtonePreference;->setRingtoneNotificationFragment(Lcom/android/settings/SettingsPreferenceFragment;I)V

    :cond_0
    const-string p1, "ringtone_2"

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/DefaultRingtonePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p1, v1, v1}, Lcom/android/settings/RingtonePreference;->setRingtoneType(II)V

    .line 118
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/RingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 119
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p1, p0, v1}, Lcom/android/settings/DefaultRingtonePreference;->setRingtoneNotificationFragment(Lcom/android/settings/SettingsPreferenceFragment;I)V

    .line 124
    :cond_1
    new-instance p1, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtoneNotificationRunnable:Ljava/lang/Runnable;

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->configureActionBar()V

    .line 146
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings$2;-><init>(Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 203
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DualSoundRingtoneSettings"

    const-string v2, "onDestroy"

    .line 205
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :goto_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 244
    :cond_1
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    .line 245
    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    const/4 v1, 0x1

    .line 248
    :try_start_0
    invoke-virtual {v0}, Lcom/android/settings/RingtonePreference;->getUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 250
    iget-object v3, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_2

    .line 251
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v4, v2}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 254
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v3, v4, v2}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "DualSoundRingtoneSettings"

    const-string v2, "No Activity found to handle Intent"

    .line 258
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/SoundUtils;->showToEnableSecSoundPickerDialog(Landroid/content/Context;)V

    :goto_1
    return v1
.end method

.method public onResume()V
    .locals 1

    .line 189
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    const/4 v0, 0x1

    .line 191
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->updateState(Z)V

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->UpdateRingtoneNotificationNames()V

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

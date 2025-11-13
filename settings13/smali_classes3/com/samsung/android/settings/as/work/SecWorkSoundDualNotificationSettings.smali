.class public Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecWorkSoundDualNotificationSettings.java"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

.field private mManagedProfileId:I

.field private final mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

.field private mNotification2Preference:Lcom/android/settings/DefaultRingtonePreference;

.field private mNotificationPreference:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtoneNotificationRunnable:Ljava/lang/Runnable;

.field private mUserManager:Landroid/os/UserManager;

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$EHbFDix44jJ6jaGnUFEctVqJaOM(Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->lambda$onCreate$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmNotification2Preference(Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotification2Preference:Lcom/android/settings/DefaultRingtonePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationPreference(Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotificationPreference:Lcom/android/settings/DefaultRingtonePreference;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->receiver:Landroid/content/BroadcastReceiver;

    .line 76
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings$1;-><init>(Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mHandler:Landroid/os/Handler;

    .line 303
    new-instance v0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings$3;-><init>(Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private UpdateRingtoneNotificationNames()V
    .locals 1

    .line 212
    new-instance v0, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mRingtoneNotificationRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private configureActionBar()V
    .locals 1

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0xc

    .line 286
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_0
    return-void
.end method

.method private getManagedProfileContext()Landroid/content/Context;
    .locals 2

    .line 166
    iget v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mManagedProfileId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 169
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AudioHelper;->createPackageContextAsUser(I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotificationPreference:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 141
    :try_start_0
    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->updateRingtoneName(ILandroidx/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotification2Preference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_1

    const/16 v2, 0x100

    .line 148
    :try_start_1
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->updateRingtoneName(ILandroidx/preference/Preference;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method private updateRingtoneName(ILandroidx/preference/Preference;I)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->getManagedProfileContext()Landroid/content/Context;

    move-result-object p2

    .line 178
    invoke-static {p2, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    .line 180
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 181
    invoke-static {p2, p1, v2, v1}, Landroid/media/Ringtone;->getTitleWithSoundTheme(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 185
    :cond_1
    invoke-static {p2, p1, v2, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object p1

    .line 188
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotificationPreference:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 229
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotification2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotificationPreference:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 232
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotification2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecWorkSoundDualNotificationSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xfae

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 100
    sget p0, Lcom/android/settings/R$xml;->as_dual_notification_sound_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 238
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecWorkSoundDualNotificationSettings"

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

    .line 248
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotificationPreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/DefaultRingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    .line 250
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotification2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/DefaultRingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mUserManager:Landroid/os/UserManager;

    .line 113
    new-instance p1, Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/as/utils/SecAudioHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mManagedProfileId:I

    const-string p1, "notification"

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/DefaultRingtonePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotificationPreference:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 118
    invoke-virtual {p1, v0, v2}, Lcom/android/settings/RingtonePreference;->setRingtoneType(II)V

    .line 119
    iget-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotificationPreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/RingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 120
    iget-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotificationPreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotificationPreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotificationPreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p1, p0, v2}, Lcom/android/settings/DefaultRingtonePreference;->setRingtoneNotificationFragment(Lcom/android/settings/SettingsPreferenceFragment;I)V

    .line 123
    iget-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotificationPreference:Lcom/android/settings/DefaultRingtonePreference;

    iget v2, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mManagedProfileId:I

    invoke-virtual {p1, v2}, Lcom/android/settings/RingtonePreference;->setUserId(I)V

    :cond_0
    const-string p1, "notification_2"

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/DefaultRingtonePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotification2Preference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/RingtonePreference;->setRingtoneType(II)V

    .line 129
    iget-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotification2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/RingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 130
    iget-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotification2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotification2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotification2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p1, p0, v1}, Lcom/android/settings/DefaultRingtonePreference;->setRingtoneNotificationFragment(Lcom/android/settings/SettingsPreferenceFragment;I)V

    .line 133
    iget-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotification2Preference:Lcom/android/settings/DefaultRingtonePreference;

    iget v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mManagedProfileId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/RingtonePreference;->setUserId(I)V

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->configureActionBar()V

    .line 138
    new-instance p1, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mRingtoneNotificationRunnable:Ljava/lang/Runnable;

    .line 155
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings$2;-><init>(Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->receiver:Landroid/content/BroadcastReceiver;

    .line 162
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 218
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SecWorkSoundDualNotificationSettings"

    const-string v2, "onDestroy"

    .line 220
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    :goto_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onManagedProfileAdded(I)V
    .locals 2

    .line 292
    iget v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mManagedProfileId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 293
    iput p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mManagedProfileId:I

    :cond_0
    return-void
.end method

.method public onManagedProfileRemoved(I)V
    .locals 1

    .line 298
    iget v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mManagedProfileId:I

    if-ne v0, p1, :cond_0

    .line 299
    iget-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mManagedProfileId:I

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 207
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotificationPreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotification2Preference:Lcom/android/settings/DefaultRingtonePreference;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 260
    :cond_1
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    .line 261
    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    const/4 v1, 0x1

    .line 263
    :try_start_0
    invoke-virtual {v0}, Lcom/android/settings/RingtonePreference;->getUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 265
    iget-object v3, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mNotificationPreference:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_2

    .line 266
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v4, v2}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 269
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

    const-string v0, "SecWorkSoundDualNotificationSettings"

    const-string v2, "No Activity found to handle Intent"

    .line 273
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/SoundUtils;->showToEnableSecSoundPickerDialog(Landroid/content/Context;)V

    :goto_1
    return v1
.end method

.method public onResume()V
    .locals 3

    .line 193
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 200
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->updateState(Z)V

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDualNotificationSettings;->UpdateRingtoneNotificationNames()V

    .line 202
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

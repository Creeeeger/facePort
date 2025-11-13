.class public Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GalaxySystemUpdateFragment.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static MSG_REQUEST_CHECK_FOR_UPDATE:I = 0x1

.field private static isUpdateSupportedDevice:Z = false


# instance fields
.field private mProgressDialog:Landroid/app/AlertDialog;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mSystemRebootDescriptionPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mSystemUpdate:Lcom/samsung/android/settings/widget/SecButtonPreference;

.field private mUpdateInfoDialog:Landroid/app/AlertDialog;

.field private mUseWifiOnlyPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

.field mainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$HnjUfM8KYo_klzOW6F4MWz2-UkM(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->lambda$showLatestUpdateDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VU5J-N1JPDOfX_Nqqnk57YlVLGE(Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->lambda$checkSystemUpdate$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$dMQWSFT9WIM7-DqEjWvtiLhqFAk(Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->lambda$setUpdateCheckButton$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunGalaxyStoreDeeplink(Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->runGalaxyStoreDeeplink()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUpdateButtonState(Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->setUpdateButtonState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowLatestUpdateDialog(Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->showLatestUpdateDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetMSG_REQUEST_CHECK_FOR_UPDATE()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->MSG_REQUEST_CHECK_FOR_UPDATE:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 57
    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mUseWifiOnlyPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    .line 58
    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mSystemRebootDescriptionPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    .line 59
    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mSystemUpdate:Lcom/samsung/android/settings/widget/SecButtonPreference;

    .line 63
    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mProgressDialog:Landroid/app/AlertDialog;

    .line 64
    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mUpdateInfoDialog:Landroid/app/AlertDialog;

    .line 66
    new-instance v0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$1;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkSystemUpdate()V
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 257
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getSystemUpdateCount()I
    .locals 2

    .line 262
    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->isGalaxyDeeplinkSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "content://com.sec.android.app.samsungapps.systemupdate"

    .line 264
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 268
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 272
    throw v0

    .line 271
    :catch_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initGalaxySystemUpdateFragment()V
    .locals 3

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->isSupportedDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 145
    sput-boolean v0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->isUpdateSupportedDevice:Z

    goto :goto_0

    .line 147
    :cond_0
    sput-boolean v1, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->isUpdateSupportedDevice:Z

    :goto_0
    const-string v0, "use_wifi_only"

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mUseWifiOnlyPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    .line 150
    sget-boolean v2, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->isUpdateSupportedDevice:Z

    if-eqz v2, :cond_1

    .line 151
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mUseWifiOnlyPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateSettings;->getWifiOnlyValue(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mUseWifiOnlyPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    const-string v0, "galaxy_system_update_description"

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mSystemRebootDescriptionPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    .line 160
    sget-boolean v2, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->isUpdateSupportedDevice:Z

    if-eqz v2, :cond_3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/android/settings/R$string;->galaxy_system_update_description:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mSystemRebootDescriptionPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->galaxy_system_reboot_tablet_info:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mSystemRebootDescriptionPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->galaxy_system_reboot_phone_info:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 168
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 171
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->setUpdateCheckButton()V

    return-void
.end method

.method private isEnabled()Z
    .locals 0

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateSettings;->getGalaxySystemUpdateValue(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isGalaxyDeeplinkSupported()Z
    .locals 3

    const/4 v0, -0x1

    .line 234
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.sec.android.app.samsungapps"

    const/16 v2, 0x80

    .line 235
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 237
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.sec.android.app.samsungapps.systemupdate.version"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 240
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isSupportedDevice(Landroid/content/Context;)Z
    .locals 2

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "galaxy_system_update_block"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$checkSystemUpdate$1()V
    .locals 4

    .line 250
    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->getSystemUpdateCount()I

    move-result v0

    .line 252
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 253
    sget v2, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->MSG_REQUEST_CHECK_FOR_UPDATE:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 254
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 255
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private synthetic lambda$setUpdateCheckButton$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 210
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->setUpdateButtonState(Z)V

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->checkSystemUpdate()V

    return-void
.end method

.method private static synthetic lambda$showLatestUpdateDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private runGalaxyStoreDeeplink()V
    .locals 2

    .line 280
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "samsungapps://SystemUpdate/"

    .line 283
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, 0x14000020

    .line 285
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 289
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setUpdateButtonState(Z)V
    .locals 2

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mSystemUpdate:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecButtonPreference;->getContainerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    if-eqz p1, :cond_0

    const-string p1, ""

    .line 220
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mSystemUpdate:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecButtonPreference;->getContainerView()Landroid/view/View;

    move-result-object p0

    sget p1, Lcom/android/settings/R$id;->checking_progress:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 223
    :cond_0
    sget p1, Lcom/android/settings/R$string;->galaxy_system_update_check_for_updates:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mSystemUpdate:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecButtonPreference;->getContainerView()Landroid/view/View;

    move-result-object p0

    sget p1, Lcom/android/settings/R$id;->checking_progress:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setUpdateCheckButton()V
    .locals 2

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->isGalaxyDeeplinkSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecButtonPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mSystemUpdate:Lcom/samsung/android/settings/widget/SecButtonPreference;

    .line 207
    sget v1, Lcom/android/settings/R$layout;->sec_galaxy_system_update_loading:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 208
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mSystemUpdate:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mSystemUpdate:Lcom/samsung/android/settings/widget/SecButtonPreference;

    new-instance v1, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private showLatestUpdateDialog()V
    .locals 4

    .line 294
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 295
    sget v1, Lcom/android/settings/R$string;->galaxy_system_apps_are_up_to_date:I

    .line 296
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$$ExternalSyntheticLambda0;-><init>()V

    const v3, 0x104000a

    .line 297
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 299
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mUpdateInfoDialog:Landroid/app/AlertDialog;

    .line 300
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showRebootAlertDialog(Landroid/content/Context;)V
    .locals 2

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 200
    const-class v1, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateRebootAlertDialog;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updatePreference(Z)V
    .locals 1

    .line 186
    sget-boolean v0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->isUpdateSupportedDevice:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mUseWifiOnlyPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 188
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mUseWifiOnlyPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateSettings;->getWifiOnlyValue(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const p0, 0xdeb3

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 94
    sget-boolean v0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->isUpdateSupportedDevice:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 98
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 99
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->isEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->updatePreference(Z)V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/GalaxySystemAppsInfoManager;->isSamsungApexStaged(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->showRebootAlertDialog(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->getMetricsCategory()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    .line 85
    sget p1, Lcom/android/settings/R$xml;->sec_galaxy_system_update:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->initGalaxySystemUpdateFragment()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 110
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mProgressDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 118
    iput-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mProgressDialog:Landroid/app/AlertDialog;

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mUpdateInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 123
    iput-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mUpdateInfoDialog:Landroid/app/AlertDialog;

    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 176
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->mUseWifiOnlyPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->getMetricsCategory()I

    move-result p1

    const v0, 0xdeb4

    if-eqz p2, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateSettings;->setWifiOnlyValue(Landroid/content/Context;Z)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->getMetricsCategory()I

    move-result p1

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    const v2, 0xdeb2

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateSettings;->setGalaxySystemUpdateValue(Landroid/content/Context;Z)Z

    .line 131
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->updatePreference(Z)V

    return-void
.end method

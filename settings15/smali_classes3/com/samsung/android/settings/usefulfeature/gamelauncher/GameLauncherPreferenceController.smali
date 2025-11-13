.class public Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final ACTION_GAMEHOME_ENABLE:Ljava/lang/String; = "com.samsung.android.game.action.GAME_TOOLS.GAMELAUNCHER_ENABLE"

.field private static final EXTRA_ENABLE_FROM_SETTING:Ljava/lang/String; = "enable_via_setting"

.field private static final KEY_EVENT_TYPE:Ljava/lang/String; = "key_event_type"

.field private static final KEY_GAME_LAUNCHER_ENABLE:Ljava/lang/String; = "game_launcher"

.field private static final PACKAGE_INSTALLED_DISABLED_PRIV_APP:I = 0x2

.field private static final PACKAGE_INSTALLED_DOWNLOADABLE:I = 0x1

.field private static final PACKAGE_INSTALLED_ENABLED_PRIV_APP:I = 0x3

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.game.gamehome"

.field private static final PACKAGE_UNINSTALLED:I = 0x0

.field private static final SKEY_GAME_HOME_ENABLE:Ljava/lang/String; = "game_home_enable"


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private switchPreference:Landroidx/preference/SecSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "game_launcher"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private getPackageStatus()I
    .locals 3

    const-string v0, "com.samsung.android.game.gamehome"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->packageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    if-eq p0, v2, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    return v2

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private isGameLauncherEnabled()Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->isPackageEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->isSecureEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->setSecureEnabled(Z)V

    :cond_0
    return v0
.end method

.method private isGameLauncherPreloaded()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->getPackageStatus()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isPackageEnabled()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->packageManager:Landroid/content/pm/PackageManager;

    const-string v0, "com.samsung.android.game.gamehome"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :catch_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSecureEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->contentResolver:Landroid/content/ContentResolver;

    const-string v0, "game_home_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isUserOwner()Z
    .locals 0

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private logGameLauncherEnabled(Z)V
    .locals 1

    const/16 p0, 0x10fe

    const/16 v0, 0x1dce

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method

.method private sendGameLauncherEnableIntent()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.game.action.GAME_TOOLS.GAMELAUNCHER_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.game.gamehome"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_event_type"

    const-string v2, "enable_via_setting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private setGameLauncherEnabled(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->packageManager:Landroid/content/pm/PackageManager;

    const-string v3, "com.samsung.android.game.gamehome"

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->setSecureEnabled(Z)V

    return-void
.end method

.method private setSecureEnabled(Z)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->contentResolver:Landroid/content/ContentResolver;

    const-string v0, "game_home_enable"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->switchPreference:Landroidx/preference/SecSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->isGameLauncherPreloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->isUserOwner()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417b4

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->isGameLauncherEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->setGameLauncherEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->logGameLauncherEnabled(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/gamelauncher/GameLauncherPreferenceController;->sendGameLauncherEnableIntent()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

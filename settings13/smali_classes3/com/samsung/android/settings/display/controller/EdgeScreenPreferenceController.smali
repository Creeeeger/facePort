.class public Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "EdgeScreenPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field public static final EASY_MODE:Ljava/lang/String; = "edgepanel_err_easy_mode_on"

.field private static final EDGE_ENABLE:Ljava/lang/String; = "edge_enable"

.field public static final EDGE_PANEL_NOT_SUPPORT:Ljava/lang/String; = "err_edge_not_supported_device"

.field private static final EDGE_PANEL_URI:Landroid/net/Uri;

.field private static final EDGE_PKG:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final EDGE_SETTING:Ljava/lang/String; = "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

.field private static final HOMEHUB_PKG:Ljava/lang/String; = "com.samsung.android.homehub"

.field public static final HOME_HUB:Ljava/lang/String; = "disabled_by_home_hub_mode_on"

.field public static final MINIMAL_BATTERY_USE_MODE:Ljava/lang/String; = "edgepanel_err_minimal_battery_use_mode_on"

.field private static final MSG_LAUNCH_EDGE_SCREEN:I = 0x1

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String; = "EdgeScreenPreferenceController"

.field public static final WINNER_COVER_SCREEN:Ljava/lang/String; = "edgepanel_err_winner_cover_screen"


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mPreference:Landroidx/preference/SecSwitchPreferenceScreen;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlaunchEdgeScreen(Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->launchEdgeScreen(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "edge_enable"

    .line 62
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->EDGE_PANEL_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    new-instance p1, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController$2;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController$2;-><init>(Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    .line 78
    new-instance p1, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController$1;-><init>(Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentDefaultLauncher(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 269
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    .line 270
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000

    .line 271
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method private isCoverScreen()Z
    .locals 1

    .line 215
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isEdgePanelDefaultOff()Z
    .locals 1

    .line 99
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "off"

    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isHomeHubDefaultLauncher(Landroid/content/Context;)Z
    .locals 0

    .line 275
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->getCurrentDefaultLauncher(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 279
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string p1, "com.samsung.android.homehub"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isWinnerProduct()Z
    .locals 1

    .line 219
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "WINNER"

    .line 220
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private launchEdgeScreen(Z)V
    .locals 3

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.cocktailbarservice"

    const-string v2, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 210
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 6

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->registerStateCode()V

    .line 173
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hideinsettings"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    return v1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "easy_mode_switch"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 178
    :goto_0
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "minimal_battery_use"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    .line 179
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->isWinnerProduct()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->isCoverScreen()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    .line 180
    :goto_2
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/Rune;->supportEdgeScreen(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v0, :cond_5

    if-nez v4, :cond_5

    .line 181
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 182
    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_5

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    return v2

    :cond_5
    :goto_3
    const/4 p0, 0x5

    return p0

    :cond_6
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .line 256
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.cocktailbarservice"

    .line 257
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 258
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 193
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.cocktailbarservice"

    .line 196
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity Not Found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdgeScreenPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 203
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->isEdgePanelDefaultOff()Z

    move-result p0

    const/4 v1, 0x1

    xor-int/2addr p0, v1

    const-string v2, "edge_enable"

    invoke-static {v0, v2, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 3

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->EDGE_PANEL_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public registerStateCode()V
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 237
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "minimal_battery_use"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 238
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->isWinnerProduct()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->isCoverScreen()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    .line 239
    :goto_2
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->isHomeHubDefaultLauncher(Landroid/content/Context;)Z

    move-result v1

    if-eqz v0, :cond_3

    const-string v0, "edgepanel_err_easy_mode_on"

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    goto :goto_3

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportEdgeScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "err_edge_not_supported_device"

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    const-string v0, "edgepanel_err_minimal_battery_use_mode_on"

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    const-string v0, "edgepanel_err_winner_cover_screen"

    .line 248
    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    const-string v0, "disabled_by_home_hub_mode_on"

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "edge_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0x190

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 141
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 142
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "minimal_battery_use"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 143
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->isWinnerProduct()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->isCoverScreen()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    const-string v5, ""

    if-nez v0, :cond_4

    if-nez v3, :cond_4

    .line 144
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 145
    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->isHomeHubDefaultLauncher(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 155
    :cond_3
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 156
    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 146
    :cond_4
    :goto_3
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_5

    .line 148
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->edge_panels_not_supported_in_easy_mode:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_6

    .line 150
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->edge_panels_not_supported_in_winner_cover_screen:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 152
    :cond_6
    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    :goto_4
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKioskMode(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 161
    invoke-virtual {v0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getBlockedEdgeScreen()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    if-lez v0, :cond_7

    .line 162
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 166
    :cond_7
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

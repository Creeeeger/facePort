.class public Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;
.super Lcom/android/settings/core/SecSingleChoicePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final DARK_MODE_NO:Ljava/lang/String; = "0"

.field private static final DARK_MODE_YES:Ljava/lang/String; = "1"

.field private static final KEY:Ljava/lang/String; = "dark_mode"

.field private static final KEY_UI_NIGHT_MODE_ON_SUW:Ljava/lang/String; = "ui_night_mode_on_suw"

.field private static final NIGHT_MODE_ALREADY_LOGGING_DONE:I = 0x2

.field private static final NIGHT_MODE_NO:I = 0x0

.field private static final NIGHT_MODE_YES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DarkModePrefCtrl"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsPowerturnmode:Z

.field private mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

.field private mSettingsObserver:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsPowerturnmode(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mIsPowerturnmode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsPowerturnmode(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mIsPowerturnmode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$misDarkModeScheduled(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->isDarkModeScheduled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mloggingIfNeed(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->loggingIfNeed(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SecSingleChoicePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mIsPowerturnmode:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;

    iget-object p2, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;-><init>(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isDarkModeScheduled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_night_theme_scheduled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isPowerSavingAndTurnOnDarkModeEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "pms_settings_dark_mode_enabled"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loggingIfNeed(I)V
    .locals 4

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "ui_night_mode_on_suw"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-nez p1, :cond_1

    const/16 p1, 0x2e

    const/16 v2, 0x1d7f

    invoke-static {p1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private registerStateCode()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ultra_powersaving_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "disabled_by_power_saving_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    const-string v0, "DarkModePrefCtrl"

    const-string v1, "displayPreference"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "dark_mode"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsDividerEnabled:Z

    iput-boolean v0, p1, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->isPowerSavingAndTurnOnDarkModeEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canChangeNightMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getEntryValues()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setEntryEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->registerStateCode()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->isPowerSavingAndTurnOnDarkModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canChangeNightMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x5

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEntries()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1422b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1422b8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getEntryValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getImageEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroid/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7f0808a6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0808a5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/16 p0, 0x1d19

    iput p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/4 p0, 0x0

    const v1, 0x7f1422ba

    const v2, 0x10008000

    invoke-static {v0, p0, v1, v2}, Lcom/samsung/android/settings/account/controller/SecAccountPreferenceController$$ExternalSyntheticOutline0;->m(Lcom/android/settings/core/SubSettingLauncher;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedValue()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_night_theme"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSubEntries()Ljava/util/ArrayList;
    .locals 0
    .annotation build Landroid/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->isPowerSavingAndTurnOnDarkModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canChangeNightMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getEntryValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setEntryEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getEntryValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setEntryEnabled(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->setListening(Z)V

    :cond_3
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setSelectedValue(Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getSelectedValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "uimode"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    const-string v2, "1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p1, :cond_2

    const-wide/16 v3, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    const/16 v5, 0x2e

    const/16 v6, 0x1d17

    invoke-static {v5, v6, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;

    invoke-direct {v4, p0, v0, p1, v2}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;-><init>(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;Landroid/app/UiModeManager;ZI)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.class public Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;
.super Lcom/android/settings/core/SecSingleChoicePreferenceController;
.source "SecDarkModePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;
    }
.end annotation


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

.field private mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

.field private mSettingsObserver:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misDarkModeScheduled(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->isDarkModeScheduled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mloggingIfNeed(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->loggingIfNeed(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SecSingleChoicePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance p1, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;

    iget-object p2, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;-><init>(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isDarkModeScheduled()Z
    .locals 2

    .line 201
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

.method private loggingIfNeed(I)V
    .locals 4

    .line 205
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "ui_night_mode_on_suw"

    const/4 v1, 0x2

    .line 209
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-nez p1, :cond_1

    const/16 p1, 0x2e

    const/16 v2, 0x1d7f

    .line 213
    invoke-static {p1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 214
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private registerStateCode()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultra_powersaving_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    if-eqz v2, :cond_1

    const-string v0, "disabled_by_power_saving_mode"

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    const-string v0, "DarkModePrefCtrl"

    const-string v1, "displayPreference"

    .line 186
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-super {p0, p1}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "dark_mode"

    .line 188
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setDividerEnabled(Z)V

    .line 190
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setTouchEffectEnabled(Z)V

    .line 192
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canChangeNightMode(Landroid/content/Context;)Z

    move-result p1

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getEntryValues()Ljava/util/ArrayList;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 196
    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-virtual {v2, v1, p1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setEntryEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->registerStateCode()V

    .line 146
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canChangeNightMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_dark_mode_light:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_dark_mode_dark:I

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

    .line 121
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "0"

    .line 122
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "1"

    .line 123
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getImageEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    sget v0, Lcom/android/settings/R$drawable;->sec_display_help_light_mode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget v0, Lcom/android/settings/R$drawable;->sec_display_help_dark_mode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 154
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    .line 155
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x1d19

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_dark_mode_settings:I

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v0, 0x10008000

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedValue()Ljava/lang/String;
    .locals 2

    .line 107
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_night_theme"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    if-eqz v1, :cond_1

    const-string p0, "1"

    goto :goto_0

    :cond_1
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSubEntries()Ljava/util/ArrayList;
    .locals 0
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

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 179
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 172
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setSelectedValue(Ljava/lang/String;)Z
    .locals 7

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getSelectedValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "uimode"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    const-string v2, "1"

    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/16 v3, 0x2e

    const/16 v4, 0x1d17

    if-eqz p1, :cond_2

    const-wide/16 v5, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x0

    .line 84
    :goto_1
    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 86
    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;

    invoke-direct {v4, p0, v0, p1, v2}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;-><init>(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;Landroid/app/UiModeManager;ZI)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_3

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->isDarkModeScheduled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 99
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sec_night_theme_scheduled_toast:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3
    return v1
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

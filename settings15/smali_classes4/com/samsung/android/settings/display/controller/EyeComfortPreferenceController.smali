.class public Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI:Landroid/net/Uri;

.field private static final BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

.field private static final BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

.field private static final COLOR_BLIND_URI:Landroid/net/Uri;

.field private static final COLOR_LENDS_URI:Landroid/net/Uri;

.field private static final DEFAULT_OFF:I = 0x0

.field private static final DEFAULT_ON:I = 0x1

.field private static final GREY_SCALE_URI:Landroid/net/Uri;

.field private static final HIGH_CONTRAST_URI:Landroid/net/Uri;

.field private static final LOCATION_ALLOWED_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "EyeComfortPreferenceController"


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mPreference:Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;)Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mPreference:Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "blue_light_filter"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    const-string v0, "blue_light_filter_type"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    const-string v0, "blue_light_filter_adaptive_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI:Landroid/net/Uri;

    const-string v0, "greyscale_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->GREY_SCALE_URI:Landroid/net/Uri;

    const-string v0, "high_contrast"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->HIGH_CONTRAST_URI:Landroid/net/Uri;

    const-string v0, "color_blind"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->COLOR_BLIND_URI:Landroid/net/Uri;

    const-string v0, "color_lens_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->COLOR_LENDS_URI:Landroid/net/Uri;

    const-string v0, "location_providers_allowed"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->LOCATION_ALLOWED_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController$1;-><init>(Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private showLocationOnDialog()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.settings.EyeComfortLocationDialog"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateEyeComfortState(Landroidx/preference/Preference;)V
    .locals 5

    instance-of v0, p1, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    if-eqz v0, :cond_4

    const v0, 0x7f14238c

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isAccessibilityVisionEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    move-object v4, p1

    check-cast v4, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    iput-boolean v2, v4, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mIsEnabled:Z

    invoke-virtual {v4}, Landroidx/preference/Preference;->notifyChanged()V

    if-eqz v2, :cond_2

    const-class v2, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getAccessibilityVisionMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f142385

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mMsg:Ljava/lang/String;

    :cond_4
    :goto_3
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

    check-cast p1, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mPreference:Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getAvailabilityStatus()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mPreference:Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->registerStateCode()V

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isAccessibilityVisionEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    :goto_1
    return v1
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

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 2

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$EyeComfortSettingsActivity"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417c0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "blue_light_filter_scheduled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_on_time"

    const-wide/16 v2, 0x474

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "blue_light_filter_off_time"

    const-wide/16 v4, 0x1a4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f14216e

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    filled-new-array {v5, p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f1422c5

    invoke-virtual {v4, v0, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f142387

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f142386

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_adaptive_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f142378

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    const-string p0, ""

    :goto_1
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
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "blue_light_filter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->GREY_SCALE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->HIGH_CONTRAST_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->COLOR_BLIND_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->COLOR_LENDS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->LOCATION_ALLOWED_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public refreshSummary(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    instance-of p0, p1, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-static {p1, p0}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    :cond_0
    return-void
.end method

.method public registerStateCode()V
    .locals 10

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_scheduled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "greyscale_mode"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "high_contrast"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "color_blind"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v7, v1

    goto :goto_4

    :cond_4
    move v7, v2

    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "color_lens_switch"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_5

    move v2, v1

    :cond_5
    if-nez v4, :cond_6

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    if-ne v3, v0, :cond_6

    const-string v0, "disabled_by_ecs_dialog_location_off"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    if-eqz v5, :cond_7

    const-string v0, "disabled_by_ecs_toast_accessibility_grey_scale"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    if-eqz v6, :cond_8

    const-string v0, "disabled_by_ecs_toast_accessibility_negative_color"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    if-eqz v7, :cond_9

    const-string v0, "disabled_by_ecs_toast_accessibility_color_adjustment"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    if-eqz v2, :cond_a

    const-string v0, "disabled_by_ecs_toast_accessibility_color_lens"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_scheduled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->showLocationOnDialog()V

    return v2

    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->TAG:Ljava/lang/String;

    const-string v2, " checked state "

    invoke-static {v2, v0, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "blue_light_filter"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_3

    const-wide/16 v2, 0x1

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x0

    :goto_2
    const/16 v0, 0x2e

    const/16 v4, 0x107d

    invoke-static {v0, v4, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.bluelightfilter"

    const-string v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-static {v2, v3, v0}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    if-eqz p1, :cond_4

    const/16 p1, 0x18

    goto :goto_3

    :cond_4
    const/16 p1, 0x19

    :goto_3
    const-string v2, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mPreference:Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->updateEyeComfortState(Landroidx/preference/Preference;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

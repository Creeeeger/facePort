.class public Lcom/android/settings/location/AppSettingsInjector;
.super Lcom/android/settingslib/location/SettingsInjector;
.source "AppSettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/AppSettingsInjector$SecServiceSettingClickedListener;
    }
.end annotation


# instance fields
.field private final mMetricsCategory:I

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    .line 52
    iput p2, p0, Lcom/android/settings/location/AppSettingsInjector;->mMetricsCategory:I

    .line 53
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/location/AppSettingsInjector;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/AppSettingsInjector;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settingslib/location/SettingsInjector;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected createPreference(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Landroidx/preference/Preference;
    .locals 0

    .line 58
    iget-object p0, p2, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 59
    new-instance p0, Lcom/android/settingslib/widget/AppPreference;

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 60
    :cond_0
    new-instance p0, Lcom/android/settings/widget/RestrictedAppPreference;

    iget-object p2, p2, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/RestrictedAppPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method protected logPreferenceClick(Landroid/content/Intent;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/location/AppSettingsInjector;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget p0, p0, Lcom/android/settings/location/AppSettingsInjector;->mMetricsCategory:I

    invoke-virtual {v0, p1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntent(Landroid/content/Intent;I)Z

    return-void
.end method

.method protected populatePreference(Landroidx/preference/Preference;Lcom/android/settingslib/location/InjectedSetting;)V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/android/settingslib/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 76
    :try_start_0
    new-instance v1, Landroid/content/pm/PackageItemInfo;

    invoke-direct {v1}, Landroid/content/pm/PackageItemInfo;-><init>()V

    .line 77
    iget v2, p2, Lcom/android/settingslib/location/InjectedSetting;->iconId:I

    iput v2, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 78
    iget-object v2, p2, Lcom/android/settingslib/location/InjectedSetting;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x80

    .line 79
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 81
    iget-object v2, p0, Lcom/android/settingslib/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v2

    iget-object v3, p2, Lcom/android/settingslib/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    .line 82
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get ApplicationInfo for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/settingslib/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppSettingsInjector"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 86
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v0, p2, Lcom/android/settingslib/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    sget v0, Lcom/android/settingslib/R$string;->loading_injected_setting_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 91
    new-instance v0, Lcom/android/settings/location/AppSettingsInjector$SecServiceSettingClickedListener;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/location/AppSettingsInjector$SecServiceSettingClickedListener;-><init>(Lcom/android/settings/location/AppSettingsInjector;Lcom/android/settingslib/location/InjectedSetting;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

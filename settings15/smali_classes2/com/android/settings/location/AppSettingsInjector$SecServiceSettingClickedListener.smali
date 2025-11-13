.class public final Lcom/android/settings/location/AppSettingsInjector$SecServiceSettingClickedListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final mInfo:Lcom/android/settingslib/location/InjectedSetting;

.field public final synthetic this$0:Lcom/android/settings/location/AppSettingsInjector;


# direct methods
.method public constructor <init>(Lcom/android/settings/location/AppSettingsInjector;Lcom/android/settingslib/location/InjectedSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/location/AppSettingsInjector$SecServiceSettingClickedListener;->this$0:Lcom/android/settings/location/AppSettingsInjector;

    iput-object p2, p0, Lcom/android/settings/location/AppSettingsInjector$SecServiceSettingClickedListener;->mInfo:Lcom/android/settingslib/location/InjectedSetting;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/android/settings/location/AppSettingsInjector$SecServiceSettingClickedListener;->mInfo:Lcom/android/settingslib/location/InjectedSetting;

    iget-object v1, v0, Lcom/android/settingslib/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settingslib/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/location/AppSettingsInjector$SecServiceSettingClickedListener;->this$0:Lcom/android/settings/location/AppSettingsInjector;

    iget-object v1, p0, Lcom/android/settings/location/AppSettingsInjector;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget v2, p0, Lcom/android/settings/location/AppSettingsInjector;->mMetricsCategory:I

    invoke-virtual {v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntent(ILandroid/content/Intent;)Z

    iget-object p0, p0, Lcom/android/settings/location/AppSettingsInjector;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/settingslib/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method

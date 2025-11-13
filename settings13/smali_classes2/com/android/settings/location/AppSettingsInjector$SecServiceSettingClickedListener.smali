.class public Lcom/android/settings/location/AppSettingsInjector$SecServiceSettingClickedListener;
.super Lcom/android/settingslib/location/SettingsInjector$ServiceSettingClickedListener;
.source "AppSettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/AppSettingsInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SecServiceSettingClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/AppSettingsInjector;


# direct methods
.method public constructor <init>(Lcom/android/settings/location/AppSettingsInjector;Lcom/android/settingslib/location/InjectedSetting;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/location/AppSettingsInjector$SecServiceSettingClickedListener;->this$0:Lcom/android/settings/location/AppSettingsInjector;

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/location/SettingsInjector$ServiceSettingClickedListener;-><init>(Lcom/android/settingslib/location/SettingsInjector;Lcom/android/settingslib/location/InjectedSetting;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 102
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/location/SettingsInjector$ServiceSettingClickedListener;->mInfo:Lcom/android/settingslib/location/InjectedSetting;

    iget-object v1, v0, Lcom/android/settingslib/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/settingslib/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/android/settings/location/AppSettingsInjector$SecServiceSettingClickedListener;->this$0:Lcom/android/settings/location/AppSettingsInjector;

    invoke-virtual {v0, p1}, Lcom/android/settings/location/AppSettingsInjector;->logPreferenceClick(Landroid/content/Intent;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/location/AppSettingsInjector$SecServiceSettingClickedListener;->this$0:Lcom/android/settings/location/AppSettingsInjector;

    invoke-static {v0}, Lcom/android/settings/location/AppSettingsInjector;->access$000(Lcom/android/settings/location/AppSettingsInjector;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/location/SettingsInjector$ServiceSettingClickedListener;->mInfo:Lcom/android/settingslib/location/InjectedSetting;

    iget-object p0, p0, Lcom/android/settingslib/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method

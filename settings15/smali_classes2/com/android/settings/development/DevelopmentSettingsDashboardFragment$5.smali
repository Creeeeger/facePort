.class public final Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    iget-object p2, p2, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p2, p2, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eq p1, p2, :cond_3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of p2, p1, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    invoke-virtual {p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsEnabled()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->disableDeveloperOptions()V

    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

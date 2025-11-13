.class public final Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mVolumeKeyControlCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->isShowInSetCategory(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mMuteAllSoundController:Lcom/samsung/android/settings/asbase/audio/SecMuteAllSoundController;

    invoke-virtual {p1}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mMuteAllSoundController:Lcom/samsung/android/settings/asbase/audio/SecMuteAllSoundController;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mMuteAllSoundController:Lcom/samsung/android/settings/asbase/audio/SecMuteAllSoundController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/asbase/audio/SecMuteAllSoundController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/asbase/audio/SecMuteAllSoundController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mDNDLinkableController:Lcom/samsung/android/settings/asbase/audio/SecDNDLinkableController;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mDNDLinkableController:Lcom/samsung/android/settings/asbase/audio/SecDNDLinkableController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/asbase/audio/SecDNDLinkableController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/asbase/audio/SecDNDLinkableController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mSecAuracastLinkableController:Lcom/samsung/android/settings/asbase/audio/SecAuracastLinkableController;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mSecAuracastLinkableController:Lcom/samsung/android/settings/asbase/audio/SecAuracastLinkableController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/asbase/audio/SecAuracastLinkableController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/asbase/audio/SecAuracastLinkableController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mSecGlobalAlarmLinkableController:Lcom/samsung/android/settings/asbase/audio/SecGlobalAlarmLinkableController;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mSecGlobalAlarmLinkableController:Lcom/samsung/android/settings/asbase/audio/SecGlobalAlarmLinkableController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecGlobalAlarmLinkableController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/asbase/audio/SecGlobalAlarmLinkableController;->updateState(Landroidx/preference/Preference;)V

    :cond_2
    return-void
.end method

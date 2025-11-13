.class public Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$OnAudioSharingStateChangedListener;


# instance fields
.field public mAudioSharingCallAudioPreferenceController:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;

.field public mAudioSharingDeviceVolumeGroupController:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;

.field public mAudioSharingPlaySoundPreferenceController:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPlaySoundPreferenceController;

.field public mAudioStreamsCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsCategoryController;

.field public mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AudioSharingDashboardFrag"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x800

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170063

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object v0, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const v1, 0x7f1404af

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SettingsMainSwitchBar;Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$OnAudioSharingStateChangedListener;)V

    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->init(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->mAudioSharingDeviceVolumeGroupController:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    const-class p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->mAudioSharingCallAudioPreferenceController:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->init(Landroidx/fragment/app/Fragment;)V

    const-class p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPlaySoundPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPlaySoundPreferenceController;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->mAudioSharingPlaySoundPreferenceController:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPlaySoundPreferenceController;

    const-class p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsCategoryController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsCategoryController;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->mAudioStreamsCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsCategoryController;

    return-void
.end method

.method public final onAudioSharingStateChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->mAudioSharingDeviceVolumeGroupController:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->updateVisibility()V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->mAudioSharingCallAudioPreferenceController:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->updateVisibility()V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->mAudioSharingPlaySoundPreferenceController:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPlaySoundPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->updateVisibility()V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->mAudioStreamsCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsCategoryController;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsCategoryController;->updateVisibility()V

    return-void
.end method

.method public setControllers(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPlaySoundPreferenceController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsCategoryController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->mAudioSharingDeviceVolumeGroupController:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->mAudioSharingCallAudioPreferenceController:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->mAudioSharingPlaySoundPreferenceController:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPlaySoundPreferenceController;

    iput-object p4, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->mAudioStreamsCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsCategoryController;

    return-void
.end method

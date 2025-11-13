.class Lcom/samsung/android/settings/as/audio/SecVolumeSettings$1;
.super Landroid/database/ContentObserver;
.source "SecVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;Landroid/os/Handler;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmVolumeKeyControlCategory(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmVolumeKeyControlCategory(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$misZenModeEnabled(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/as/utils/SoundUtils;->isMuteAllSoundEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 72
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmDNDStatusController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecDNDStatusPreferenceController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 73
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmDNDStatusController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecDNDStatusPreferenceController;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmDNDStatusController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecDNDStatusPreferenceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecDNDStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/as/audio/SecDNDStatusPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_2
    return-void
.end method

.class public Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamDetailsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final TAG:Ljava/lang/String; = "AudioStreamDetailsFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AudioStreamDetailsFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x82c

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170064

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-class v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;

    const-string v1, "broadcast_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "broadcast_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->init(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamDetailsFragment;Ljava/lang/String;I)V

    const-class v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->init(I)V

    :cond_0
    return-void
.end method

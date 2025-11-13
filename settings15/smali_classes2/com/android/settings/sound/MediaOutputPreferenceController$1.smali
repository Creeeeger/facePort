.class public final Lcom/android/settings/sound/MediaOutputPreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothLeBroadcast$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/sound/MediaOutputPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/sound/MediaOutputPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/sound/MediaOutputPreferenceController$1;->this$0:Lcom/android/settings/sound/MediaOutputPreferenceController;

    return-void
.end method


# virtual methods
.method public final onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 0

    return-void
.end method

.method public final onBroadcastStartFailed(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController$1;->this$0:Lcom/android/settings/sound/MediaOutputPreferenceController;

    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/sound/MediaOutputPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final onBroadcastStarted(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController$1;->this$0:Lcom/android/settings/sound/MediaOutputPreferenceController;

    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/sound/MediaOutputPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final onBroadcastStopFailed(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController$1;->this$0:Lcom/android/settings/sound/MediaOutputPreferenceController;

    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/sound/MediaOutputPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final onBroadcastStopped(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController$1;->this$0:Lcom/android/settings/sound/MediaOutputPreferenceController;

    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/sound/MediaOutputPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final onBroadcastUpdateFailed(II)V
    .locals 0

    return-void
.end method

.method public final onBroadcastUpdated(II)V
    .locals 0

    return-void
.end method

.method public final onPlaybackStarted(II)V
    .locals 0

    return-void
.end method

.method public final onPlaybackStopped(II)V
    .locals 0

    return-void
.end method

.class public final synthetic Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    const-string v1, "spatial_audio"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->createSpatialAudioPreference(Landroid/content/Context;)Landroidx/preference/TwoStatePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v2, v1}, Landroid/media/Spatializer;->isAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->refreshSpatialAudioEnabled(Landroidx/preference/TwoStatePreference;)V

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    const-string v1, "head_tracking"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mHasHeadTracker:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v2, v1}, Landroid/media/Spatializer;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

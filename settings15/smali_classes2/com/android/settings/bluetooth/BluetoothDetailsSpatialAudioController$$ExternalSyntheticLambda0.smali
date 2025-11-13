.class public final synthetic Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;

.field public final synthetic f$1:Landroidx/preference/TwoStatePreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;Landroidx/preference/TwoStatePreference;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/TwoStatePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->refreshSpatialAudioEnabled(Landroidx/preference/TwoStatePreference;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/TwoStatePreference;

    iget-object v1, v0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mHasHeadTracker:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v3, v2}, Landroid/media/Spatializer;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p0, v3}, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;Landroidx/preference/TwoStatePreference;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;II)V
    .locals 0

    iput p3, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;

    iput p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;

    iget p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$$ExternalSyntheticLambda0;->f$1:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;

    iget p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->$r8$lambda$YHu6WLpqXNJeSwNYvGaRReBSatw(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

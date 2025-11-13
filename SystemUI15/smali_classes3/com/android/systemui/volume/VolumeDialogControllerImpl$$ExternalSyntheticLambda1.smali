.class public final synthetic Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onShowVolumeLimiterToast()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamNameMusicShare()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsBudsTogetherEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamNameMusicShare()V

    return-void

    :pswitch_2
    check-cast p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVibrating:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

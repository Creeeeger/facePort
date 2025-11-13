.class public final synthetic Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/lifecycle/Observer;

.field public final synthetic f$1:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/Observer;Ljava/lang/Integer;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/Observer;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/Observer;

    check-cast v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object v3, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;->this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    iget-object v4, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->mRingerModeInternal:Lcom/android/systemui/util/RingerModeLiveData;

    invoke-virtual {v4}, Lcom/android/systemui/util/RingerModeLiveData;->getInitialSticky()Z

    move-result v4

    iget-object v3, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput p0, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    :cond_0
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onChange internal_ringer_mode rm="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/systemui/volume/Util;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateRingerModeInternalW(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v3, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-$$Nest$mupdateStreamVolume(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    invoke-static {v3, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-$$Nest$mupdateStreamVolume(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    invoke-static {v3, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-$$Nest$mupdateStreamVolume(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    iget-object p0, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v0, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/Observer;

    check-cast v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v3, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1;->this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    iget-object v5, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->mRingerMode:Lcom/android/systemui/util/RingerModeLiveData;

    invoke-virtual {v5}, Lcom/android/systemui/util/RingerModeLiveData;->getInitialSticky()Z

    move-result v5

    iget-object v3, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput v4, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    :cond_3
    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onChange ringer_mode rm="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/systemui/volume/Util;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v6, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    if-ne v4, v6, :cond_5

    goto :goto_0

    :cond_5
    if-ne v4, v0, :cond_6

    iget-boolean v6, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVibrating:Z

    if-nez v6, :cond_6

    iput-boolean v0, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVibrating:Z

    new-instance v6, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v7, 0x320

    iget-object v9, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    invoke-virtual {v9, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    iput v4, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 v4, 0xc

    invoke-static {v4, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getLastAudibleStreamVolume(I)I

    move-result p0

    invoke-virtual {v3, v2, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    invoke-virtual {v3, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getLastAudibleStreamVolume(I)I

    move-result p0

    invoke-virtual {v3, v1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    invoke-virtual {v3, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getLastAudibleStreamVolume(I)I

    move-result p0

    invoke-virtual {v3, v0, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    iget-object p0, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v0, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

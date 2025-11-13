.class public final synthetic Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

.field public final synthetic f$1:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda19;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda19;->f$1:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iput p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda19;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda19;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda19;->f$1:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda19;->f$2:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    iget v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_4

    iget-object v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v1

    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v5, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v5, v2, :cond_3

    if-eqz v1, :cond_0

    iget-object p0, p1, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, v3, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    goto :goto_2

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iget-object p1, p1, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v3, :cond_2

    iget v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    :cond_2
    invoke-interface {p1, p0, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_2

    :cond_3
    iget-object v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1, v2, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v1, :cond_7

    iget-object p1, p1, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, p0, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v2, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-ne v2, v1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    iget-object p1, p1, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v3, :cond_6

    iget v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    :cond_6
    invoke-interface {p1, p0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    :cond_7
    :goto_2
    const-wide/16 p0, 0x0

    iput-wide p0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->userAttempt:J

    return-void
.end method

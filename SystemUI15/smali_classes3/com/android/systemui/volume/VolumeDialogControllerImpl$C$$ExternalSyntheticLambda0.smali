.class public final synthetic Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/Map$Entry;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;ZLjava/lang/Boolean;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map$Entry;

    iput-boolean p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map$Entry;

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda0;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map$Entry;

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda0;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onCaptionEnabledStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

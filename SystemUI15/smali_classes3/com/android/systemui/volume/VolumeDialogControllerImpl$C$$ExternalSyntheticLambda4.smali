.class public final synthetic Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/Map$Entry;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map$Entry;

    iput-boolean p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda4;->f$1:Z

    iput-boolean p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map$Entry;

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda4;->f$1:Z

    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda4;->f$2:Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onKeyEvent(ZZ)V

    return-void
.end method

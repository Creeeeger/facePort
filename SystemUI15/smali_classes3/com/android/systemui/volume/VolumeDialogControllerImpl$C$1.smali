.class public final Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$entry:Ljava/util/Map$Entry;

.field public final synthetic val$keyguardLocked:Z

.field public final synthetic val$lockTaskModeState:I

.field public final synthetic val$reason:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;->val$entry:Ljava/util/Map$Entry;

    iput p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;->val$reason:I

    iput-boolean p4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;->val$keyguardLocked:Z

    iput p5, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;->val$lockTaskModeState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;->val$reason:I

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;->val$keyguardLocked:Z

    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;->val$lockTaskModeState:I

    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onShowRequested(IZI)V

    return-void
.end method

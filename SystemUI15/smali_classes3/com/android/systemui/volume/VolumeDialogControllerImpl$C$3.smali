.class public final Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$copy:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field public final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$3;->val$entry:Ljava/util/Map$Entry;

    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$3;->val$copy:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$3;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$3;->val$copy:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method

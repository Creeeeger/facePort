.class public final Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$recheckCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$recheckCallback$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$recheckCallback$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isTracking:Z

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getVolumeModel()Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$recheckCallback$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->notifyChange()V

    return-void
.end method

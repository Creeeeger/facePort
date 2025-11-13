.class public final Lcom/android/systemui/volume/VolumeStarDependencyImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeStarDependency;


# instance fields
.field public final volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

.field public final volumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->volumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;

    return-void
.end method


# virtual methods
.method public final getDefaultMiddlewares()Ljava/util/List;
    .locals 6

    new-instance v0, Lcom/android/systemui/volume/middleware/JSonLogger;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/middleware/JSonLogger;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    new-instance v1, Lcom/android/systemui/volume/middleware/DeviceStateController;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/middleware/DeviceStateController;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    new-instance v2, Lcom/android/systemui/volume/middleware/AudioManagerController;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    new-instance v3, Lcom/android/systemui/volume/middleware/SmartViewInteractor;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/middleware/SmartViewInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    new-instance v4, Lcom/android/systemui/volume/middleware/BluetoothInteractor;

    invoke-direct {v4, p0}, Lcom/android/systemui/volume/middleware/BluetoothInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    new-instance v5, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultReducer()Lcom/samsung/systemui/splugins/volume/VolumePanelReducerBase;
    .locals 0

    new-instance p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer;

    invoke-direct {p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;-><init>()V

    return-object p0
.end method

.method public final getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    return-object v0
.end method

.method public final getVolumePanel()Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->volumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;

    return-object p0
.end method

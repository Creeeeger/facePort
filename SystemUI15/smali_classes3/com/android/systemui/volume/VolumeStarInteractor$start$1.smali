.class public final Lcom/android/systemui/volume/VolumeStarInteractor$start$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# instance fields
.field public final synthetic $volumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

.field public final synthetic $volumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;

.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeStarInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeStarInteractor;Lcom/android/systemui/volume/VolumeDependencyBase;Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;->this$0:Lcom/android/systemui/volume/VolumeStarInteractor;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;->$volumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    iput-object p3, p0, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;->$volumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 4

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeStar;

    const-string v0, "VolumeStarInteractor"

    const-string v1, "onPluginConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;->this$0:Lcom/android/systemui/volume/VolumeStarInteractor;

    iput-object p1, v0, Lcom/android/systemui/volume/VolumeStarInteractor;->volumeStar:Lcom/samsung/systemui/splugins/volume/VolumeStar;

    iget-object v1, v0, Lcom/android/systemui/volume/VolumeStarInteractor;->context:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/volume/VolumeStarDependencyImpl;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;->$volumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;->$volumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;

    invoke-direct {v2, v3, p0}, Lcom/android/systemui/volume/VolumeStarDependencyImpl;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;)V

    invoke-interface {p1, v1, p2, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStar;->init(Landroid/content/Context;Landroid/content/Context;Lcom/samsung/systemui/splugins/volume/VolumeStarDependency;)V

    iget-object p0, v0, Lcom/android/systemui/volume/VolumeStarInteractor;->volumeStar:Lcom/samsung/systemui/splugins/volume/VolumeStar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStar;->start()V

    return-void
.end method

.method public final onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeStar;

    const-string p1, "VolumeStarInteractor"

    const-string p2, "onPluginDisconnected"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;->this$0:Lcom/android/systemui/volume/VolumeStarInteractor;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarInteractor;->volumeStar:Lcom/samsung/systemui/splugins/volume/VolumeStar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStar;->stop()V

    return-void
.end method

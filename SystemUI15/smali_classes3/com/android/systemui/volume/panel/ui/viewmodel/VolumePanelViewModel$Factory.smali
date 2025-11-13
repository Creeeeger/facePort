.class public final Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public final daggerComponentFactory:Lcom/android/systemui/volume/panel/dagger/factory/VolumePanelComponentFactory;

.field public final volumePanelGlobalStateInteractor:Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/panel/dagger/factory/VolumePanelComponentFactory;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$Factory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$Factory;->daggerComponentFactory:Lcom/android/systemui/volume/panel/dagger/factory/VolumePanelComponentFactory;

    iput-object p3, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$Factory;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p4, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$Factory;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p5, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$Factory;->volumePanelGlobalStateInteractor:Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;

    return-void
.end method

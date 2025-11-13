.class public final Lcom/android/systemui/volume/panel/component/bottombar/ui/viewmodel/BottomBarViewModel$onSettingsClicked$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/panel/component/bottombar/ui/viewmodel/BottomBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/bottombar/ui/viewmodel/BottomBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/bottombar/ui/viewmodel/BottomBarViewModel$onSettingsClicked$1;->this$0:Lcom/android/systemui/volume/panel/component/bottombar/ui/viewmodel/BottomBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityStarted(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/bottombar/ui/viewmodel/BottomBarViewModel$onSettingsClicked$1;->this$0:Lcom/android/systemui/volume/panel/component/bottombar/ui/viewmodel/BottomBarViewModel;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/bottombar/ui/viewmodel/BottomBarViewModel;->volumePanelViewModel:Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;->volumePanelGlobalStateInteractor:Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;->setVisible(Z)V

    return-void
.end method

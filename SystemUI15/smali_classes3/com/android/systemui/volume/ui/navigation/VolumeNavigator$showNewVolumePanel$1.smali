.class public final Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$showNewVolumePanel$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$showNewVolumePanel$1;->this$0:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$showNewVolumePanel$1;->this$0:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;

    iget-object p0, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;->volumePanelGlobalStateInteractor:Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;->setVisible(Z)V

    const/4 p0, 0x0

    return p0
.end method

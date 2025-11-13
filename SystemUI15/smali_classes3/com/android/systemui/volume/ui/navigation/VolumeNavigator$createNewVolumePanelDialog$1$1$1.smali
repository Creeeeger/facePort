.class public final Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$createNewVolumePanelDialog$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$createNewVolumePanelDialog$1$1$1;->this$0:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$createNewVolumePanelDialog$1$1$1;->this$0:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;

    iget-object p1, p1, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_GONE:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$createNewVolumePanelDialog$1$1$1;->this$0:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;

    iget-object p0, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;->volumePanelGlobalStateInteractor:Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;->setVisible(Z)V

    return-void
.end method

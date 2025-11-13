.class public final Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPanelUpdated(Landroid/widget/FrameLayout;Landroid/app/PendingIntent;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isAddedTaskView:Z

    const-string v1, "onPanelUpdated isAddedTaskView= "

    const-string v2, "SecControlsUiControllerImpl"

    invoke-static {v1, v2, v0}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isAddedTaskView:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isAddedTaskView:Z

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->panelView:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;-><init>(Landroid/widget/FrameLayout;Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

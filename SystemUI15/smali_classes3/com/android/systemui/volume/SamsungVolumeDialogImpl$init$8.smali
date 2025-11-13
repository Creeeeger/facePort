.class public final Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$8;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$8;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_FOLDER_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFolded(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

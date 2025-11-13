.class public final Lcom/android/systemui/volume/VolumePanelImpl$dispatch$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

.field public final synthetic this$0:Lcom/android/systemui/volume/VolumePanelImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumePanelImpl;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl$dispatch$1;->this$0:Lcom/android/systemui/volume/VolumePanelImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelImpl$dispatch$1;->$action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl$dispatch$1;->this$0:Lcom/android/systemui/volume/VolumePanelImpl;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanelImpl;->actionObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl$dispatch$1;->$action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-interface {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    return-void
.end method

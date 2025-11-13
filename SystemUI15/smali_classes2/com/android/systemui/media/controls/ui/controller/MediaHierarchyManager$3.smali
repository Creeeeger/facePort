.class public final Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$3;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplicationsChanged()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$3;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->dreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->getComplications()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/complication/Complication;

    instance-of v1, v1, Lcom/android/systemui/media/dream/MediaDreamComplication;

    if-eqz v1, :cond_1

    move v3, v2

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->dreamMediaComplicationActive:Z

    if-eq v0, v3, :cond_3

    iput-boolean v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->dreamMediaComplicationActive:Z

    const/4 v0, 0x2

    invoke-static {p0, v2, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;ZI)V

    :cond_3
    return-void
.end method

.method public final onStateChanged()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$3;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->dreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->isOverlayActive()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->dreamOverlayActive:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->dreamOverlayActive:Z

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;ZI)V

    :cond_0
    return-void
.end method

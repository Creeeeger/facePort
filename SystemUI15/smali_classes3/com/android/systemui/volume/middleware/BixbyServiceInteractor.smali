.class public final Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;


# instance fields
.field public final infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

.field public isBixbyStreamImportant:Z

.field public isPanelShowing:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    check-cast p1, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    iput-object p1, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/16 v1, 0xb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    if-eq v0, v2, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->isBixbyStreamImportant:Z

    if-nez v0, :cond_4

    invoke-interface {v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isKioskModeEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isBixbyServiceOn()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-boolean v2, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->isBixbyStreamImportant:Z

    goto :goto_0

    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->isPanelShowing:Z

    if-nez v0, :cond_4

    iput-boolean v2, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->isPanelShowing:Z

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isKioskModeEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isBixbyServiceForeground()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-boolean v2, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->isBixbyStreamImportant:Z

    goto :goto_1

    :cond_3
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-interface {v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getBixbyServiceState()V

    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    :cond_4
    :goto_2
    return-object p1
.end method

.method public final applyState(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->isPanelShowing:Z

    iput-boolean p1, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->isBixbyStreamImportant:Z

    :cond_0
    return-void
.end method

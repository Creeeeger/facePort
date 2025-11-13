.class public final Lcom/android/systemui/volume/middleware/SmartViewInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;


# instance fields
.field public final infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

.field public final log:Lcom/android/systemui/basic/util/LogWrapper;

.field public panelShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/middleware/SmartViewInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/middleware/SmartViewInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/volume/VolumeDependency;

    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    iput-object v0, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    const-class v0, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/basic/util/LogWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->log:Lcom/android/systemui/basic/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/middleware/SmartViewInteractor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    iget-object v1, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSmartView()Z

    move-result v2

    const-string v3, "isSmartView="

    invoke-static {v3, v2}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->log:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v3, "SmartViewInteractor"

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSmartView()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSupportTvVolumeSync()Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isSupportTvVolumeSync="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getSmartViewDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSupportTvVolumeSync(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/16 p0, 0x14

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    :goto_1
    move-object p1, p0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->panelShowing:Z

    if-nez v0, :cond_4

    iput-boolean v1, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->panelShowing:Z

    :cond_4
    :goto_2
    return-object p1
.end method

.method public final applyState(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/volume/middleware/SmartViewInteractor$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->panelShowing:Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSmartView()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->toggleWifiDisplayMute()V

    :cond_2
    :goto_0
    return-void
.end method

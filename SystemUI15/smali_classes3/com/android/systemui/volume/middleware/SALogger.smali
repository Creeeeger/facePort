.class public final Lcom/android/systemui/volume/middleware/SALogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;


# instance fields
.field public final infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    check-cast p1, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    iput-object p1, p0, Lcom/android/systemui/volume/middleware/SALogger;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/middleware/SALogger$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    if-eq v0, v1, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    const/4 v4, 0x4

    if-eq v0, v4, :cond_8

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SUB_VOLUME_PANEL_FINE_CONTROL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    move-result v0

    if-eq v0, v1, :cond_7

    if-eq v0, v2, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v4, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_BIXBY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_ACCESSIBILITY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_NOTIFICATION:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_MEDIA:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_RINGTONE:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_SYSTEM:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->VOLUME_LIMITER_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->VOLUME_LIMITER_SETTING:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SAFETY_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SAFETY_OK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    :goto_0
    return-object p1
.end method

.method public final applyState(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/middleware/SALogger$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isMediaDefaultEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->MEDIA_DEFAULT_ON:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->MEDIA_DEFAULT_OFF:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->EXPAND:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SHRINK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SUB_VOLUME_PANEL_SHOW:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    :goto_0
    return-void
.end method

.class public final Lcom/android/systemui/volume/VolumePanelImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;
.implements Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;


# instance fields
.field public actionObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

.field public final handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field public final infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

.field public final safetyVolumeCallback:Lcom/android/systemui/volume/VolumePanelImpl$safetyVolumeCallback$1;

.field public final soundAssistant:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

.field public final soundAssistantChecker:Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

.field public final store:Lcom/android/systemui/volume/store/VolumePanelStore;

.field public storeDisposable:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field public subDisplayVolumePanelPresentation:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

.field public subFullLayoutWindow:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

.field public final timeOutCallback:Lcom/android/systemui/volume/VolumePanelImpl$timeOutCallback$1;

.field public final volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

.field public window:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/VolumePanelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumePanelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelImpl;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    check-cast p2, Lcom/android/systemui/volume/VolumeDependency;

    const-class p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    const-class p1, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/HandlerWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    const-class p1, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->soundAssistant:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    const-class p1, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/store/VolumePanelStore;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    const-class v0, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->soundAssistantChecker:Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    const-class v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelImpl;->window:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelImpl;->storeDisposable:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->actionObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    new-instance p1, Lcom/android/systemui/volume/VolumePanelImpl$timeOutCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/VolumePanelImpl$timeOutCallback$1;-><init>(Lcom/android/systemui/volume/VolumePanelImpl;)V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->timeOutCallback:Lcom/android/systemui/volume/VolumePanelImpl$timeOutCallback$1;

    new-instance p1, Lcom/android/systemui/volume/VolumePanelImpl$safetyVolumeCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/VolumePanelImpl$safetyVolumeCallback$1;-><init>(Lcom/android/systemui/volume/VolumePanelImpl;)V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->safetyVolumeCallback:Lcom/android/systemui/volume/VolumePanelImpl$safetyVolumeCallback$1;

    return-void
.end method


# virtual methods
.method public final dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 0

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/systemui/volume/VolumePanelImpl$dispatch$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl$dispatch$1;-><init>(Lcom/android/systemui/volume/VolumePanelImpl;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->actionObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final getVolumePanelCurrentState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    return-object p0
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/VolumePanelImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->timeOutCallback:Lcom/android/systemui/volume/VolumePanelImpl$timeOutCallback$1;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanelImpl;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanelImpl;->safetyVolumeCallback:Lcom/android/systemui/volume/VolumePanelImpl$safetyVolumeCallback$1;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanelImpl;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_MONITOR_PHASE_3:Z

    if-eqz p0, :cond_5

    invoke-interface {v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setSafeMediaVolume()V

    goto/16 :goto_0

    :pswitch_1
    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_MONITOR_PHASE_3:Z

    if-eqz p0, :cond_5

    invoke-virtual {v4, v3}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_2
    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_MONITOR_PHASE_3:Z

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_5

    invoke-virtual {v4, v3}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_3
    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_MONITOR_PHASE_3:Z

    if-eqz p0, :cond_5

    invoke-virtual {v4, v3}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    const-wide/32 p0, 0xea60

    invoke-virtual {v4, v3, p0, p1}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    invoke-interface {v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->userActivity()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isFolded()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    if-eqz p1, :cond_0

    const-class p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    check-cast v0, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDependency;->getNewObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    invoke-virtual {p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->observeStore()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->subFullLayoutWindow:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    goto/16 :goto_0

    :cond_0
    const-class p1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    check-cast v0, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDependency;->getNewObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->subDisplayVolumePanelPresentation:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    goto/16 :goto_0

    :cond_1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->subFullLayoutWindow:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {v1}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    iget-object p1, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    iget-object v1, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {v1}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    iget-object p1, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p1, :cond_2

    move-object p1, v0

    :cond_2
    iget-object p1, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->subFullLayoutWindow:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->subDisplayVolumePanelPresentation:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->dismiss()V

    iget-object p1, p1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->subDisplayVolumePanelPresentation:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    goto :goto_0

    :pswitch_5
    invoke-interface {v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startDoNotDisturbActivity()V

    goto :goto_0

    :pswitch_6
    invoke-interface {v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startLeBroadcastActivity()V

    goto :goto_0

    :pswitch_7
    invoke-interface {v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startHearingEnhancementsActivity()V

    goto :goto_0

    :pswitch_8
    invoke-interface {v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startVolumeSettingsActivity()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->recreateVolumePanelForNewConfig()V

    goto :goto_0

    :pswitch_a
    invoke-interface {v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startSettingsActivity()V

    goto :goto_0

    :pswitch_b
    invoke-virtual {v4, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    invoke-interface {v2, v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->notifyVisible(Z)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getTimeOut()I

    move-result p0

    invoke-virtual {v4, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    int-to-long p0, p0

    invoke-virtual {v4, v1, p0, p1}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    invoke-interface {v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->userActivity()V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getTimeOut()I

    move-result p0

    invoke-virtual {v4, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    int-to-long p0, p0

    invoke-virtual {v4, v1, p0, p1}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    invoke-interface {v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->userActivity()V

    const/4 p0, 0x1

    invoke-interface {v2, p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->notifyVisible(Z)V

    goto :goto_0

    :pswitch_e
    invoke-interface {v2, v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->notifyVisible(Z)V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final recreateVolumePanelForNewConfig()V
    .locals 3

    const-string v0, "VolumePanelImpl"

    const-string/jumbo v1, "recreateVolumePanelForNewConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->window:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {v0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->dispose()V

    const-class v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    check-cast v1, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumeDependency;->getNewObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    invoke-virtual {v0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->observeStore()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->window:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->subFullLayoutWindow:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {v2}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    iget-object v0, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    iget-object v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {v2}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    iget-object v0, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    const-class v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumeDependency;->getNewObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    invoke-virtual {v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->observeStore()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->subFullLayoutWindow:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    :cond_1
    return-void
.end method

.method public final restoreToDefaultStore()V
    .locals 2

    const-string v0, "VolumePanelImpl"

    const-string/jumbo v1, "restoreToDefaultStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->storeDisposable:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->storeDisposable:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->actionObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->window:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    invoke-virtual {v0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->observeStore()V

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->soundAssistantChecker:Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;->updateState(Z)V

    return-void
.end method

.method public final setActionObserver(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setActionObserver : newActionObserver="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", volumeStarVersion=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumePanelImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->window:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    invoke-virtual {v0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->dispose()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->actionObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    return-void
.end method

.method public final setStateObservable(Lcom/samsung/systemui/splugins/volume/VolumeObservable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setStateObservable : newStateObservable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", volumeStarVersion=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumePanelImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->storeDisposable:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->window:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    invoke-virtual {v0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->dispose()V

    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeObservable;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->storeDisposable:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->soundAssistantChecker:Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;->updateState(Z)V

    return-void
.end method

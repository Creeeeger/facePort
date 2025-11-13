.class public final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/ui/ControlActionCoordinator;
.implements Lcom/android/systemui/controls/ui/SecControlActionCoordinator;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final actionsInProgress:Ljava/util/Set;

.field public activityContext:Landroid/content/Context;

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

.field public final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final context:Landroid/content/Context;

.field public final controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

.field public final controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

.field public final desktopManagerWrapper:Lcom/android/systemui/util/DesktopManager;

.field public dialog:Landroid/app/Dialog;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public pendingAction:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

.field public final saLogger:Lcom/android/systemui/controls/util/SALogger;

.field public final taskViewFactory:Ljava/util/Optional;

.field public final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final vibrator:Lcom/android/systemui/statusbar/VibratorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ljava/util/Optional;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/controls/settings/ControlsSettingsRepository;Lcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/controls/ui/util/AUIFacade;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/broadcast/BroadcastSender;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;",
            ">;",
            "Lcom/android/systemui/controls/ControlsMetricsLogger;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/systemui/controls/settings/ControlsSettingsRepository;",
            "Lcom/android/systemui/controls/util/SALogger;",
            "Lcom/android/systemui/util/DesktopManager;",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p7, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->taskViewFactory:Ljava/util/Optional;

    iput-object p8, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    iput-object p9, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->vibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p10, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

    iput-object p11, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    iput-object p12, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->desktopManagerWrapper:Lcom/android/systemui/util/DesktopManager;

    iput-object p13, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->actionsInProgress:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final bouncerOrRun(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->authIsRequired:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

    check-cast v0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->allowActionOnTrivialControlsInLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    invoke-virtual {v0}, Lcom/android/systemui/broadcast/BroadcastSender;->closeSystemDialogs()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->pendingAction:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    :cond_2
    new-instance v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$1;-><init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;)V

    new-instance p1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$2;-><init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, v0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->invoke()V

    :goto_2
    return-void
.end method

.method public final createAction(Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZ)Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0;",
            "ZZ)",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;"
        }
    .end annotation

    new-instance v6, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;-><init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZ)V

    return-object v6
.end method

.method public final isLocked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final toggleActionButton(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "toggleMainAction: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControlsUiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->isLocked()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/controls/ControlsMetricsLogger;->touch(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V

    new-instance v0, Lcom/android/systemui/controls/util/SALogger$Event$TapMainActionButton;

    invoke-direct {v0, p1}, Lcom/android/systemui/controls/util/SALogger$Event$TapMainActionButton;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    invoke-virtual {v1, v0}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    iget-object v0, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/service/controls/Control;->isAuthRequired()Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/service/controls/CustomControl;->getAllowBasicActionWhenLocked()Z

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    if-nez v0, :cond_4

    move v3, v2

    :cond_4
    iget-object v0, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v0, :cond_5

    move-object v1, v0

    :cond_5
    iget-object v0, v1, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    new-instance v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleActionButton$action$1;

    invoke-direct {v1, p1, p2, p3, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleActionButton$action$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;ZLcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->createAction(Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZ)Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->bouncerOrRun(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;)V

    return-void
.end method

.method public final touchActionButton(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Landroid/service/controls/Control;)V
    .locals 11

    const-string/jumbo v0, "touchMainAction: ["

    const-string v1, "]"

    const-string v2, "ControlsUiController"

    invoke-static {v0, p2, v1, v2}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->isLocked()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/controls/ControlsMetricsLogger;->touch(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V

    new-instance v0, Lcom/android/systemui/controls/util/SALogger$Event$TapMainActionButton;

    invoke-direct {v0, p1}, Lcom/android/systemui/controls/util/SALogger$Event$TapMainActionButton;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    invoke-virtual {v1, v0}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    iget-object v0, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/service/controls/Control;->isAuthRequired()Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/service/controls/CustomControl;->getAllowBasicActionWhenLocked()Z

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    if-nez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->usePanel()Z

    move-result v6

    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v4, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    move-object v4, v1

    :goto_5
    iget-object v4, v4, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/controls/CustomControl;->getUseFullScreenDetailDialog()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->desktopManagerWrapper:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v4}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move v4, v2

    goto :goto_6

    :cond_7
    move v4, v3

    :goto_6
    iput-boolean v4, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_9

    if-eqz v6, :cond_8

    if-eqz v4, :cond_8

    goto :goto_7

    :cond_8
    move v2, v3

    :cond_9
    :goto_7
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->usePanel()Z

    move-result v0

    iget-object v3, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v3, :cond_a

    move-object v1, v3

    :cond_a
    iget-object v1, v1, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    new-instance v3, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchActionButton$1;

    move-object v4, v3

    move-object v5, p1

    move-object v7, p0

    move-object v8, p3

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchActionButton$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;ZLcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Landroid/service/controls/Control;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->createAction(Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZ)Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->bouncerOrRun(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;)V

    return-void
.end method

.method public final touchCard(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Landroid/service/controls/Control;)V
    .locals 4

    const-string/jumbo v0, "touchCard: ["

    const-string v1, "]"

    const-string v2, "ControlsUiController"

    invoke-static {v0, p2, v1, v2}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->isLocked()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/android/systemui/controls/ControlsMetricsLogger;->touch(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V

    new-instance p2, Lcom/android/systemui/controls/util/SALogger$Event$TapCardLayout;

    invoke-direct {p2, p1}, Lcom/android/systemui/controls/util/SALogger$Event$TapCardLayout;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    invoke-virtual {v0, p2}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    invoke-virtual {p3}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/controls/CustomControl;->getLayoutType()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    if-eqz p3, :cond_1

    new-instance p2, Lcom/android/systemui/controls/util/SALogger$Event$TapSmallTypeCard;

    invoke-virtual {p3}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/service/controls/Control;->getDeviceType()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v3, p3}, Lcom/android/systemui/controls/util/SALogger$Event$TapSmallTypeCard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    :cond_1
    iget-object p2, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    iget-object p2, p2, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/service/controls/Control;->isAuthRequired()Z

    move-result p2

    goto :goto_2

    :cond_3
    move p2, v2

    :goto_2
    const/4 p3, 0x0

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    move-object p2, v1

    :goto_3
    iget-object p2, p2, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/service/controls/CustomControl;->getAllowBasicActionWhenLocked()Z

    move-result p2

    goto :goto_4

    :cond_5
    move p2, p3

    :goto_4
    if-nez p2, :cond_6

    move p2, v2

    goto :goto_5

    :cond_6
    move p2, p3

    :goto_5
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v3, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v3, :cond_7

    goto :goto_6

    :cond_7
    move-object v3, v1

    :goto_6
    iget-object v3, v3, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/controls/CustomControl;->getUseFullScreenDetailDialog()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->desktopManagerWrapper:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v3}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    move v3, v2

    goto :goto_7

    :cond_9
    move v3, p3

    :goto_7
    iput-boolean v3, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p2, :cond_b

    if-eqz v3, :cond_a

    goto :goto_8

    :cond_a
    move v2, p3

    :cond_b
    :goto_8
    iget-object p2, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz p2, :cond_c

    move-object v1, p2

    :cond_c
    iget-object p2, v1, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    iget-object p2, p2, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    new-instance v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchCard$3;

    invoke-direct {v1, p1, p0, v0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchCard$3;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {p0, p2, v1, p3, v2}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->createAction(Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZ)Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->bouncerOrRun(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;)V

    return-void
.end method

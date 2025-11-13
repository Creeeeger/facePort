.class public final Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1$callback$1;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig;

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServicesUpdated(Ljava/util/List;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1$callback$1;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig;

    iget-object v1, v0, Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig;->component:Lcom/android/systemui/controls/dagger/ControlsComponent;

    iget-object v1, v1, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsController:Ljava/util/Optional;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/controller/ControlsController;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v3, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig;->component:Lcom/android/systemui/controls/dagger/ControlsComponent;

    iget-boolean v4, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->featureEnabled:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v6

    if-ne v1, v6, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v8, v8, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_3

    move v5, v6

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v6

    iget-object v7, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsTileResourceConfiguration:Lcom/android/systemui/controls/controller/ControlsTileResourceConfigurationImpl;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v7, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->featureEnabled:Z

    if-nez v7, :cond_5

    sget-object v6, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->UNAVAILABLE:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    goto :goto_3

    :cond_5
    iget-object v7, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v8, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v8}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v7

    if-ne v7, v6, :cond_6

    sget-object v6, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->AVAILABLE_AFTER_UNLOCK:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    goto :goto_3

    :cond_6
    iget-object v6, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->canShowWhileLockedSetting:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v6, v6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->AVAILABLE_AFTER_UNLOCK:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    goto :goto_3

    :cond_7
    sget-object v6, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->AVAILABLE:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    :goto_3
    if-eqz v4, :cond_9

    if-nez v1, :cond_8

    if-eqz v5, :cond_9

    :cond_8
    if-eqz p1, :cond_9

    sget-object p1, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->AVAILABLE:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    if-ne v6, p1, :cond_9

    new-instance p1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;

    new-instance v1, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v4, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    iget-object v0, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsTileResourceConfiguration:Lcom/android/systemui/controls/controller/ControlsTileResourceConfigurationImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f130e9c

    invoke-direct {v4, v0}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    const v0, 0x7f080726

    invoke-direct {v1, v0, v4}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    const/4 v0, 0x2

    invoke-direct {p1, v1, v2, v0, v2}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;-><init>(Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_9
    sget-object p1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Hidden;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Hidden;

    :goto_4
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    const-string v0, "HomeControlsKeyguardQuickAffordanceConfig"

    invoke-static {v3, p0, p1, v0}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging$default(Lcom/android/systemui/common/coroutine/ChannelExt;Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

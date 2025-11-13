.class public final Lcom/android/systemui/qs/HeaderPrivacyIconsController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final UPDATE_CHIP_VISIBILITY:J

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final attachStateChangeListener:Lcom/android/systemui/qs/HeaderPrivacyIconsController$attachStateChangeListener$1;

.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final cameraSlot:Ljava/lang/String;

.field public chipVisibilityListener:Lcom/android/systemui/shade/ShadeHeaderController$chipVisibilityListener$1;

.field public final delayableUiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final desktopCallback:Lcom/android/systemui/qs/HeaderPrivacyIconsController$desktopCallback$1;

.field public final deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field public listening:Z

.field public locationIndicatorsEnabled:Z

.field public final locationSlot:Ljava/lang/String;

.field public micCameraIndicatorsEnabled:Z

.field public final micSlot:Ljava/lang/String;

.field public final panelEventReceiver:Lcom/android/systemui/qs/HeaderPrivacyIconsController$panelEventReceiver$1;

.field public final picCallback:Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;

.field public final privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

.field public privacyChipLogged:Z

.field public final privacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

.field public final privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field public privacyList:Ljava/util/List;

.field public final privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field public recentLocationPrivacyList:Ljava/util/List;

.field public final safetyCenterManager:Landroid/safetycenter/SafetyCenterManager;

.field public final safetyCenterReceiver:Lcom/android/systemui/qs/HeaderPrivacyIconsController$safetyCenterReceiver$1;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final uiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/privacy/OngoingPrivacyChip;Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/systemui/privacy/PrivacyDialogControllerV2;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/phone/StatusIconContainer;Landroid/permission/PermissionManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/safetycenter/SafetyCenterManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 11

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    move-object v3, p2

    iput-object v3, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object v1, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    move-object v3, p4

    iput-object v3, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    move-object/from16 v3, p7

    iput-object v3, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object v2, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->uiExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v4, p14

    iput-object v4, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->safetyCenterManager:Landroid/safetycenter/SafetyCenterManager;

    move-object/from16 v4, p15

    iput-object v4, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v4, p17

    iput-object v4, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->delayableUiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v4, p18

    iput-object v4, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040ec8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->cameraSlot:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040eda

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micSlot:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040ed8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationSlot:Ljava/lang/String;

    const-wide/16 v4, 0x2710

    iput-wide v4, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->UPDATE_CHIP_VISIBILITY:J

    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v4, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyList:Ljava/util/List;

    iput-object v4, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->recentLocationPrivacyList:Ljava/util/List;

    new-instance v4, Lcom/android/systemui/qs/HeaderPrivacyIconsController$desktopCallback$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$desktopCallback$1;-><init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V

    iput-object v4, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->desktopCallback:Lcom/android/systemui/qs/HeaderPrivacyIconsController$desktopCallback$1;

    new-instance v4, Lcom/android/systemui/qs/HeaderPrivacyIconsController$safetyCenterReceiver$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$safetyCenterReceiver$1;-><init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V

    iput-object v4, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->safetyCenterReceiver:Lcom/android/systemui/qs/HeaderPrivacyIconsController$safetyCenterReceiver$1;

    new-instance v5, Lcom/android/systemui/qs/HeaderPrivacyIconsController$panelEventReceiver$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$panelEventReceiver$1;-><init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V

    iput-object v5, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->panelEventReceiver:Lcom/android/systemui/qs/HeaderPrivacyIconsController$panelEventReceiver$1;

    new-instance v5, Lcom/android/systemui/qs/HeaderPrivacyIconsController$attachStateChangeListener$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$attachStateChangeListener$1;-><init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V

    new-instance v6, Lcom/android/systemui/qs/HeaderPrivacyIconsController$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$1;-><init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V

    invoke-interface {v2, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.safetycenter.action.SAFETY_CENTER_ENABLED_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x38

    move-object/from16 p10, p13

    move-object/from16 p11, v4

    move-object/from16 p12, v6

    move-object/from16 p13, p9

    move-object/from16 p14, v9

    move/from16 p15, v7

    move-object/from16 p16, v8

    move/from16 p17, v10

    invoke-static/range {p10 .. p17}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {p3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p3, v5}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v1, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;-><init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V

    iput-object v1, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->picCallback:Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;

    return-void
.end method


# virtual methods
.method public final declared-synchronized getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRecentLocationPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->recentLocationPrivacyList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setChipVisibility(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micCameraIndicatorsEnabled:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logChipVisible(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChipLogged:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->listening:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChipLogged:Z

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/privacy/PrivacyChipEvent;->ONGOING_INDICATORS_CHIP_VIEW:Lcom/android/systemui/privacy/PrivacyChipEvent;

    invoke-interface {v0, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logChipVisible(Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-eq v2, p1, :cond_4

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v2, p1}, Lcom/android/systemui/util/DesktopManager;->notifyPrivacyItemsChanged(Z)V

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->chipVisibilityListener:Lcom/android/systemui/shade/ShadeHeaderController$chipVisibilityListener$1;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/ShadeHeaderController$chipVisibilityListener$1;->onChipVisibilityRefreshed(Z)V

    :cond_6
    return-void
.end method

.method public final updatePrivacyIconSlots()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micCameraIndicatorsEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationSlot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micSlot:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->cameraSlot:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlot(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlot(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    :goto_2
    iget-boolean p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    if-eqz p0, :cond_3

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlot(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
